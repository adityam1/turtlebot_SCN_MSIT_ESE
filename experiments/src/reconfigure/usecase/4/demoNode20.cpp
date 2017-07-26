#include <ros/ros.h>
#include <string>
#include <std_msgs/String.h>
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
bool demoNode20ClientCallback(reconfigure::demoNodeService::Request &req,
        reconfigure::demoNodeService::Response &res);
void demoNode20CallBack(const std_msgs::String::ConstPtr& msg);

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
    std::string node_name = "demoNode20";
    //ros::init(argc, argv, node_name);
    ros::scnInit(argc, argv, node_name, 0, saveStateCb, reconModeCb);
    ros::SCNNodeHandle n;

    // service specified for this node in the reconfigure mode
    gCallbackService = node_name + "Service";
    ros::SCNServiceServer service = n.advertiseService(node_name, gCallbackService, demoNode20ClientCallback);

    // subscriber to demoNode18TestPublisher topic
    std::string testSubcriber20 = "demoNode18TestPublisher";
    ros::SCNSubscriber testSub = n.subscribe(node_name, testSubcriber20, 100, demoNode20CallBack);

    ros::spin();


    LEAVE();
    return 0;
}

/**
 * callback function that specifies the behaviors of the node in the reconfigure mode
 */
bool demoNode20ClientCallback(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
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

void demoNode20CallBack(const std_msgs::String::ConstPtr& msg) {
    ENTER();
    ROS_INFO("Message received by demo Node 20: [%s]", msg->data.c_str());
    LEAVE();
}
