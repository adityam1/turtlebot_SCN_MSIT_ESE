#include <string>
#include <scn_library/systemControlRegisterService.h>

#include "scn_library/scn_utils.h"
#include "scn_library/scn_node_handle.h"

ros::SCNNodeHandle::SCNNodeHandle(const std::string& ns, const M_string& remappings) : NodeHandle(ns, remappings) {

    n = ros::scnGetCommNh();
    client = n->serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    inited = true;
};

ros::SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& rhs) : NodeHandle(rhs) {
    
    n = ros::scnGetCommNh();
    client = n->serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    inited = true;
};

ros::SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns) : NodeHandle(parent, ns) {
    
    n = ros::scnGetCommNh();
    client = n->serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    inited = true;
};

ros::SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns, const M_string &remappings) : NodeHandle(parent, ns, remappings) {

    n = ros::scnGetCommNh();
    client = n->serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
        inited = true;
    };

ros::SCNNodeHandle::~SCNNodeHandle() {
    inited = false;
};
