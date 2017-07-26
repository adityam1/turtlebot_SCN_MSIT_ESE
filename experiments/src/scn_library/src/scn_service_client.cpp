#include "scn_library/scn_node_handle.h"
#include "scn_library/scn_service_client.h"

ros::SCNServiceClient::SCNServiceClient() : ServiceClient() {

};

ros::SCNServiceClient::SCNServiceClient(const ServiceClient &rhs) : ServiceClient(rhs) {

};

ros::SCNServiceClient::~SCNServiceClient() {

};
