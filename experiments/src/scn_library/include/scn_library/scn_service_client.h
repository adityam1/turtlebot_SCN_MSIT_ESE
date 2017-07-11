#ifndef __SCN_SERVICE_CLIENT_H__
#define __SCN_SERVICE_CLIENT_H__

#include "ros/service_client.h"

namespace ros {
    // forward declaration
    class SCNNodeHandle;

    class ROSCPP_DECL SCNServiceClient : public ServiceClient {
        public:
            SCNServiceClient();
            SCNServiceClient(const ServiceClient &rhs);
            ~SCNServiceClient();

            // wrapper method for service client call with extra parameter - SCNNodeHandle to get the node state
            template<class MReq, class MRes> bool call(SCNNodeHandle &nh,  MReq &req, MReq &res);

            template<class Service> bool call(SCNNodeHandle &nh, Service& service);

            template<typename MReq, typename MRes> bool call(SCNNodeHandle &nh, const MReq& req, MRes& resp, const std::string& service_md5sum);
    };
}
#endif
