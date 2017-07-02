#include "scn_node_handle.h"
#include <scn_library/systemControlRegisterService.h>

SCNNodeHandle::SCNNodeHandle(const std::string& ns, const M_string& remappings) : NodeHandle(ns, remappings) {
    localSCNState = 0;
    inited = true;
};

SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& rhs) : NodeHandle(rhs) {
    localSCNState = 0;
    inited = true;
};

SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns) : NodeHandle(parent, ns) {
    localSCNState = 0;
    inited = true;
};

SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns, const M_string &remappings) : 
    NodeHandle(parent, ns, remappings) {
    localSCNState = 0;   
    inited = true;
};

SCNNodeHandle::~SCNNodeHandle() {
    inited = false;
};

#if 0
int
SCNNodeHandle::getLocalSCNState() {
    if (inited) {
        ROS_ERROR("Node Handle is not inited!\n");
        return -1;
    }
    return this->localSCNState;
}
#endif

// private method
void
SCNNodeHandle::updateLocalSCNState() {
    // TODO 
    // subscribe the topic published by the SCN and update the local SCN state
    return;
}

bool
SCNNodeHandle::registerDependenciesToSCN(SCNNodeHandle &nh, std::string &node_name, std::string &name, int direction) {
    ros::ServiceClient client = nh.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    scn_library::systemControlRegisterService srv;
    //srv.request.node_name = node_name;
    //srv.request.dep_name = name;
    //srv.request.direction = direction;

    if (client.call(srv)) {
        std::string res;
        if (srv.response.result == 0) {
            res = "OK";
        } else if (srv.response.result ){
            res = "ERROR";
        }
    } else {
        ROS_ERROR("Failed to register dependencie to SCN\n");
    }
    return true;
}
