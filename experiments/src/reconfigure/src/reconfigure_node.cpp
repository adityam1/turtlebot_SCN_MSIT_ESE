#include <signal.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <getopt.h>
#include <reconfigure/systemControlRegisterService.h>
#include <reconfigure/userInterfaceService.h>

//#include <unordered_map>
#include <iostream>
#include <vector>

#include "log.h"
#include "Dependency.h"

/**
 * global definitions
 */
NodeList nodeList;
std::map<std::string, std::vector<std::string> > ServicesInfo;
std::map<std::string, std::vector<std::string> > TopicsInfo;
std::map<std::string, std::vector<std::string> > NodeServices;
std::map<std::string, std::vector<std::string> > NodeTopics;

/**
 * declaration
 */
void systemControlSigintHandler(int sig);
bool systemControlRegisterCallback(reconfigure::systemControlRegisterService::Request &req,
                                   reconfigure::systemControlRegisterService::Response &res);
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req,
                                   reconfigure::userInterfaceService::Response &res);

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
    NodeServices.insert(std::pair<std::string, std::vector<std::string> >(req.node_name.c_str(), std::vector<std::string>()));
    ROS_INFO("registered callback_service: %s", req.callback_service.c_str());
    for (int i = 0; i < req.services_provided.size(); i++) {
        ROS_INFO("registered node services provided %d: %s", i, req.services_provided[i].c_str());
        NodeServices[req.node_name.c_str()].push_back(req.services_provided[i].c_str());
    }

    //For each node store the list of topics it publishes to
    NodeTopics.insert(std::pair<std::string, std::vector<std::string> >(req.node_name.c_str(), std::vector<std::string>()));
    for (int i = 0; i < req.topics_published.size(); i++) {
        ROS_INFO("registered node topics published %d: %s", i, req.topics_published[i].c_str());
        NodeTopics[req.node_name.c_str()].push_back(req.topics_published[i].c_str());
    }

    //For each service a node uses, store the name of the node in that service's list
    for (int i = 0; i < req.services_used.size(); i++) {
		std::map<std::string, std::vector<std::string> >::iterator element =
				ServicesInfo.find(req.services_used[i].c_str());

	if ( element == ServicesInfo.end() )
	{
		ServicesInfo.insert(std::pair<std::string, std::vector<std::string> >(req.services_used[i].c_str(), std::vector<std::string>()));
		ServicesInfo[req.services_used[i].c_str()].push_back(req.node_name.c_str());

	}
	else
		element->second.push_back(req.node_name.c_str());

    }

    //For each topic a node subscribes to, store the name of the node in that topic's list
    for (int i = 0; i < req.topics_subscribed.size(); i++) {
		std::map<std::string, std::vector<std::string> >::iterator element =
				ServicesInfo.find(req.topics_subscribed[i].c_str());

	if ( element == ServicesInfo.end() )
	{
		ServicesInfo.insert(std::pair<std::string, std::vector<std::string> >(req.topics_subscribed[i].c_str(), std::vector<std::string>()));
		ServicesInfo[req.topics_subscribed[i].c_str()].push_back(req.node_name.c_str());
	}
	else
		element->second.push_back(req.node_name.c_str());

    }
    
    res.result = 0;
    return true;
}

/**
 * Request format
 * string old_algo - the name of the old algorithm
 * string new_algo - the name of the new algorithm
 * Response format
 * uint8 result - the result of the service call
 */
bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req, 
                                   reconfigure::userInterfaceService::Response &res) {
    ROS_INFO("request old_algo: %s", req.old_algo.c_str());
    ROS_INFO("request new_algo: %s", req.new_algo.c_str());
/*
    // TODO
    // based on the dependencies of the old and new algorithms, invoke service call for corresponding nodes and do the reconfigurations
    if (!req.old_algo.empty() && tree->isValidDependencyNode(req.old_algo) == false) {
        ROS_ERROR("invalid old algo: %s", req.old_algo.c_str());
        res.result = -1;
        return false;
    }
    if (!req.new_algo.empty() && tree->isValidDependencyNode(req.new_algo) == false) {
        ROS_ERROR("invalid new algo :%s", req.new_algo.c_str());
        res.result = -1;
        return false;
    }

    // kill the dependecies of old algo and launch the dependency of new algo
    res.result = 0;*/
    return true;
}

void systemControlSigintHandler(int sig) {
    // TODO
    // do some custom actions
    // For example, publish a stop message to some other nodes.
    
    // default sigint handler: call shutdown()
    ros::shutdown();
}
