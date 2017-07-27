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
bool demoNode3ClientCallback(reconfigure::demoNodeService::Request &req, 
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
/**
 * APIs
 */
int main(int argc, char ** argv) {
    ENTER();
    
    gNodeName = "demoNode3";
    // Override SIGINT handler
    ros::scnInit(argc, argv, gNodeName, ros::init_options::NoSigintHandler, saveStateCb, reconModeCb);
    signal(SIGINT, demoNodeSigIntHandler);

    // Override XMLRPC shutdown
    ros::XMLRPCManager::instance()->unbind("shutdown");
    ros::XMLRPCManager::instance()->bind("shutdown", shutdownCallback);
    ros::SCNNodeHandle n;

    // service used by demo node 3
    std::string testService = "demoNode1TestService";
    ros::SCNServiceClient testClient = n.serviceClient<reconfigure::demoNodeService>(gNodeName, testService);

    reconfigure::demoNodeService srv;
    srv.request.callback_service = gNodeName;

    while(ros::ok()) {
        if (g_request_shutdown) break;
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
        ros::Duration(5).sleep();
    }

    LEAVE();
    return 0;
}
