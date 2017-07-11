#ifndef __SCN_NODE_HANDLE_H__
#define __SCN_NODE_HANDLE_H__

#include "ros/node_handle.h"
#include <scn_library/systemControlRegisterService.h>
#include "scn_library/scn_utils.h"
#include "scn_library/scn_publisher.h"
#include "scn_library/scn_subscriber.h"
#include "scn_library/scn_service_client.h"
#include "scn_library/scn_service_server.h"

namespace ros {
    class SCNNodeHandle : public NodeHandle {

        private:
        //Register node and service to SCN
        ros::NodeHandle n;
        ros::ServiceClient client;

        /**
         * local SCN state
         * 0 - normal operation
         * 1 - reconfigure mode
         * -1 - intermediate mode
         */
        int localSCNState;
        // init status for the SCNNodeHandle 
        bool inited;
        // update localSCNState through subscribing the SCN topic
        void updateLocalSCNState();
        /**
         * _nodeName - the name of the node
         * _depName - name of the topic, service, or action
         * _requestType - REGISTER or UNREGISTER
         * _dependency - TOPIC or SERVICE or ACTION
         * direction - for service or action: SERVER or CLIENT
         *             for topic: PUBLISH or SUBSCRIBE
         */
        bool registerDependenciesToSCN(const std::string &_nodeName, const std::string &_depName, 
                int _requestType, int _dependency, int _direction) {
        
            scn_library::systemControlRegisterService srv;
            srv.request.nodeName = _nodeName;
            srv.request.depName = _depName;
            srv.request.requestType = _requestType;;
            srv.request.dependency = _dependency;
            srv.request.direction = _direction;

            bool ans;
            if (this->client.call(srv)) {
                std::string res;
                if (srv.response.result == srv.response.OK) {
                    res = "OK";
                    ans = true;
                } else {
                    res = "ERROR";
                    ans = false;
                }
                ROS_INFO("result: %s\n", res.c_str());
            } else {
                ROS_ERROR("Failed to call systemControlRegisterService");
                ans = false;
            }
            return ans;
        }

public:
        // constructor for SCNNodeHandle
        SCNNodeHandle(const std::string& ns = std::string(), const M_string& remappings = M_string());
        SCNNodeHandle(const SCNNodeHandle& rhs);
        SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns);
        SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns, const M_string &remappings);
        ~SCNNodeHandle();

        // for ROS topics
        // wrapper of advertise accept extra parameter - node_name, and return SCNPublisher
        template<class M> SCNPublisher advertise(const std::string &node_name, 
                const std::string &topic_published, 
                uint32_t queue_size, 
                bool latch=false) {

            if (localSCNState) {
                // TODO, specify the behavior of node is in reconfigure or intermediate mode
                ROS_ERROR("advertise failed because of invalid local SCN state: %d\n", localSCNState);
            }
            registerDependenciesToSCN(node_name, topic_published, REGISTER, TOPIC, PUBLISH);
            SCNPublisher scn_publisher(ros::NodeHandle::advertise<M>(topic_published, queue_size, latch));
            return scn_publisher; 
        }

        template<class M> SCNPublisher advertise(const std::string &node_name, 
                const std::string& topic_published, 
                uint32_t queue_size, 
                const SubscriberStatusCallback& connect_cb, 
                const SubscriberStatusCallback& disconnect_cb = SubscriberStatusCallback(), 
                const VoidConstPtr& tracked_object = VoidConstPtr(), 
                bool latch = false) {
            
            if (localSCNState) {
                // TODO, specify the behavior of node is in reconfigure or intermediate mode
                ROS_ERROR("advertise failed because of invalid local SCN state: %d\n", localSCNState);
            }
            registerDependenciesToSCN(node_name, topic_published, REGISTER, TOPIC, PUBLISH);
            SCNPublisher scn_publisher(ros::NodeHandle::advertise<M>(topic_published, queue_size, connect_cb, disconnect_cb, tracked_object, latch));
            return scn_publisher;
        }

        // wrapper of subscribe accept extra parameter - node_name, and return SCNSubscriber
        template<class M> SCNSubscriber subscribe(const std::string &node_name,
                const std::string &topic_subscribe,
                uint32_t queue_size,
                void(*fp)(M), 
                const TransportHints& transport_hints = TransportHints()) {
            
            if (localSCNState) {
                // TODO, specify the behavior of node is in reconfigure or intermediate mode
                ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
            }
            registerDependenciesToSCN(node_name, topic_subscribe, REGISTER, TOPIC, SUBSCRIBE);
            SCNSubscriber scn_subscriber(ros::NodeHandle::subscribe<M>(topic_subscribe, queue_size, fp, transport_hints));
            return scn_subscriber;
        }

        template<class M> SCNSubscriber subscribe(const std::string &node_name,
                const std::string& topic_subscribe, 
                uint32_t queue_size, 
                void(*fp)(const boost::shared_ptr<M const>&), 
                const TransportHints& transport_hints = TransportHints()) {

            if (localSCNState) {
                // TODO, specify the behavior of node is in reconfigure or intermediate mode
                ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
            }
            registerDependenciesToSCN(node_name, topic_subscribe, REGISTER, TOPIC, SUBSCRIBE);
            SCNSubscriber scn_subscriber(ros::NodeHandle::subscribe<M>(topic_subscribe, queue_size, fp, transport_hints));
            return scn_subscriber;
        }

        template<class M> SCNSubscriber subscribe(const std::string &node_name, 
                const std::string& topic_subscribe, 
                uint32_t queue_size, 
                const boost::function<void (const boost::shared_ptr<M const>&)>& callback, 
                const VoidConstPtr& tracked_object = VoidConstPtr(), 
                const TransportHints& transport_hints = TransportHints()) {
        
            if (localSCNState) {
                // TODO, specify the behavior of node is in reconfigure or intermediate mode
                ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
            }
            registerDependenciesToSCN(node_name, topic_subscribe, REGISTER, TOPIC, SUBSCRIBE);
            SCNSubscriber scn_subscriber(ros::NodeHandle::subscribe<M>(topic_subscribe, queue_size, callback, tracked_object, transport_hints));
            return scn_subscriber;
        }

        // wrappers for ROS service server
        template<class T, class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided,
                    bool(T::*srv_func)(MReq &, MRes &), T *obj) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService(services_provided, srv_func, obj));
                return scn_service_server;
            }

        template<class T, class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided, 
                    bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), T *obj) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<T, MReq, MRes>(services_provided, srv_func, obj));
                return scn_service_server;
            }

        template<class T, class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided, 
                    bool(T::*srv_func)(MReq &, MRes &), const boost::shared_ptr<T>& obj) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<T, MReq, MRes>(services_provided, srv_func, obj));
                return scn_service_server;
            }

        template<class T, class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided,
                    bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), const boost::shared_ptr<T>& obj) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<T, MReq, MRes>(services_provided, srv_func, obj));
                return scn_service_server;
            }

        template<class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided,
                    bool(*srv_func)(MReq&, MRes&)) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<MReq, MRes>(services_provided, srv_func));
                return scn_service_server;
            }

        template<class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided,
                    bool(*srv_func)(ros::ServiceEvent<MReq, MRes>&)) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<MReq, MRes>(services_provided, srv_func));
                return scn_service_server;
            }

        template<class MReq, class MRes>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided,
                    const boost::function<bool(MReq&, MRes&)>& callback, 
                    const ros::VoidConstPtr& tracked_object = VoidConstPtr()) {
                
                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<MReq, MRes>(services_provided, callback, tracked_object));
                return scn_service_server;
            }

        template<class S>
            ros::SCNServiceServer advertiseService(const std::string &node_name, const std::string &services_provided,
                    const boost::function<bool(S&)>& callback,
                    const ros::VoidConstPtr& tracked_object = VoidConstPtr()) {

                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService<S>(services_provided, callback, tracked_object));
                return scn_service_server;
            }
#if 0
        ros::SCNServiceServer advertiseService(std::string node_name, std::string services_provided,
                            ros::AdvertiseServiceOptions& ops) {
        
                registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
        
                //Call exiting advertiseService
                SCNServiceServer scn_service_server(ros::NodeHandle::advertiseService(ops));
                return scn_service_server;
        }
#endif

        // wrappers for ROS service client
        template<class MReq, class MRes>
            ros::SCNServiceClient serviceClient(const std::string &node_name, const std::string &services_used,
                    bool persistent = false, const ros::M_string& header_values = M_string()) {

                registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);

                //Call exiting serviceClient
                SCNServiceClient scn_service_client(ros::NodeHandle::serviceClient<MReq, MRes>(services_used, persistent, header_values));
                return scn_service_client;
            }

        template<class Service>
            ros::SCNServiceClient serviceClient(const std::string &node_name, const std::string &services_used,
                    bool persistent = false, const ros::M_string& header_values = M_string()) {

                registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);

                //Call exiting serviceClient
                SCNServiceClient scn_service_client(ros::NodeHandle::serviceClient<Service>(services_used, persistent, header_values));
                return scn_service_client;
            }

#if 0
        ros::SCNServiceClient serviceClient(const std::string &node_name, const std::string &services_used,
                ros::ServiceClientOptions& ops) {

            registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);

            //Call exiting serviceClient
            SCNServiceClient scn_service_client(ros::NodeHandle::serviceClient(ops));
            return scn_service_client;
        }
#endif

        // public method for one node to get its state, used by publisher and subscriber
        int getLocalSCNState() {
            if (this->inited) {
                ROS_ERROR("Node Handle is not inited!\n");
                return -1;
            }
            return this->localSCNState;
        }
    };
}

#endif
