#include <sysexits.h>
#include <pthread.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <scn_library/scn_core.h>
#include <scn_library/presence.h>
#include <scn_library/scnNodeComm.h>
#include <scn_library/scn_utils.h>

static int log_level = LOG_INFO;

namespace ros {

    std::string initString = "";
    static scnNodeInfo_t scnNodeInfo = {initString, NULL, NULL, NULL, NULL, false, false};
    typedef struct vargStruct_S {
        scn_library::scnNodeComm::Request req;
        scn_library::scnNodeComm::Response res;
    } vargStruct_T;

    /* SCN core function definitions */
    static bool launchSCN() {
        FILE *fp_which;
        char rosrun_path[200] = {0};
        pid_t pid;

        if((fp_which = popen("/usr/bin/which rosrun", "r")) != NULL) {
            fgets(rosrun_path, 200, fp_which);
            pclose(fp_which);

            rosrun_path[strlen(rosrun_path) -1] = '\0';

            std::string reconfigure = "reconfigure";
            std::string reconfigure_node = "reconfigure_node";
            if(0 == (pid = fork())) {
                char *argv[4] = {0};
                setpgid(0, 0);
                argv[0] = rosrun_path;
                argv[1] = const_cast<char*>(reconfigure.c_str());
                argv[2] = const_cast<char*>(reconfigure_node.c_str());
                argv[3] = NULL;

                ROS_INFO("Attempting to start SCN");

                int error = 0;
                error = execve(argv[0], argv, environ);
                if(error) {
                    ROS_ERROR("Unable to start node");
                    return SCN_ERROR;
                }
            }
            return SCN_OK;
        }
        else {
            ROS_ERROR("Unable to launch node");
            return SCN_ERROR;
        }
    }

    /*--------------------------------------------------------
     * scnSetNodeState : Will set the state of the node
     * 
     * Parameters 
     * state:   SCN_RECON_MODE/SCN_NORMAL_MODE
     *
     * ------------------------------------------------------*/
    static void scnSetNodeState(bool state) {
        scnNodeInfo.nodeReconState = state;
    }

    /*--------------------------------------------------------
     * scnGetNodeName : Will return the name of the node
     * 
     * Return
     *
     * ------------------------------------------------------*/
    std::string scnGetNodeName() {
        return scnNodeInfo.name;
    }
    
    /*--------------------------------------------------------
     * scnGetNODEState : Will return the current state of the node
     * 
     * Return
     * state:   SCN_RECON_MODE/SCN_NORMAL_MODE
     *
     * ------------------------------------------------------*/
    uint8_t scnGetNodeState() {
        return scnNodeInfo.nodeReconState;
    }

    /*--------------------------------------------------------
     * scnGetCommNh : Will return the nodeHandle used for
     *                communication with the SCN.
     * 
     * Return
     * ros::NodeHandle
     *
     * ------------------------------------------------------*/
    ros::NodeHandle* scnGetCommNh() {
        return scnNodeInfo.scnNodeHandle;
    }

    /*--------------------------------------------------------
     * killServiceCb : Will exit the node. 
     *                 CAUTION:
     *                 This function calls exit() and will
     *                 quit the process. This should only be 
     *                 called when the SCN orders to quit the 
     *                 process
     * Return
     * Does not return
     * ------------------------------------------------------*/
    static STATUS_T killServiceCb(scn_library::scnNodeComm::Request& req,
            scn_library::scnNodeComm::Response& res) {
        ROS_WARN("SCN requested to shut this node down..Shutting down");
        exit(EX_PROTOCOL);
    }

    /*--------------------------------------------------------
     * enterServiceCb : This function is called when the SCN 
     *                  requests this node to enter RECON MODE.
     *                  It calls the saveState function as 
     *                  provided while initializing the node.
     *                  After saving state, we call the user 
     *                  specific Recon mode function.
     *
     *                 CAUTION:
     *                 User must not have heavy processing in
     *                 the enter recon callback. The callback
     *                 is only for the user to set necessary 
     *                 flags (something like top half) since
     *                 it will be called in the scope of the 
     *                 service the SCN is waiting on.
     *
     * Return
     * ------------------------------------------------------*/
    static STATUS_T enterServiceCb(scn_library::scnNodeComm::Request& req,
            scn_library::scnNodeComm::Response& res) {

        STATUS_T status = SCN_ST_OK;
        ROS_INFO("SCN: Entering Reconfiguration Mode");

        /* Save all important state of the node */
        if(NULL != scnNodeInfo.saveStateCb) {
            scnNodeInfo.saveStateCb(req.reconType);
        }

        /* Allow user to perform necessary operations to enter 
         * reconfiguration mode */
        if(NULL != scnNodeInfo.reconModeCb) {
            status = scnNodeInfo.reconModeCb(req.reconType, SCN_ENTER_RECON);
        }

        /* Mark node to be in reconfiguration mode */
        if(SCN_ST_OK == status) {
            scnNodeInfo.nodeReconState = SCN_RECON_MODE;
            return SCN_ST_OK;
        } else {
            return SCN_ST_ERROR;
        }
    }

    /*--------------------------------------------------------
     * exitServiceCb : This function is called when the SCN 
     *                  requests this node to exit RECON MODE.
     *
     *                 CAUTION:
     *                 User must not have heavy processing in
     *                 the enter recon callback. The callback
     *                 is only for the user to set necessary 
     *                 flags (something like top half) since
     *                 it will be called in the scope of the 
     *                 service the SCN is waiting on.
     *
     * Return
     * ------------------------------------------------------*/
    static STATUS_T exitServiceCb(scn_library::scnNodeComm::Request& req,
            scn_library::scnNodeComm::Response& res) {

        STATUS_T status = SCN_ST_OK;
        ROS_INFO("SCN: Exit Reconfiguration Mode");

        /* Allow user to perform necessary operations to exit 
         * reconfiguration mode */
        if(NULL != scnNodeInfo.reconModeCb) {
            status = scnNodeInfo.reconModeCb(req.reconType, SCN_EXIT_RECON);
        }

        /* Mark node to be in reconfiguration mode */
        if(SCN_ST_OK == status) {
            scnNodeInfo.nodeReconState = SCN_NORMAL_MODE;
            return SCN_ST_OK;
        } else {
            return SCN_ST_ERROR;
        }
    }

    /**
     * pthread used to call the 
     */
    void *thread(void *varguments) {
        STATUS_T status = SCN_ST_ERROR;
        vargStruct_T *vargps = (vargStruct_T*)(varguments);

        switch(vargps->req.command) {
            case SCN_ENTER_RECON: 
                status = enterServiceCb(vargps->req, vargps->res);
                break;
            case SCN_EXIT_RECON: 
                status = exitServiceCb(vargps->req, vargps->res);
                break;
            case SCN_KILL: 
                status = killServiceCb(vargps->req, vargps->res);
                break;
            case SCN_NODE_PING: 
                status = SCN_ST_OK;
                break;
            default: 
                ROS_ERROR("SCN: Received invalid message. Will not \
                        process this");
                status = SCN_ST_ERROR;
        }
        return status == SCN_ST_ERROR ? (void*)-1 : (void*)0;
    }

    /*--------------------------------------------------------
     * nodeServiceCb : This function is called when the SCN 
     *                 sends a message to the node.
     *
     * Return
     * ------------------------------------------------------*/
    static bool nodeServiceCb(scn_library::scnNodeComm::Request& req,
            scn_library::scnNodeComm::Response& res) {
        ENTER();

        pthread_t tid;
        struct timespec ts;
        int s;
        void *retvalp;

        ROS_INFO("SCN: Received a message from SCN");

        if(SCN_AUTH != req.auth) {
            ROS_ERROR("SCN: Received invalid message. Will not \
                    process this");
            return SCN_ERROR;
        }

        vargStruct_T args;
        args.req = req;
        args.res = res;
        pthread_create(&tid, NULL, thread, (void *)(&args));

        /* Handle get current time error */
        if (clock_gettime(CLOCK_REALTIME, &ts) == -1) {
            ROS_ERROR("Unable to get the current time!");
            return false;
        }
        ts.tv_sec += SCN_COMM_WAIT_TIME;

        // try to join the pthread specified with tid, if exceeds the time specified, then return error
        s = pthread_timedjoin_np(tid, &retvalp, &ts);
        /* Handle timeout error */
        if (s != 0) {
            ROS_ERROR("Common Service Call time out!");
            return false;
        } else {
            res.status = (intptr_t)retvalp;
            return true;
        }
        LEAVE();
    }

    /*--------------------------------------------------------
     * scnInit : This function is the SCN library wrapper of 
     *           init. It performs initialization of the node
     *           with ROS and store the various callbacks 
     *           which are invoked when a reconfiguration 
     *           activity is triggered.
     *           It also advertises node specific services for
     *           the SCN to communicate with the node.
     * 
     * Parameters:
     * argc:                count of arguments in argv
     * argv:                argument list
     * name:                name of the node
     * options:             init specific options
     * saveStateRoutime:    
     * state:   SCN_RECON_MODE/SCN_NORMAL_MODE
     *
     * ------------------------------------------------------*/
    void scnInit(int & argc, 
            char **argv, 
            const std::string & name, 
            uint32_t options,
            saveStateRoutine saveStateCb,
            reconModeRoutine reconModeCb,
            loadStateRoutine loadStateCb
            ) {

        bool isSCN = false;
        bool loadState = false;
        int opt;

        /* Initialize the node with ROS */
        ros::init(argc, argv, name, options);

        /* Store the callbacks */
        scnNodeInfo.name = name;
        scnNodeInfo.saveStateCb = saveStateCb;
        scnNodeInfo.reconModeCb = reconModeCb;
        scnNodeInfo.loadStateCb = loadStateCb;

        /* Create Nodehandle for SCN */
        scnNodeInfo.scnNodeHandle = new ros::NodeHandle;

        /* Do we need to load state from disk? */
        while((opt = getopt(argc, argv, "si")) != -1)
        {
            ROS_INFO("WhilE");
            switch(opt)
            {
                case 's': 
                    {
                        /* Need to load state from disk */
                        loadState = true;
                    }
                    break; 
                case 'i': isSCN = true;
                      ROS_INFO("Started by SCN");
                      break;
                default:
                    break;
            }
        }
        
        if(!isSCN)
        {
            /* Check if SCN is present */
            ros::ServiceClient client = 
                scnNodeInfo.scnNodeHandle->serviceClient<scn_library::presence>("presence");
            scn_library::presence srv;
            int retry = 0;

            while((!isSCN) && (retry < 3))
            {
                if(!client.call(srv))
                {
                    /* SCN does not exist. Need to spawn SCN */
                    launchSCN();
                }
                else
                {
                    isSCN = true;
                    break;
                }
                retry++;
                sleep(1);
            }
            if(3 == retry)
            {
                ROS_ERROR("SCN not present in the System. \
                        Continuing without SCN");
            }
        }

        std::string nodeServiceName = scnNodeInfo.name + SCN_COMM;
        scnNodeInfo.nodeService = (scnNodeInfo.scnNodeHandle)->advertiseService(nodeServiceName, nodeServiceCb);

        /* Set state of node */
        scnSetNodeState(SCN_NORMAL_MODE);

        /* Do we need to load state from disk? */
        if(loadState)
        {
            /* Need to load state from disk */
            if(NULL != scnNodeInfo.loadStateCb) 
            {
                scnNodeInfo.loadStateCb();
            }
        }

        /* Mark node initialization done */
        scnNodeInfo.initStatus = true;
        ROS_INFO("SCN init complete");
    }
}
