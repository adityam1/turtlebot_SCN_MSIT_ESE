#include <signal.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <getopt.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <python2.7/Python.h>

#include <scn_library/systemControlRegisterService.h>
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
int launchNode(char* name);
int killNode(char* name);

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
    if(SERVER == direction) {
        /**
         * Attention: for service server the dependency direction is from client to server
         * so it's incomingServices for nodeName
         */
        ROS_INFO("add incoming for node:%s with service:%s", nodeName.c_str(), serviceName.c_str());;
        gDependency->addIncomingServices(nodeName, serviceName);
    } else if(CLIENT == direction) {
        /**
         * Attention: for servce client the dependency direction is from client to server
         * so it's outgoingServices for nodeName
         */
        ROS_INFO("add outgoing for node:%s with service:%s", nodeName.c_str(), serviceName.c_str());;
        gDependency->addOutgoingServices(nodeName, serviceName);
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
    if(PUBLISH == direction) {
        /**
         * Attention: for topic server the dependency direction is from 
         * subscriber to publisher, so it's incomingTopics for nodeName
         */
        ROS_INFO("add incoming for node:%s with topic:%s", nodeName.c_str(), topicName.c_str());;
        gDependency->addIncomingTopics(nodeName, topicName);
    } else if(SUBSCRIBE == direction) {
        /**
         * Attention: for topic server the dependency direction is from 
         * subscriber to publisher, so it's outgoingTopics for nodeName
         */
        ROS_INFO("add outgoing for node:%s with topic:%s", nodeName.c_str(), topicName.c_str());;
        gDependency->addOutgogingTopics(topicName, nodeName);
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
    std::string node_name = req.nodeName;

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
    std::string node_name = req.nodeName;
    std::string topic_name = req.depName;

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
    std::string node_name = req.nodeName;
    std::string topic_name = req.depName;

    LEAVE();
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

    return status;
    LEAVE();
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
    string old_node = req.old_node;
    string new_node = req.new_node;

    ROS_INFO("request old_node: %s", old_node.c_str());
    ROS_INFO("request new_node: %s", new_node.c_str());

    // here we only reconfigure one node, the old node specified
    vector<string> orderedList = gDependency->getReconNodeList(old_node);
    for (int j = 0; j < orderedList.size(); j++) {
        ros::NodeHandle n;
        std::string serviceName = orderedList[j] + "Service";
        ROS_INFO("node name: %s, reconfigure service name: %s\n", orderedList[j].c_str(), serviceName.c_str());
        ros::ServiceClient client = n.serviceClient<reconfigure::demoNodeService>(serviceName);
        reconfigure::demoNodeService srv;
        srv.request.callback_service = serviceName;
        if (client.call(srv)) {
            std::string res = srv.response.result == 0 ? "OK" : "ERROR";
            ROS_INFO("result: %s\n", res.c_str());
        } else {
            ROS_ERROR("Failed to call demoNodeService");
            return -1;
        }
    }
    // TODO add topics reconfigure

    // kill the dependecies of old node and launch the dependency of new node
    launchNode((char *)"python /home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/with_launch_file.py");
    res.result = 0;
    LEAVE();
    return true;
}

int main(int argc, char **argv) 
{
    ENTER();
    ros::init(argc, argv, "systemControlNode", ros::init_options::NoSigintHandler);
    //ros::init(argc, argv, "systemControlNode");
    ros::NodeHandle n;
    gDependency = new Dependency();

    ros::ServiceServer registerService = n.advertiseService("systemControlRegisterService", scnCoreCb);
    ros::ServiceServer userInterfaceService = n.advertiseService("userInterfaceService", userInterfaceServiceCallback);

    // override the default ros sigint handler
    signal(SIGINT, systemControlSigintHandler);

    ros::spin();
    LEAVE();
    return 0;
}

void systemControlSigintHandler(int sig) {
    // TODO
    // do some custom action
    // For example, publish a stop message to some other nodes.

    // default sigint handler: call shutdown()
    ros::shutdown();
}

int launchNode(char *name) {
#if 0
    ROS_INFO("enter %s\n", __func__);
    pid_t pid = fork();
    int error = 0;
    char *argv_node[1] = {0};

    if (pid == 0) {
        //Py_SetProgramName(argv[0]);  /* optional but recommended */
        Py_Initialize();
        PyRun_SimpleString("from time import time,ctime\n"
                "print 'Today is',ctime(time())\n");
        const char *cmd = name.c_str();
        FILE* PythonScriptFile = fopen(cmd, "r");
        if(PythonScriptFile) {
            PyRun_SimpleFile(PythonScriptFile, cmd);
            //fclose(PythonScriptFile);
        }

        Py_Finalize();
    }

    ROS_INFO("leave %s\n", __func__);
    return error;
#endif
    std::cout << "In Launch function " <<std::endl;

    pid_t pid;
    if(0 == (pid = fork())) 
    {   
        /*  Child  */
        setpgid(0,0);           /*  Assigning child its own group ID  */

        /* Redirect I/O */
#if 0
        io_redirect(&stdin_rep, &stdout_rep, &tok);
        dup2(stdin_rep, STDIN_FILENO);
        dup2(stdout_rep, STDOUT_FILENO);
        close_redirect(&stdin_rep, &stdout_rep);
#endif   
        char *argv[3] = {0};
        argv[0] = (char *)"/usr/bin/python";
        argv[1] = (char *)"/home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/with_launch_file.py";
        argv[2] = NULL;

        //std::cout << argv[0] << "\t" << argv[1] <<std::endl;
        /*  Unblock signals and Execute command  */
        int error = execve(argv[0], argv, environ);
        if(error)
        {
            std::cout << "What is the reason: errno = " << errno << std::endl;
        }
    }
}

int killNode(char *name) {
    pid_t pid = fork();
    int32_t error = 0;
    char *argv[4] = {0};
    argv[0] = (char *)"/usr/bin/python";
    argv[1] = (char *)"/home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/kill_node.py";
    argv[2] = name;
    argv[3] = NULL;

    if (pid == 0) {
        error = execve(argv[0], argv, environ);
        if(error)
        {   
            ROS_ERROR("Error in killing node %s!\n", name);
        }   
    }
    return error;
}
