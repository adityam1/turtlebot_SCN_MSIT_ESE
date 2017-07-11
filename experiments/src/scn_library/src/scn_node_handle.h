#ifndef __SCN_NODE_HANDLE_H__
#define __SCN_NODE_HANDLE_H__

#include "ros/node_handle.h"
#include "ros/publisher.h"

using namespace ros;

class ROSCPP_DECL SCNNodeHandle : public NodeHandle {
    class SCNPublisher;

private:
    //Register node and service to SCN
    static ros::NodeHandle n;
    static ros::ServiceClient client;

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
            int _requestType, int _dependency, int _direction);

public:
    // for ROS topics
    // wrapper of advertise accept extra parameter - node_name, and return SCNPublisher
    template<class M> Publisher advertise(const std::string &node_name, 
            const std::string &topic_published, 
            uint32_t queue_size, 
            bool latch=false);

    template<class M> Publisher advertise(const std::string &node_name, 
            const std::string& topic_published, 
            uint32_t queue_size, 
            const SubscriberStatusCallback& connect_cb, 
            const SubscriberStatusCallback& disconnect_cb = SubscriberStatusCallback(), 
            const VoidConstPtr& tracked_object = VoidConstPtr(), 
            bool latch = false);

    // wrapper of subscribe accept extra parameter - node_name, and return SCNSubscriber
    template<class M> Subscriber subscribe(const std::string &node_name,
            const std::string &topic_subscribe,
            uint32_t queue_size,
            void(*fp)(M), 
            const TransportHints& transport_hints = TransportHints());

    template<class M> Subscriber subscribe(const std::string &node_name,
            const std::string& topic_subscribe, 
            uint32_t queue_size, 
            void(*fp)(const boost::shared_ptr<M const>&), 
            const TransportHints& transport_hints = TransportHints());

    template<class M> Subscriber subscribe(const std::string &node_name, 
            const std::string& topic_subscribe, 
            uint32_t queue_size, 
            const boost::function<void (const boost::shared_ptr<M const>&)>& callback, 
            const VoidConstPtr& tracked_object = VoidConstPtr(), 
            const TransportHints& transport_hints = TransportHints());

    // for ROS service
    template<class T, class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, bool(T::*srv_func)(MReq &, MRes &), T *obj);

    template<class T, class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), T *obj);

    template<class T, class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, bool(T::*srv_func)(MReq &, MRes &), const boost::shared_ptr<T>& obj);

    template<class T, class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), const boost::shared_ptr<T>& obj);

    template<class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, bool(*srv_func)(MReq&, MRes&));

    template<class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, bool(*srv_func)(ros::ServiceEvent<MReq, MRes>&));

    template<class MReq, class MRes>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, const boost::function<bool(MReq&, MRes&)>& callback,
                const ros::VoidConstPtr& tracked_object);

    template<class S>
        ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
                const std::string& service, const boost::function<bool(S&)>& callback,
                const ros::VoidConstPtr& tracked_object);

    ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
            ros::AdvertiseServiceOptions& ops);

    template<class MReq, class MRes>
        ros::ServiceClient serviceClient(std::string node_name, std::string services_used,
                const std::string& service_name, bool persistent,
                const ros::M_string& header_values);

    template<class Service>
        ros::ServiceClient serviceClient(std::string node_name, std::string services_used,
                const std::string& service_name, bool persistent,
                const ros::M_string& header_values);

    ros::ServiceClient serviceClient(std::string node_name, std::string services_used,
            ros::ServiceClientOptions& ops);


    // public method for one node to get its state, used by publisher and subscriber
    int getLocalSCNState();
};
#endif
