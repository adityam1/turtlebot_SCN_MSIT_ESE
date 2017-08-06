#include <signal.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <getopt.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>

#include <scn_library/systemControlRegisterService.h>
#include <scn_library/scnNodeComm.h>
#include <scn_library/presence.h>
#include <scn_library/scn_utils.h>
#include <scn_library/scn_core.h>
#include <scn_library/debug_msg.h>
#include <reconfigure/userInterfaceService.h>
#include <reconfigure/demoNodeService.h>
#include <reconfigure/frameworkInfoService.h>
#include "reconfigure/Dependency.h"
#include <iostream>
#include <vector>

using namespace std;

static int log_level = LOG_DBG;
/**
 * global definitions
 */
extern char **environ;
// global dependency used by reconfigure node
Dependency *gDependency;

static bool launchFailed = false;
static int pidToCheck = 0;

std::string initString = "reconfigure";
static ros::scnNodeInfo_t scnNodeInfo = {initString, NULL, NULL, NULL, NULL, false, false};
static ros::Publisher debug_pub;

/**
 * declaration
 */
static void systemControlSigintHandler(int sig);
static void sigHandler(int signum, siginfo_t *sigInfo, ucontext_t *sigContext);

static bool launchNode(char* packageName, char *nodeName, bool preserveState);
static void killNode(char* name);

bool scnCoreCb(scn_library::systemControlRegisterService::Request &req,
        scn_library::systemControlRegisterService::Response &res); 
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req,
        reconfigure::userInterfaceService::Response &res);
bool frameworkInfoServiceCallback(reconfigure::frameworkInfoService::Request &req,
        reconfigure::frameworkInfoService::Response &res);


/*------------------------------------------------------------------
 * #FIXME
 * Write for actions
 *-----------------------------------------------------------------*/


/*------------------------------------------------------------------
 * registerService
 * Registers the service with the SCN i.e. records the dependency 
 * for a service for the respective node.
 *
 * It is expected that a service client can only be registered after
 * the server has registered the service.
 *-----------------------------------------------------------------*/
bool registerService(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    uint8_t direction = req.direction;
    std::string nodeName = req.nodeName;
    std::string serviceName = req.depName;
    char info[200];
    scn_library::debug_msg debug;

    /* Check direction of service being registered */
    switch (direction) 
    {
        case SERVER:
            /**
             * Attention: for service server the dependency direction is from client to server
             * so it's incomingServices for nodeName
             */
            sprintf(info, "Adding incoming service for node: %s with service: %s", nodeName.c_str(), serviceName.c_str());
            ROS_INFO("%s", info); 
            debug.info = info;
            debug_pub.publish(debug);
            gDependency->addIncomingServices(nodeName, serviceName);
            break;
        case CLIENT:
            /**
             * Attention: for servce client the dependency direction is from client to server
             * so it's outgoingServices for nodeName
             */
            sprintf(info, "Adding outgoing service for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
            ROS_INFO("%s", info); 
            debug.info = info;
            debug_pub.publish(debug);
            gDependency->addOutgoingServices(nodeName, serviceName);
            break;
        default:
            ROS_ERROR("Invalid direction specified!");
            return false;
    }
    LEAVE();
    return true;
}

/*------------------------------------------------------------------
 * registerTopic
 * Registers the topic with the SCN i.e. records the dependency 
 * for a topic for the respective node.
 *
 *-----------------------------------------------------------------*/
bool registerTopic(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    uint8_t direction = req.direction;
    std::string nodeName = req.nodeName;
    std::string topicName = req.depName;
    char info[200];
    scn_library::debug_msg debug;

    /* Check direction of service being registered */
    switch (direction) 
    {
        case PUBLISH:
            /**
             * Attention: for topic server the dependency direction is from 
             * subscriber to publisher, so it's incomingTopics for nodeName
             */
            sprintf(info, "add incoming topic for node:%s with topic:%s", 
                    nodeName.c_str(), topicName.c_str());
            ROS_INFO("%s", info); 
            debug.info = info;
            debug_pub.publish(debug);
            gDependency->addIncomingTopics(nodeName, topicName);
            break;
        case SUBSCRIBE:
            /**
             * Attention: for topic server the dependency direction is from 
             * subscriber to publisher, so it's outgoingTopics for nodeName
             */
            sprintf(info, "add outgoing topic for node:%s with topic:%s", 
                    nodeName.c_str(), topicName.c_str());
            ROS_INFO("%s", info); 
            debug.info = info;
            debug_pub.publish(debug);
            gDependency->addOutgoingTopics(nodeName, topicName);
            break;
        default:
            ROS_ERROR("Invalid direction specified!");
            return false;
    }       
    LEAVE();
    return true;
}

/*------------------------------------------------------------------
 * #FIXME
 * Write for actions
 *-----------------------------------------------------------------*/


/*------------------------------------------------------------------
 * unregisterService
 * Registers the service with the SCN i.e. records the dependency 
 * for a service for the respective node.
 *
 * It is expected that a service client can only be registered after
 * the server has registered the service.
 *-----------------------------------------------------------------*/
bool unRegisterService(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    uint8_t direction = req.direction;
    char info[200];
    scn_library::debug_msg debug;
    string nodeName = req.nodeName;

    string serviceName = req.depName;
    switch (direction) 
    {
        case SERVER:
            sprintf(info, "erase incoming for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
            ROS_INFO("%s", info); 
            debug.info = info;
            debug_pub.publish(debug);
            gDependency->eraseIncomingServices(nodeName, serviceName);
            break;
        case CLIENT:
            sprintf(info, "erase outgoing service for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
            ROS_INFO("%s", info); 
            debug.info = info;
            debug_pub.publish(debug);
            gDependency->eraseOutgoingServices(nodeName, serviceName);
            break;
        default:
            ROS_ERROR("Invalid direction specified!");
            return false;
    }

    LEAVE();
    return true;
}

/*------------------------------------------------------------------
 * unRegisterTopic
 * Registers the topic with the SCN i.e. records the dependency 
 * for a topic for the respective node.
 *
 *-----------------------------------------------------------------*/
bool unRegisterTopic(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    uint8_t direction = req.direction;
    std::string nodeName = req.nodeName;
    std::string topicName = req.depName;
    char info[200];
    scn_library::debug_msg debug;

    sprintf(info, "erase incoming topic for node:%s with topic:%s", 
            nodeName.c_str(), topicName.c_str());
    ROS_INFO("%s", info); 
    debug.info = info;
    debug_pub.publish(debug);

    switch(direction) {
        case PUBLISH:
            ROS_INFO("erase incoming topic for node:%s with topic:%s", 
                    nodeName.c_str(), topicName.c_str());
            gDependency->eraseIncomingTopics(nodeName, topicName);
            break;
        case SUBSCRIBE:
            ROS_INFO("erase outgoing topic for node:%s with topic:%s", 
                    nodeName.c_str(), topicName.c_str());
            gDependency->eraseOutgoingServices(nodeName, topicName);
            break;
        default:
            ROS_ERROR("Invalid direction specified!");
            return false;
    } 

    LEAVE();
    return true;
}

/*------------------------------------------------------------------
 * unRegisterAll
 * unRegisters all info of the specified node  with the SCN
 *
 *-----------------------------------------------------------------*/
bool unRegisterNode(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    char info[200];
    scn_library::debug_msg debug;
    string node_name = req.nodeName;

    sprintf(info, "erase all dependency for node:%s", node_name.c_str());
    ROS_INFO("%s", info); 
    debug.info = info;
    debug_pub.publish(debug);
    gDependency->removeNode(node_name);

    LEAVE();
    return true;
}

/*------------------------------------------------------------------
 * presenceCb
 *  Response Format 
 *  result - OK/ERROR
 *
 *-----------------------------------------------------------------*/
bool presenceCb(scn_library::presence::Request &req,
        scn_library::presence::Response &res)
{
    res.result =SCN_OK;
    return true;
}

/*------------------------------------------------------------------
 * scnCoreCb
 * Request Format
 *  node_name - Name of the node for which the dep is being 
 *              registered
 *  dependency  - Type of the dependency (Service/Topic/Action)
 *  direction   - Direction of the dependency (Server/Client, PUB/SUB,
 *                                              Act/provide)
 *
 *  Response Format 
 *  result - OK/ERROR
 *  #FIXME - add more error codes
 *
 *-----------------------------------------------------------------*/
bool scnCoreCb(scn_library::systemControlRegisterService::Request &req,
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    bool status = false;
    uint8_t request = req.requestType;
    /* Check the type of registration */
    uint8_t reg_dep_type = req.dependency;

    if(REGISTER == request)
    {
        switch(reg_dep_type) 
        {
            case SERVICE:
                status = registerService(req, res);
                break;
                //case ACTION:
                //    status = register_action(req, res);
                //    break;
            case TOPIC:
                status = registerTopic(req, res);
                break;
            default: 
                ROS_ERROR("SCN: Unknown dependency type\n");
                status = SCN_ERROR;
                break;
        }
    } 
    else if(UNREGISTER == request) 
    {
        switch(reg_dep_type)
        {
            case SERVICE:
                status = unRegisterService(req, res);
                break;
                //case ACTION:
                //    status = unregister_action(req, res);
                //    break;
            case TOPIC:
                status = unRegisterTopic(req, res);
                break;
            case ALL:
                status = unRegisterNode(req, res);
                break;
            default: 
                ROS_ERROR("SCN: Unknown dependency type\n");
                status = SCN_ERROR;
                break;
        }
    }
    LEAVE();
    return status;
}

STATUS_T exitReconMode(int size, vector<string> &orderedList) 
{
    STATUS_T status = SCN_ST_OK;

    for (int j = size; j >= 0; j--) 
    {
        ros::NodeHandle n;
        std::string serviceName = orderedList[j] + SCN_COMM;

        ROS_INFO("node name: %s, reconfigure service name: %s\n", orderedList[j].c_str(), serviceName.c_str());
        
        ros::ServiceClient client = n.serviceClient<scn_library::scnNodeComm>(serviceName);
        
        scn_library::scnNodeComm srv;
        srv.request.command = SCN_EXIT_RECON;
        srv.request.reconType = SCN_NODE_RECON;
        srv.request.auth = SCN_AUTH;
        
        if (client.call(srv)) 
        {
            if(SCN_ST_OK != srv.response.status) 
            {
                ROS_ERROR("Unable to put %s into Normal Mode", orderedList[j].c_str());
                status = SCN_EXIT_RECON_FAIL;
            }
        } 
        else 
        {
            ROS_ERROR("Unable to put %s into Normal Mode", orderedList[j].c_str());
            status = SCN_EXIT_RECON_FAIL;
        }
    }
    return status;
}


STATUS_T enterReconMode(vector<string> &orderedList)
{
    bool rollback = false;
    int j = 0;
    STATUS_T result = SCN_ST_OK;

    for (j = 0; j < orderedList.size(); j++) 
    {
        ros::NodeHandle n;
        std::string serviceName = orderedList[j] + SCN_COMM;

        ROS_INFO("node name: %s, reconfigure service name: %s\n", orderedList[j].c_str(), serviceName.c_str());
        
        ros::ServiceClient client = n.serviceClient<scn_library::scnNodeComm>(serviceName);
        
        scn_library::scnNodeComm srv;
        srv.request.command = SCN_ENTER_RECON;
        srv.request.reconType = SCN_NODE_RECON;
        srv.request.auth = SCN_AUTH;
        
        if (client.call(srv)) 
        {
            if(SCN_ERROR == srv.response.status) 
            {
                result = SCN_ENTER_RECON_FAIL;
                ROS_ERROR("Unable to put %s in normal mode\n", orderedList[j].c_str());
                rollback = true;
                break;
            }
        } 
        else 
        {
            result = SCN_ENTER_RECON_FAIL;
            ROS_ERROR("Unable to put %s in normal mode\n", orderedList[j].c_str());
            rollback = true;
            break;
        }
    }

    if(rollback) 
    {
        /* Put all nodes into Normal mode */
        if(SCN_ST_OK != exitReconMode((j - 1), orderedList)) 
        {
            /* Need to change the status such that upper layer knows
             * that the failure occured while ROLLING BACK 
             */
            result = SCN_ROLLBACK_FAIL;
        }
        return result;
    }
}

void doParamRecon(reconfigure::userInterfaceService::Request &req,
        reconfigure::userInterfaceService::Response &res)
{
    bool rollback = false;

    std::string param = req.paramName;
    uint8_t paramType = req.paramType;
    
    switch(paramType) 
    {
        case BOOL_VAL:
            {
                bool value = req.boolValue;
                ros::param::set(param, value);
                ROS_INFO("SCN: Setting parameter %s, to %d", param.c_str(), value);
            }
            break;
        case STRING_VAL:
            {
                std::string value = req.stringValue;
                ros::param::set(param, value);
                ROS_INFO("SCN: Setting parameter %s, to %s", param.c_str(), value.c_str());
            }
            break;
        case INT_VAL:
            {
                int32_t value = req.intValue;
                ros::param::set(param, value);
                ROS_INFO("SCN: Setting parameter %s, to %d", param.c_str(), value);
            }
            break;
        case DOUBLE_VAL:
            {
                double value = req.doubleValue;
                ros::param::set(param, value);
                ROS_INFO("SCN: Setting parameter %s, to %f", param.c_str(), value);
            }
            break;
        default: ROS_ERROR("Not handling this data type yet");
                 res.result = SCN_TYPE_NOT_SUPPORTED;
                 return;
    }
    res.result = SCN_ST_OK;
    return;
}

void doNodeRecon(reconfigure::userInterfaceService::Request &req,
        reconfigure::userInterfaceService::Response &res) 
{
    int j = 0, retry = 0;
    STATUS_T result;

    bool preserveState = req.preserveState;
    std::string oldNode = req.oldNode;
    std::string oldNodePackage = req.oldNodePackage;
    std::string newNode = req.newNode;
    std::string newNodePackage = req.newNodePackage;

    ROS_INFO("request oldNode: %s", oldNode.c_str());
    ROS_INFO("request newNode: %s", newNode.c_str());
    ROS_INFO("request newNodePackage: %s", newNodePackage.c_str());
    ROS_INFO("Preserve State: %d", (int)preserveState);

    // here we only reconfigure one node, the old node specified
    vector<string> orderedList = gDependency->getReconNodeList(oldNode);

    if(result = enterReconMode(orderedList))
    {
        // Could not put every node into reconfiguration mode
        res.result = result;
        return;
    }

    // kill the dependecies of old node and launch the dependency of new node
    killNode((char *)oldNode.c_str());

    // for the killed node, explicitly remove dependency from the framework
    gDependency->removeNode(oldNode);

    ros::Duration(1).sleep();
    
    //Start the new node
    while (retry < 3)
    {
        if(SCN_ERROR == launchNode((char *)newNodePackage.c_str(), (char *)newNode.c_str(), preserveState)) 
        {
            /* Failed */
            retry++;
        } 
        else
        {
            break;
        }
    }

    if (3 == retry)
    {
        /* Restart the old node */
        res.result = SCN_LAUNCH_FAIL;
        launchNode((char *)oldNodePackage.c_str(), (char *)oldNode.c_str(), true);
        orderedList.erase(remove(orderedList.begin(), orderedList.end(), oldNode), orderedList.end());
        exitReconMode((orderedList.size()- 1), orderedList);
        return;
    }
    
    /** IMPORTANT! need to explicitly erase killed node from orderedList
     * since we have removed the old node from the dependency and add launched to the dependency
     * so here, we don't need to put the old node to exit recon state
     */
    orderedList.erase(remove(orderedList.begin(), orderedList.end(), oldNode), orderedList.end());

    // exit reconfiguration mode for each node in the reverse order
    res.result = exitReconMode((orderedList.size()- 1), orderedList);
}

/**
 * Request format
 * string oldNode - the name of the old node
 * string newNode - the name of the new node
 * Response format
 * uint8 result - the result of the service call
 */
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req, 
        reconfigure::userInterfaceService::Response &res) 
{
    ENTER();
    uint8_t reconType = req.reconType;

    switch(reconType) 
    {
        case SCN_PARAMETER_RECON:
            doParamRecon(req, res);
            break;
        case SCN_INTER_RECON:
            break;
        case SCN_NODE_RECON:
            doNodeRecon(req, res);
            break;
        default:
            ROS_ERROR("SCN: Reconfiguration Type not supported");
            return false;
    }

    LEAVE();
    return true;
}

bool frameworkInfoServiceCallback(reconfigure::frameworkInfoService::Request &req,
        reconfigure::frameworkInfoService::Response &res) 
{

    ENTER();
    uint8_t request = req.queryType;
    switch (request) 
    {
        case SCN_QUERY_NODE:
            {
                vector<string> nodes = gDependency->getAllNodes();
                INFO_RED("Node within the framework:\n");
                for (int i = 0; i < nodes.size(); i++) {
                    if (i == 0) {
                        INFO("%s", nodes[i].c_str());
                    } else {
                        INFO("\t%s", nodes[i].c_str());
                    }
                }
                INFO("\n");
                break;
            }

        case SCN_QUERY_DEPENDENCY:
            {
                vector<string> nodes = gDependency->getAllNodes();
                INFO_RED("Dependency within the framework:\n");
                for (int i = 0; i < nodes.size(); i++) {
                    INFO("Node: %s\n", nodes[i].c_str());
                    Node *node = gDependency->getNodeWithName(nodes[i]);
                    if (node == NULL) {
                        ROS_ERROR("Invalid node name!");
                        continue;
                    }
                    node->traverseOutgoingServices();
                    node->traverseIncomingServices();
                    node->traverseOutgoingTopics();
                    node->traverseIncomingTopics();
                }
                INFO("\n");
                break;
            }

        default:
            ROS_ERROR("Invalid query parameter specified!");
            return false;
    }

    LEAVE();
    return true;
}

static void systemControlSigintHandler(int sig) 
{
    char info[200];
    scn_library::debug_msg debug;
    sprintf(info, "SCN: Shutting Down System Control Node: SIGINT\n");
    ROS_INFO("%s", info); 
    debug.info = info;
    debug_pub.publish(debug);
    
    ros::shutdown();
}

/*------------------------------------------------------------------
 * sigHandler - to check if launch was successful
 * 
 *-----------------------------------------------------------------*/
static void sigHandler(int signum, siginfo_t *sigInfo, void *sigContext) 
{
    if(sigInfo->si_pid == pidToCheck) {
        launchFailed = true;
    }
}
/*------------------------------------------------------------------
 * launchNode
 * Starts the node specified by packageName and nodeName.
 * 
 *-----------------------------------------------------------------*/
static bool launchNode(char *packageName, char *nodeName, bool preserveState) 
{
    FILE *fp_which;
    int error = 0;
    char rosrun_path[200] = {0};
    char *argv[5] = {0};
    pid_t pid;
    char info[200];
    scn_library::debug_msg debug;

    sprintf(info, "SCN: Launching Node: %s\n", nodeName);
    ROS_INFO("%s", info); 
    debug.info = info;
    debug_pub.publish(debug);

    if((fp_which = popen("/usr/bin/which rosrun", "r")) != NULL) 
    {
        fgets(rosrun_path, 200, fp_which);
        pclose(fp_which);

        rosrun_path[strlen(rosrun_path) -1] = '\0';

        if(0 == (pid = fork())) 
        {
            pid_t parentPid = getppid();
            setpgid(0, 0);
            char stateVariable[2];
            if(preserveState) {
                sprintf(stateVariable, "-s");
                argv[3] = stateVariable;
                argv[4] = NULL;
            } else {
                argv[3] = NULL;
            }
            argv[0] = rosrun_path;
            argv[1] = packageName;
            argv[2] = nodeName;

            ROS_INFO("Attempting to start node %s", nodeName);

            error = execve(argv[0], argv, environ);
            if(error) {
                ROS_ERROR("Unable to start node");
                sprintf(info, "SCN: Unable to start node %s\n", nodeName);
                ROS_INFO("%s", info); 
                debug.info = info;
                debug_pub.publish(debug);
                kill(parentPid, SIGUSR1);
                exit(-1);
                //return SCN_ERROR;
            }
        } 
        else 
        {
            /* Parent Process */
            pidToCheck = pid;
            launchFailed = false;
            ros::Duration(1).sleep();

            if(launchFailed) 
            {
                return SCN_ERROR;
            }
            return SCN_OK;
        }
    }
    else 
    {
        ROS_ERROR("Unable to launch node");
        return SCN_ERROR;
    }
}

/*------------------------------------------------------------------
 * killNode
 * Kills the node specified by name.
 * 
 *-----------------------------------------------------------------*/
static void killNode(char *name) 
{

    /* Request the node to commit suicide */
    ros::NodeHandle n;
    char info[200];
    scn_library::debug_msg debug;
    std::string serviceName = (const char *)name;
    serviceName += "Comm";

    sprintf(info, "SCN: Attempting to kill %s\n", name);
    ROS_INFO("%s", info); 
    debug.info = info;
    debug_pub.publish(debug);

    ros::ServiceClient client = n.serviceClient<scn_library::scnNodeComm>(serviceName);

    scn_library::scnNodeComm srv;

    srv.request.auth = SCN_AUTH;
    srv.request.command= SCN_KILL;

    /* We don't expect a service failure here */
    client.call(srv);
}

int main(int argc, char **argv) 
{
    ENTER();
    struct sigaction launchCheckAction;
    launchCheckAction.sa_flags = SA_SIGINFO;
    launchCheckAction.sa_sigaction = sigHandler;
    sigemptyset (&launchCheckAction.sa_mask);
    launchCheckAction.sa_flags = 0;
    sigaction (SIGUSR1, &launchCheckAction, NULL);

    ros::init(argc, argv, "systemControlNode", ros::init_options::NoSigintHandler);
    //ros::init(argc, argv, "systemControlNode");
    //ros::NodeHandle n;
    scnNodeInfo.scnNodeHandle = new ros::NodeHandle;
    gDependency = new Dependency();

    /* Create the presence service 
     * This is for the other nodes to know that the SCN is present in 
     * the system */
    ros::ServiceServer presence = scnNodeInfo.scnNodeHandle->advertiseService("presence", presenceCb);
    debug_pub = scnNodeInfo.scnNodeHandle->advertise<scn_library::debug_msg>("scnDebug", 1000); 

    ros::ServiceServer registerService = scnNodeInfo.scnNodeHandle->advertiseService("systemControlRegisterService", scnCoreCb);
    ros::ServiceServer userInterfaceService = scnNodeInfo.scnNodeHandle->advertiseService("userInterfaceService", userInterfaceServiceCallback);
    ros::ServiceServer frameworkInfoService = scnNodeInfo.scnNodeHandle->advertiseService("frameworkInfoService", frameworkInfoServiceCallback);

    // override the default ros sigint handler
    signal(SIGINT, systemControlSigintHandler);

    ros::spin();
    LEAVE();
    return 0;
}
