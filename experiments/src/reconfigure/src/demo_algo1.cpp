#include <ros/ros.h>
#include <string>
#include <reconfigure/systemControlRegisterService.h>
#include <reconfigure/demoAlgoService.h>

#include "log.h"

/**
 * global definitions
 */
std::string gCallbackService;

/**
 * declaration
 */
bool demoAlgo1ClientCallback(reconfigure::demoAlgoService::Request &req, 
                             reconfigure::demoAlgoService::Response &res);

/**
 * APIs
 */
int main(int argc, char ** argv) {
    std::string node_name = "demoAlgo1";
    ros::init(argc, argv, node_name);
    ros::NodeHandle n;
    
    // service specified for this node in the reconfigure mode
    gCallbackService = "demoAlgo1Service";
    ros::ServiceServer service = n.advertiseService(gCallbackService, demoAlgo1ClientCallback);

    // client used to register to the systemControlNode
    ros::ServiceClient client = n.serviceClient<reconfigure::systemControlRegisterService>("systemControlRegisterService");
 
    reconfigure::systemControlRegisterService srv;
    srv.request.node_name = node_name;
    srv.request.callback_service = gCallbackService;
    std::vector<std::string> list_dependencies;
    // FIXME change to the actual dependencies
    list_dependencies.push_back("demoNode1");
    list_dependencies.push_back("demoNode2");
    srv.request.list_dependencies = list_dependencies;

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

    return 0;
}

/**
 * callback function that specifies the behaviors of the node in the reconfigure mode
 */
bool demoAlgo1ClientCallback(reconfigure::demoAlgoService::Request &req, reconfigure::demoAlgoService::Response &res) {
    std::string service = req.callback_service;
    if (service.compare(gCallbackService) != 0) {
        ROS_ERROR("Invalid callback service is raised!");
        return false;
    }
    // TODO
    // specify the behavior for this node 

    return true;
}
