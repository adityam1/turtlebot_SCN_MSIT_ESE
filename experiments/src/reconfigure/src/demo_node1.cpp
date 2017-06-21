#include <ros/ros.h>
#include <string>
#include <reconfigure/systemControlRegisterService.h>
#include <reconfigure/demoNodeService.h>

#include "log.h"

/**
 * global definitions
 */
std::string gCallbackService;

/**
 * declaration
 */
bool demoNode1ClientCallback(reconfigure::demoNodeService::Request &req, 
                             reconfigure::demoNodeService::Response &res);
bool demoNode1CallBack(reconfigure::demoNodeService::Request &req, 
                             reconfigure::demoNodeService::Response &res);

/**
 * APIs
 */
int main(int argc, char ** argv) {
    std::string node_name = "demoNode1";
    ros::init(argc, argv, node_name);
    ros::NodeHandle n;
    
    // service specified for this node in the reconfigure mode
    gCallbackService = node_name + "Service";
    ros::ServiceServer service = n.advertiseService(gCallbackService, demoNode1ClientCallback);

    // client used to register to the systemControlNode
    ros::ServiceClient client = n.serviceClient<reconfigure::systemControlRegisterService>("systemControlRegisterService");

    // service provided for demo node 3
    std::string testService1 = "demoNode1TestService";
    ros::ServiceServer testService = n.advertiseService(testService1, demoNode1CallBack);
 
    reconfigure::systemControlRegisterService srv;
    srv.request.node_name = node_name;
    srv.request.callback_service = gCallbackService;

    std::vector<std::string> services_provided;
    //std::vector<std::string> topics_published;
    services_provided.push_back(gCallbackService);
    services_provided.push_back(testService1);
    
    // FIXME change to actual services, topics
    srv.request.services_provided = services_provided;
    //srv.request.topics_published = topics_published;
    //srv.request.services_used = NULL;
    //srv.request.topics_subscribed = NULL;

    if (client.call(srv)) {
        std::string res;
        if (srv.response.result == 0) {
            res = "OK";
        } else {
            res = "ERROR";
        }
        ROS_INFO("result: %s\n", res.c_str());
    } else {
        ROS_ERROR("Failed to call systemControlRegisterService");
        return -1;
    }
    ros::spin();

    return 0;
}

/**
 * callback function that specifies the behaviors of the node in the reconfigure mode
 */
bool demoNode1ClientCallback(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    std::string service = req.callback_service;
    if (service.compare(gCallbackService) != 0) {
        ROS_ERROR("Invalid callback service is raised!");
        return false;
    }
    // TODO
    // specify the behavior for this node
    ROS_INFO("Enter safe mode!\n");
    
    ROS_INFO("Currently, nothing to do in safe mode, will specify later!\n");
    
    ROS_INFO("Leave safe mode!\n");

    return true;
}

/**
 * callback function that specifies the behaviors when the test service is called
 */
bool demoNode1CallBack(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    std::string service = req.callback_service;

    ROS_INFO("Inside demoNode 1 test service!\n");
    return true;
}
