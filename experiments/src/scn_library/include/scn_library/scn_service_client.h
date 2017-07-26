#ifndef __SCN_SERVICE_CLIENT_H__
#define __SCN_SERVICE_CLIENT_H__

#include "ros/service_client.h"
//#include <scn_library/scn_core.h>

namespace ros {
    // forward declaration
    class SCNNodeHandle;

    class ROSCPP_DECL SCNServiceClient : public ServiceClient {
        public:
            SCNServiceClient();
            SCNServiceClient(const ServiceClient &rhs);
            ~SCNServiceClient();

            // wrapper method for service client call with extra parameter - SCNNodeHandle to get the node state
            template<class MReq, class MRes> bool call(MReq &req, MReq &res) {
                //int state = nh.getLocalSCNState();
                int state = ros::scnGetNodeState();

                if (state) {
                    //FIXME
                    ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
                    return false;
                }
                return ros::ServiceClient::call(req, res);
            }

            template<class Service> bool call(Service& service) {
                //int state = nh.getLocalSCNState();
                int state = ros::scnGetNodeState();

                if (state) {
                    //FIXME
                    ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
                    return false;
                }
                return ros::ServiceClient::call(service);
            }

            template<typename MReq, typename MRes> bool call(const MReq& req, MRes& resp, const std::string& service_md5sum) {
                //int state = nh.getLocalSCNState();
                int state = ros::scnGetNodeState();

                if (state) {
                    //FIXME
                    ROS_ERROR("service client call failed because of invalid local SCN state: %d\n", state);
                    return false;
                }
                return ros::ServiceClient::call(req, resp, service_md5sum);
            }
    };
}
#endif
