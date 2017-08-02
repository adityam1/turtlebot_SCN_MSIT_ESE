#include <ros/ros.h>
#include <string>
#include <signal.h>
#include <ros/xmlrpc_manager.h>

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
// Signal-safe flag for whether shutdown is requested
static sig_atomic_t volatile g_request_shutdown = 0;
std::string gNodeName;

/**
 * declaration
 */
bool demoNode8ClientCallback(reconfigure::demoNodeService::Request &req,
        reconfigure::demoNodeService::Response &res);
bool demoNode8CallBack(reconfigure::demoNodeService::Request &req,
        reconfigure::demoNodeService::Response &res);


void unregisterDependencyToSCN() {
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");

    scn_library::systemControlRegisterService srv;
    srv.request.nodeName = gNodeName;
    srv.request.depName = SCN_UNSPECIFIED;
    srv.request.requestType = UNREGISTER;
    srv.request.dependency = ALL;
    srv.request.direction = SCN_UNSPECIFIED;

    if (client.call(srv)) {
        std::string res;
        if (srv.response.result == srv.response.OK) {
            res = "OK";
        } else {
            res = "ERROR";
        }
        ROS_INFO("result: %s\n", res.c_str());
    } else {
        ROS_ERROR("Failed to call systemControlRegisterService");
    }
}

// Replacement SIGINT handler
void demoNodeSigIntHandler(int sig) {
    ENTER();

    unregisterDependencyToSCN();
    g_request_shutdown = 1;
    LEAVE();
}

// Replacement "shutdown" XMLRPC callback
void shutdownCallback(XmlRpc::XmlRpcValue& params, XmlRpc::XmlRpcValue& result) {
    ENTER();
    
    int num_params = 0;
    if (params.getType() == XmlRpc::XmlRpcValue::TypeArray)
        num_params = params.size();
    if (num_params > 1)
    {
        std::string reason = params[1];
        ROS_WARN("Shutdown request received. Reason: [%s]", reason.c_str());
        unregisterDependencyToSCN();
        g_request_shutdown = 1; // Set flag
    }

    result = ros::xmlrpc::responseInt(1, "", 0);
    LEAVE();
}

void saveStateCb(uint8_t reconType) {
}

STATUS_T reconModeCb(uint8_t reconType, uint8_t command) {
    ROS_INFO("Enter recon mode callback!\n");

    //TODO
    ROS_INFO("Currently, nothing to do in safe mode, will specify later!\n");

    ROS_INFO("Leave recon mode callback!\n");
   
    return SCN_ST_OK;
}
void loadStateCb() {                                                                                                                                                                                                                  
        ROS_INFO("saveStateCb %s", __FILE__);
}
/**
 * APIs
 */
int main(int argc, char ** argv) {
    ENTER();
    gNodeName = "demoNode8";
    // Override SIGINT handler
    ros::scnInit(argc, argv, gNodeName, ros::init_options::NoSigintHandler, saveStateCb, reconModeCb, loadStateCb);
    signal(SIGINT, demoNodeSigIntHandler);
    // Override XMLRPC shutdown
    ros::XMLRPCManager::instance()->unbind("shutdown");
    ros::XMLRPCManager::instance()->bind("shutdown", shutdownCallback);
    ros::SCNNodeHandle n;

    // service provided for demo node 5
    std::string testService8 = "demoNode4TestService";
    ros::SCNServiceServer testService = n.advertiseService(gNodeName, testService8, demoNode8CallBack);

    //ros::spin();
    while (!g_request_shutdown) {
        // Do non-callback stuff

        ros::spinOnce();
        usleep(100000);
    }

    // Do pre-shutdown tasks
    ros::shutdown();

    LEAVE();
    return 0;
}

/**
 * callback function that specifies the behaviors when the test service is called
 */
bool demoNode8CallBack(reconfigure::demoNodeService::Request &req, reconfigure::demoNodeService::Response &res) {
    ENTER();
    std::string service = req.callback_service;

    ROS_INFO("Inside demoNode 8 test service!\n");

    LEAVE();
    return true;
}
