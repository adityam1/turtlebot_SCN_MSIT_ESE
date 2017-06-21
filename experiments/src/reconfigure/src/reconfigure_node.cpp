#include <signal.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <getopt.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <python2.7/Python.h>

#include <reconfigure/systemControlRegisterService.h>
#include <reconfigure/userInterfaceService.h>
#include <reconfigure/demoNodeService.h>

//#include <unordered_map>
#include <iostream>
#include <vector>

#include "log.h"
#include "Dependency.h"

/**
 * global definitions
 */
NodeList nodeList;
typedef std::map<std::string, std::vector<std::string> > my_map;

// key - node name, values - services it provides
std::map<std::string, std::vector<std::string> > NodeServices;
// key - node name, values - topics it publishes
std::map<std::string, std::vector<std::string> > NodeTopics;
// key - service name, values - nodes used the service
std::map<std::string, std::vector<std::string> > ServicesInfo;
// key - topic name, values - nodes subscribed to the topic
std::map<std::string, std::vector<std::string> > TopicsInfo;
extern char **environ;

/**
 * declaration
 */
void systemControlSigintHandler(int sig);
bool systemControlRegisterCallback(reconfigure::systemControlRegisterService::Request &req,
                                   reconfigure::systemControlRegisterService::Response &res);
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req,
                                   reconfigure::userInterfaceService::Response &res);
int launchNode(char* name);
int killNode(char* name);

/**
 * APIs
 */
int main(int argc, char **argv) {
    ros::init(argc, argv, "systemControlNode", ros::init_options::NoSigintHandler);
    //ros::init(argc, argv, "systemControlNode");
    ros::NodeHandle n;

    ros::ServiceServer registerService = n.advertiseService("systemControlRegisterService", systemControlRegisterCallback);

    ros::ServiceServer userInterfaceService = n.advertiseService("userInterfaceService", userInterfaceServiceCallback);

    // override the default ros sigint handler
    signal(SIGINT, systemControlSigintHandler);

    ros::spin();
    return 0;
}

/**
 * Request format
 * string node_name - the name of the node registered
 * string callback_service - the callback_service of the node registered
 * string[] list_dependencies - the list of dependencies for the node registered
 * Response format
 * uint8 result - the result of the service call
 */
bool systemControlRegisterCallback(reconfigure::systemControlRegisterService::Request &req,
                                   reconfigure::systemControlRegisterService::Response &res) {

	//For each node store the list of services it provides
	ROS_INFO("registered node name: %s", req.node_name.c_str());
    NodeServices.insert(std::pair<std::string, std::vector<std::string> >(req.node_name, std::vector<std::string>()));
    ROS_INFO("registered callback_service: %s", req.callback_service.c_str());
    for (int i = 0; i < req.services_provided.size(); i++) {
        ROS_INFO("registered node services provided %d: %s", i, req.services_provided[i].c_str());
        NodeServices[req.node_name].push_back(req.services_provided[i]);
    }

    //For each node store the list of topics it publishes to
    NodeTopics.insert(std::pair<std::string, std::vector<std::string> >(req.node_name, std::vector<std::string>()));
    for (int i = 0; i < req.topics_published.size(); i++) {
        ROS_INFO("registered node topics published %d: %s", i, req.topics_published[i].c_str());
        NodeTopics[req.node_name].push_back(req.topics_published[i]);
    }
    
    //For each service a node uses, store the name of the node in that service's list
    for (int i = 0; i < req.services_used.size(); i++) {
		std::map<std::string, std::vector<std::string> >::iterator element =
				ServicesInfo.find(req.services_used[i]);

	if (element == ServicesInfo.end()) {
		ServicesInfo.insert(std::pair<std::string, std::vector<std::string> >(req.services_used[i], std::vector<std::string>()));
		ServicesInfo[req.services_used[i]].push_back(req.node_name);
	} else
		element->second.push_back(req.node_name);
    }

    //For each topic a node subscribes to, store the name of the node in that topic's list
    for (int i = 0; i < req.topics_subscribed.size(); i++) {
		std::map<std::string, std::vector<std::string> >::iterator element =
				ServicesInfo.find(req.topics_subscribed[i]);

	if ( element == ServicesInfo.end()) {
		ServicesInfo.insert(std::pair<std::string, std::vector<std::string> >(req.topics_subscribed[i], std::vector<std::string>()));
		ServicesInfo[req.topics_subscribed[i]].push_back(req.node_name);
	} else
		element->second.push_back(req.node_name);
    }
    
    res.result = 0;
    return true;
}

/**
 * Request format
 * string old_node - the name of the old node
 * string new_node - the name of the new node
 * Response format
 * uint8 result - the result of the service call
 */
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req, 
                                   reconfigure::userInterfaceService::Response &res) {
    std::string old_node = req.old_node;
    std::string new_node = req.new_node;
    
    ROS_INFO("request old_node: %s", old_node.c_str());
    ROS_INFO("request new_node: %s", new_node.c_str());

    for (my_map::iterator it = NodeServices.begin(); it != NodeServices.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("node name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("service provided by this node: %s\n", value[i].c_str());
        }
    }
    for (my_map::iterator it = ServicesInfo.begin(); it != ServicesInfo.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("service name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("node used this service: %s\n", value[i].c_str());
        }
    }

    // based on the dependencies of the old and new noderithms, invoke service call for corresponding nodes and do the reconfigurations
    if (NodeServices.find(old_node) == NodeServices.end()) {
        ROS_ERROR("Invalid old node specified");
        return false;
    }
   
    // tell all nodes affected by this reconfiguration into safe mode
    std::vector<std::string> &oldNodeServiceList = NodeServices[old_node];
    for (int i = 0; i < oldNodeServiceList.size(); i++) {
        std::string service = oldNodeServiceList[i];
        // if this serivice is not used by any nodes, no need to put the node to safe mode
        if (ServicesInfo.find(service) == ServicesInfo.end()) {
            continue;
        }
        std::vector<std::string> &nodeList = ServicesInfo[service];
        for (int j = 0; j < nodeList.size(); j++) {
            ros::NodeHandle n;
            std::string serviceName = nodeList[j] + "Service";
            ROS_INFO("node name: %s, reconfigure service name: %s\n", nodeList[j].c_str(), serviceName.c_str());
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
        // after put all the dependent nodes into safe mode, also put this node into safe mode
        ros::NodeHandle n;
        std::string serviceName = old_node + "Service";
        ROS_INFO("node name: %s, reconfigure service name: %s\n", old_node.c_str(), serviceName.c_str());
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
    return true;
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
