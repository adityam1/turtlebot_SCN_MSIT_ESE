#ifndef __SCN_SERVICE_SERVER_H__
#define __SCN_SERVICE_SERVER_H__

namespace ros {
    class ROSCPP_DECL SCNServiceServer : public ServiceServer {
        public:
            SCNServiceServer() : ServiceServer() {};
            ~SCNServiceServer();
    };
}
#endif
