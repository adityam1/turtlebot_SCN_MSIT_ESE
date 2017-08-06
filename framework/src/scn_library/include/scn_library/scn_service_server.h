#ifndef __SCN_SERVICE_SERVER_H__
#define __SCN_SERVICE_SERVER_H__

#include "ros/service_server.h"

namespace ros {
    class ROSCPP_DECL SCNServiceServer : public ServiceServer {
        public:
            SCNServiceServer();
            SCNServiceServer(const ServiceServer &rhs);
            ~SCNServiceServer();
    };
}
#endif
