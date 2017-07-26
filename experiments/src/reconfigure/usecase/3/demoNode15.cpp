#include <ros/ros.h>
#include <string>

#include <reconfigure/demoNodeService.h>
#include <scn_library/systemControlRegisterService.h>
#include <scn_library/scn_utils.h>
#include <scn_library/scn_core.h>
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
bool demoNode15ClientCallback(reconfigure::demoNodeService::Request &req,
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
    std::string node_name = "demoNode15";
    //ros::init(argc, argv, node_name);
    ros::scnInit(argc, argv, node_name, 0, saveStateCb, reconModeCb);
    ros::SCNNodeHandle n;

    // service specified for this node in the reconfigure mode
    gCallbackService = node_name + "Service";
    // FIXME, currently register the scn callback service of the node using the node name
    // to identify this is a special service
    ros::SCNServiceServer service = n.advertiseService(node_name, gCallbackService, demoNode15ClientCallback);

    // service called of demo node 12
    std::string testServiceClient15 = "demoNode12TestService";
    ros::SCNServiceClient testClient = n.serviceClient<reconfigure::demoNodeService>(node_name, testServiceClient15);

    reconfigure::demoNodeService srv;
    srv.request.callback_service = node_name;

    while(ros::ok())
    {
        if (testClient.call(srv)) {
        	if(srv.response.result == 0)
        	{
        		ROS_INFO("Called demoNode12TestService");
        	}
        	else
        	{
        		ROS_INFO("Called demoNode12TestService error");
        	}

        } else {
            ROS_ERROR("Failed to call demoNode12TestService");
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
bool demoNode15ClientCallback(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    ENTER();
    std::string service = req.callback_service;
    if (service.compare(gCallbackService) != 0) {
        ROS_ERROR("Invalid callback service is raised!");
        return false;
    }
    // TODO
    // specify the behavior for this node
    ROS_INFO("Demo Node 15 Enter safe mode!\n");

    ROS_INFO("Currently, nothing to do in safe mode, will specify later!\n");

    //ROS_INFO("Leave safe mode!\n");

    LEAVE();
    return true;
}
