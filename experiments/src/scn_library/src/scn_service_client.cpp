#include "scn_library/scn_node_handle.h"
#include "scn_library/scn_service_client.h"

ros::SCNServiceClient::SCNServiceClient() : ServiceClient() {

}

ros::SCNServiceClient::SCNServiceClient(const ServiceClient &rhs) : ServiceClient(rhs) {

}

ros::SCNServiceClient::~SCNServiceClient() {

}

// wrapper method for service client call with extra parameter - SCNNodeHandle to get the node state
template<class MReq, class MRes> bool 
ros::SCNServiceClient::call(SCNNodeHandle &nh,  MReq &req, MReq &res) {
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
        return false;
    }
    return ros::ServiceClient::call(req, res);
}

template<class Service> bool 
ros::SCNServiceClient::call(SCNNodeHandle &nh, Service& service) {
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
        return false;
    }
    return ros::ServiceClient::call(service);
}

template<typename MReq, typename MRes> bool 
ros::SCNServiceClient::call(SCNNodeHandle &nh, const MReq& req, MRes& resp, const std::string& service_md5sum) {
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
        return false;
    }
    return ros::ServiceClient::call(req, resp, service_md5sum);
}
