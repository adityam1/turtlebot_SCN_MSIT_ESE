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
bool demoNode10ClientCallback(reconfigure::demoNodeService::Request &req,
        reconfigure::demoNodeService::Response &res);
bool demoNode10CallBack(reconfigure::demoNodeService::Request &req,
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
    std::string node_name = "demoNode10";
//    ros::init(argc, argv, node_name);
    ros::scnInit(argc, argv, node_name, 0, saveStateCb, reconModeCb);
    ros::SCNNodeHandle n;

    // service specified for this node in the reconfigure mode
    gCallbackService = node_name + "Service";
    // FIXME, currently register the scn callback service of the node using the node name
    // to identify this is a special service
    ros::SCNServiceServer service = n.advertiseService(node_name, gCallbackService, demoNode10ClientCallback);

    // service provided for demo node 11, 12
    std::string testService10 = "demoNode10TestService";
    ros::SCNServiceServer testService = n.advertiseService(node_name, testService10, demoNode10CallBack);

    // service called of demo node 9
    std::string testServiceClient10 = "demoNode9TestService";
    ros::SCNServiceClient testClient = n.serviceClient<reconfigure::demoNodeService>(node_name, testServiceClient10);

    reconfigure::demoNodeService srv;
	srv.request.callback_service = node_name;

	while(ros::ok())
	{
	 if (testClient.call(srv)) {
		if(srv.response.result == 0)
		{
			ROS_INFO("Called demoNode9TestService");
		}
		else
		{
			ROS_INFO("Called demoNode9TestService error");
		}

	 } else {
		 ROS_ERROR("Failed to call demoNode9TestService");
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
bool demoNode10ClientCallback(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    ENTER();
    std::string service = req.callback_service;
    if (service.compare(gCallbackService) != 0) {
        ROS_ERROR("Invalid callback service is raised!");
        return false;
    }
    // TODO
    // specify the behavior for this node
    ROS_INFO("Demo Node 10 Enter safe mode!\n");
    ROS_INFO("Currently, nothing to do in safe mode, will specify later!\n");

    //ROS_INFO("Demo Node 5 Leave safe mode!\n");

    LEAVE();
    return true;
}

/**
 * callback function that specifies the behaviors when the test service is called
 */
bool demoNode10CallBack(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    ENTER();
    std::string service = req.callback_service;

    ROS_INFO("Inside demoNode 10 test service!\n");

    LEAVE();
    return true;
}
