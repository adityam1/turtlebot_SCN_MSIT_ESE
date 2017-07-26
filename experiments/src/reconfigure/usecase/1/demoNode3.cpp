#include <ros/ros.h>
#include <string>

#include <reconfigure/demoNodeService.h>
#include <scn_library/systemControlRegisterService.h>
#include <scn_library/scn_utils.h>
#include <scn_library/scn_node_handle.h>
#include <scn_library/scn_service_client.h>
#include <scn_library/scn_service_server.h>
#include <scn_library/scn_publisher.h>
#include <scn_library/scn_subscriber.h>

//static int log_level = LOG_DBG;

/**
 * global definitions
 */
std::string gCallbackService;

/**
 * declaration
 */
bool demoNode3ClientCallback(reconfigure::demoNodeService::Request &req, 
        reconfigure::demoNodeService::Response &res);

void saveStateCb(uint8_t reconType) {
}

STATUS_T reconModeCb(uint8_t reconType, uint8_t command) {
    return SCN_ST_OK;
}
/**
 * APIs
 */
int main(int argc, char ** argv) {
    ENTER();
    std::string node_name = "demoNode3";
    //ros::init(argc, argv, node_name);
    ros::scnInit(argc, argv, node_name, 0, saveStateCb, reconModeCb);
    ros::SCNNodeHandle n;

    // service specified for this node in the reconfigure mode
    gCallbackService = node_name + "Service";
    ros::SCNServiceServer service = n.advertiseService(node_name, gCallbackService, demoNode3ClientCallback);

    // service used by demo node 3
    std::string testService = "demoNode1TestService";
    ros::SCNServiceClient testClient = n.serviceClient<reconfigure::demoNodeService>(node_name, testService);

    reconfigure::demoNodeService srv;
    srv.request.callback_service = node_name;

    while(ros::ok())
    {
        if (testClient.call(srv)) {
            if(srv.response.result == 0)
            {
                ROS_INFO("Called demoNode1TestService");
            }
            else
            {
                ROS_INFO("Called demoNode1TestService error");
            }

        } else {
            ROS_ERROR("Failed to call demoNode1TestService");
        }
        ros::spinOnce();
        ros::Duration(1).sleep();
    }

    LEAVE();
    return 0;
}

/**
 * callback function that specifies the behaviors of the node in the reconfigure mode
 */
bool demoNode3ClientCallback(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    ENTER();
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
    LEAVE();
    return true;
}
