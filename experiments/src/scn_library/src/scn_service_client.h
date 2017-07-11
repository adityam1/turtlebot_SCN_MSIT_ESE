#ifndef __SCN_SERVICE_CLIENT_H__
#define __SCN_SERVICE_CLIENT_H__

#include "ros/service_client.h"
#include "scn_node_handle.h"

using namespace ros;

class SCNNodeHandle;

class ROSCPP_DECL SCNServiceClient : public ServiceClient {
    public:
        SCNServiceClient() : ServiceClient() {};
        ~SCNServiceClient();

        // wrapper method for service client call with extra parameter - SCNNodeHandle to get the node state
        template<class MReq, class MRes> bool call(SCNNodeHandle &nh,  MReq &req, MReq &res) {
            int state = nh.getLocalSCNState();

            if (state) {
                //FIXME
                ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
                return false;
            }
            return ros::ServiceClient::call(req, res);
        }

        template<class Service> bool call(SCNNodeHandle &nh, Service& service) {
            int state = nh.getLocalSCNState();

            if (state) {
                //FIXME
                ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
                return false;
            }
            return ros::ServiceClient::call(service);
        }

        template<typename MReq, typename MRes> bool call(SCNNodeHandle &nh, const MReq& req, MRes& resp, const std::string& service_md5sum) {
            int state = nh.getLocalSCNState();

            if (state) {
                //FIXME
                ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
                return false;
            }
            return ros::ServiceClient::call(req, resp, service_md5sum);
        }
};
#endif
