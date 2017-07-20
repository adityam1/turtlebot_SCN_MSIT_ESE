#include <sysexits.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <scn_library/scn_utils.h>
#include <scn_library/kill.h>
#include <scn_library/enterRecon.h>
#include <scn_library/exitRecon.h>
#include <scn_library/presence.h>
#include <scn_library/scn_core.h>

namespace ros {

    /* SCN core global variables and structs */
    typedef struct {

        std::string &name;                  //Node name
        saveStateRoutine saveStateCb;       //Callback to save state of the node
        reconModeRoutine reconModeCb;       //Callback to be called when entering recon mode
        ros::NodeHandle *scnNodeHandle;     //Node handle to communicate with SCN
        bool nodeReconState;                //State of the node (noremal/recon)
        ros::ServiceServer enterService;
        ros::ServiceServer exitService;
        ros::ServiceServer killService;
    }scnNodeInfo_t;

    std::string temp = "";
    static scnNodeInfo_t scnNodeInfo = {temp, NULL, NULL, NULL, false};

    /* SCN core function definitions */
    static bool launchSCN() {
        FILE *fp_which;
        int error = 0;
        char rosrun_path[200] = {0};
        char *argv[4] = {0};
        pid_t pid;

        if((fp_which = popen("/usr/bin/which rosrun", "r")) != NULL) {
            fgets(rosrun_path, 200, fp_which);
            pclose(fp_which);
            
            rosrun_path[strlen(rosrun_path) -1] = '\0';

            if(0 == (pid = fork())) {
                setpgid(0, 0);
                argv[0] = rosrun_path;
                argv[1] = (const char*)"reconfigure";
                argv[2] = (const char*)"systemControlNode";
                argv[3] = NULL;

                ROS_INFO("Attempting to start SCN");

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
     * scnSetState : Will set the state of the node
     * 
     * Parameters 
     * state:   SCN_RECON_MODE/SCN_NORMAL_MODE
     *
     * ------------------------------------------------------*/
    static void scnSetState(bool state) {
        scnNodeInfo.nodeReconState = state;
    }
    
    /*--------------------------------------------------------
     * scnGetState : Will return the current state of the node
     * 
     * Return
     * state:   SCN_RECON_MODE/SCN_NORMAL_MODE
     *
     * ------------------------------------------------------*/
    uint8_t scnGetState() {
        return scnNodeInfo.nodeReconState;
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
    static bool killServiceCb(scn_library::kill::Request& req,
                            scn_library::kill::Response& res) {
        ROS_INFO("SCN requested to shut this node down..Shutting down");
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
    static bool enterServiceCb(scn_library::enterRecon::Request& req,
                            scn_library::enterRecon::Response& res) {
        ROS_INFO("SCN: Entering Reconfiguration Mode");
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
    static bool exitServiceCb(scn_library::exitRecon::Request& req,
                            scn_library::exitRecon::Response& res) {
        ROS_INFO("SCN: Exit Reconfiguration Mode");
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
            reconModeRoutine reconModeCb
            ) {
        
        bool isSCN = false;
        int retry = 0;

        /* Initialize the node with ROS */
        ros::init(argc, argv, name, options);

        /* Store the callbacks */
        scnNodeInfo.name = name;
        scnNodeInfo.saveStateCb = saveStateCb;
        scnNodeInfo.reconModeCb = reconModeCb;

        /* Create Nodehandle for SCN */
        scnNodeInfo.scnNodeHandle = new ros::NodeHandle;

        /* Check if SCN is present */
        ros::ServiceClient client = scnNodeInfo.scnNodeHandle->serviceClient<scn_library::presence>("presence");
        scn_library::presence srv;
        
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
            ROS_ERROR("SCN not present in the System. Continuing without SCN");
        }

        /* Enter Recon Service */
        std::string enterServiceName = scnNodeInfo.name + "Enter";
        scnNodeInfo.enterService = (scnNodeInfo.scnNodeHandle)->advertiseService(enterServiceName, enterServiceCb);

        /* Exit Recon Service */
        std::string exitServiceName = scnNodeInfo.name + "Exit";
        scnNodeInfo.exitService = scnNodeInfo.scnNodeHandle->advertiseService(exitServiceName, exitServiceCb);
            
        /* Kill Recon Service */
        std::string killServiceName = scnNodeInfo.name + "Kill";
        scnNodeInfo.killService = scnNodeInfo.scnNodeHandle->advertiseService(killServiceName, killServiceCb);
    
        /* Set state of node */
        scnSetState(SCN_NORMAL_MODE);
    }
}
