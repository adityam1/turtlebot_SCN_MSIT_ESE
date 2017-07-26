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
#include <reconfigure/userInterfaceService.h>
#include <reconfigure/demoNodeService.h>
#include <iostream>
#include <vector>

#include <scn_library/scn_utils.h>
#include "reconfigure/Dependency.h"

using namespace std;

static int log_level = LOG_DBG;
/**
 * global definitions
 */
extern char **environ;
// global dependency used by reconfigure node
Dependency *gDependency;

/**
 * declaration
 */
void systemControlSigintHandler(int sig);
static bool launchNode(char* packageName, char *nodeName);
static void killNode(char* name);

bool scnCoreCb(scn_library::systemControlRegisterService::Request &req,
        scn_library::systemControlRegisterService::Response &res); 
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req,
        reconfigure::userInterfaceService::Response &res);


/*------------------------------------------------------------------
 * #FIXME
 * Write for actions
 *-----------------------------------------------------------------*/


/*------------------------------------------------------------------
 * registerService
 * Registers the service with the SCN i.e. records the dependency 
 * for a service for the respective node.
 *
 * #FIXME: Need a check?
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

    /* #FIXME: Callback service is not needed as the name of 
     * the service provided by the respective node (for the SCN to
     * communicate with it) will be the same as the name of the node
     * This use the name of the node for the service call at time of 
     * reconfiguration communication.
     */
    std::string serviceName = req.depName;

    /* Check direction of service being registered */
    switch (direction) {
        case SERVER:
            /**
             * Attention: for service server the dependency direction is from client to server
             * so it's incomingServices for nodeName
             */
            ROS_INFO("add incoming service for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
            gDependency->addIncomingServices(nodeName, serviceName);
            break;
        case CLIENT:
            /**
             * Attention: for servce client the dependency direction is from client to server
             * so it's outgoingServices for nodeName
             */
            ROS_INFO("add outgoing service for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
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

    /* Take locks on the NodeTopics map #FIXME */

    /* Check direction of service being registered */
    switch (direction) {
        case PUBLISH:
            /**
             * Attention: for topic server the dependency direction is from 
             * subscriber to publisher, so it's incomingTopics for nodeName
             */
            ROS_INFO("add incoming topic for node:%s with topic:%s", 
                    nodeName.c_str(), topicName.c_str());
            gDependency->addIncomingTopics(nodeName, topicName);
            break;
        case SUBSCRIBE:
            /**
             * Attention: for topic server the dependency direction is from 
             * subscriber to publisher, so it's outgoingTopics for nodeName
             */
            ROS_INFO("add outgoing topic for node:%s with topic:%s", 
                    nodeName.c_str(), topicName.c_str());
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
 * #FIXME: Need a check?
 * It is expected that a service client can only be registered after
 * the server has registered the service.
 *-----------------------------------------------------------------*/
bool unRegisterService(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    uint8_t direction = req.direction;
    string nodeName = req.nodeName;

    string serviceName = req.depName;
    switch (direction) {
        case SERVER:
            ROS_INFO("erase incoming for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
            gDependency->eraseIncomingServices(nodeName, serviceName);
            break;
        case CLIENT:
            ROS_INFO("erase outgoing service for node: %s with service: %s", 
                    nodeName.c_str(), serviceName.c_str());
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
 * Registers the topic with the SCN i.e. records the dependency 
 * for a topic for the respective node.
 *
 *-----------------------------------------------------------------*/
bool unRegisterAll(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    ENTER();
    uint8_t direction = req.direction;
    string node_name = req.nodeName;
    string topic_name = req.depName;

    gDependency->eraseAllDependency();

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
    } else if(UNREGISTER == request) {
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
                status = unRegisterAll(req, res);
            default: 
                ROS_ERROR("SCN: Unknown dependency type\n");
                status = SCN_ERROR;
                break;
        }
    }
    LEAVE();
    return status;
}

/**
 * Request format
 * string old_node - the name of the old node
 * string new_node - the name of the new node
 * Response format
 * uint8 result - the result of the service call
 */
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req, 
        reconfigure::userInterfaceService::Response &res) 
{
    ENTER();
    std::string old_node = req.old_node;
    std::string new_node = req.new_node;
    std::string new_node_package = req.new_node_package;

    ROS_INFO("request old_node: %s", old_node.c_str());
    ROS_INFO("request new_node: %s", new_node.c_str());
    ROS_INFO("request new_node_package: %s", new_node_package.c_str());

    // here we only reconfigure one node, the old node specified
    vector<string> orderedList = gDependency->getReconNodeList(old_node);
    for (int j = 0; j < orderedList.size(); j++) {
        ros::NodeHandle n;
        std::string serviceName = orderedList[j] + SCN_COMM;
        ROS_INFO("node name: %s, reconfigure service name: %s\n", orderedList[j].c_str(), serviceName.c_str());
        ros::ServiceClient client = n.serviceClient<scn_library::scnNodeComm>(serviceName);
        scn_library::scnNodeComm srv;
        srv.request.command = SCN_ENTER_RECON;
        srv.request.reconType = SCN_NODE_RECON;
        srv.request.auth = SCN_AUTH;
        if (client.call(srv)) {
            std::string res = srv.response.status == 0 ? "OK" : "ERROR";
            ROS_INFO("result: %s\n", res.c_str());
        } else {
            ROS_ERROR("Failed to call demoNodeService");
            return false;
        }
    }

    // kill the dependecies of old node and launch the dependency of new node
    killNode((char *)old_node.c_str());
    launchNode((char *)new_node_package.c_str(), (char *)new_node.c_str());

    //Delay for node to be ready
    ros::Duration(3).sleep();

    // exit reconfiguration mode for each node in the reverse order
    for (int j = ((orderedList.size())- 1); j >= 0; j--) {
        ros::NodeHandle n;
        std::string serviceName = orderedList[j] + SCN_COMM;
        ROS_INFO("node name: %s, reconfigure service name: %s\n", orderedList[j].c_str(), serviceName.c_str());
        ros::ServiceClient client = n.serviceClient<scn_library::scnNodeComm>(serviceName);
        scn_library::scnNodeComm srv;
        srv.request.command = SCN_EXIT_RECON;
        srv.request.reconType = SCN_NODE_RECON;
        srv.request.auth = SCN_AUTH;
        if (client.call(srv)) {
            std::string res = srv.response.status == 0 ? "OK" : "ERROR";
            ROS_INFO("result: %s\n", res.c_str());
        } else {
            ROS_ERROR("Failed to call demoNodeService for node %s", orderedList[j].c_str());
            return false;
        }
    }

    res.result = 0;
    LEAVE();
    return true;
}

void systemControlSigintHandler(int sig) {
    // TODO
    // do some custom action
    // For example, publish a stop message to some other nodes.

    // default sigint handler: call shutdown()
    ros::shutdown();
}

/*------------------------------------------------------------------
 * launchNode
 * Starts the node specified by packageName and nodeName.
 * 
 *-----------------------------------------------------------------*/
static bool launchNode(char *packageName, char *nodeName) {
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
            argv[1] = packageName;
            argv[2] = nodeName;
            argv[3] = NULL;

            ROS_INFO("Attempting to start node %s", nodeName);

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

/*------------------------------------------------------------------
 * killNode
 * Kills the node specified by name.
 * 
 *-----------------------------------------------------------------*/
static void killNode(char *name) {

    /* Request the node to commit suicide */
    ros::NodeHandle n;
    std::string serviceName = (const char *)name;
    serviceName += "Comm";

    ROS_INFO("SCN: Attempting to kill %s\n", name);

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
    ros::init(argc, argv, "systemControlNode", ros::init_options::NoSigintHandler);
    //ros::init(argc, argv, "systemControlNode");
    ros::NodeHandle n;
    gDependency = new Dependency();

    /* Create the presence service 
     * This is for the other nodes to know that the SCN is present in 
     * the system */
    ros::ServiceServer presence = n.advertiseService("presence", presenceCb);

    ros::ServiceServer registerService = n.advertiseService("systemControlRegisterService", scnCoreCb);
    ros::ServiceServer userInterfaceService = n.advertiseService("userInterfaceService", userInterfaceServiceCallback);

    // override the default ros sigint handler
    signal(SIGINT, systemControlSigintHandler);

    ros::spin();
    LEAVE();
    return 0;
}
