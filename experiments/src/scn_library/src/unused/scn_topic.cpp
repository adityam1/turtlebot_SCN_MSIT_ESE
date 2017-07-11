#include <string>
#include <scn_library/systemControlRegisterService.h>

#include "scn_utils.h"
#include "scn_topic.h"

bool
ScnTopic::registerDependenciesToSCN(const std::string &_nodeName, const std::string &_depName, 
        int _requestType, int _dependency, int _direction) {

    scn_library::systemControlRegisterService srv;
    srv.request.nodeName = _nodeName;
    srv.request.depName = _depName;
    srv.request.requestType = _requestType;;
    srv.request.dependency = _dependency;
    srv.request.direction = _direction;

    bool ans;
    if (client.call(srv)) {
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

// wrapper of advertise accept extra parameter - node_name, and return SCNPublisher
template<class M> Publisher 
ScnTopic::advertise(const std::string &node_name, 
        const std::string &topic_published, 
        uint32_t queue_size, 
        bool latch) {

    if (localSCNState) {
        // TODO, specify the behavior of node is in reconfigure or intermediate mode
        ROS_ERROR("advertise failed because of invalid local SCN state: %d\n", localSCNState);
    }
    registerDependenciesToSCN(node_name, topic_published, REGISTER, TOPIC, PUBLISH);
    return ros::NodeHandle::advertise<M>(topic_published, queue_size, latch);
}

template<class M> Publisher 
ScnTopic::advertise(const std::string &node_name, 
        const std::string& topic_published, 
        uint32_t queue_size, 
        const SubscriberStatusCallback& connect_cb, 
        const SubscriberStatusCallback& disconnect_cb, 
        const VoidConstPtr& tracked_object, 
        bool latch) {
    if (localSCNState) {
        // TODO, specify the behavior of node is in reconfigure or intermediate mode
        ROS_ERROR("advertise failed because of invalid local SCN state: %d\n", localSCNState);
    }
    registerDependenciesToSCN(node_name, topic_published, REGISTER, TOPIC, PUBLISH);
    return ros::NodeHandle::advertise<M>(topic_published, queue_size, connect_cb, disconnect_cb, tracked_object, latch);
}

// wrapper of subscribe accept extra parameter - node_name, and return SCNSubscriber
template<class M> Subscriber 
ScnTopic::subscribe(const std::string &node_name,
        const std::string &topic_subscribe,
        uint32_t queue_size,
        void(*fp)(M), 
        const TransportHints& transport_hints) {

    if (localSCNState) {
        // TODO, specify the behavior of node is in reconfigure or intermediate mode
        ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
    }
    registerDependenciesToSCN(node_name, topic_subscribe, REGISTER, TOPIC, SUBSCRIBE);
    return ros::NodeHandle::subscribe<M>(topic_subscribe, queue_size, fp, transport_hints);
}

template<class M> Subscriber 
ScnTopic::subscribe(const std::string &node_name,
        const std::string& topic_subscribe, 
        uint32_t queue_size, 
        void(*fp)(const boost::shared_ptr<M const>&), 
        const TransportHints& transport_hints) {

    if (localSCNState) {
        // TODO, specify the behavior of node is in reconfigure or intermediate mode
        ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
    }
    registerDependenciesToSCN(node_name, topic_subscribe, REGISTER, TOPIC, SUBSCRIBE);
    return ros::NodeHandle::subscribe<M>(topic_subscribe, queue_size, fp, transport_hints);
}

template<class M> Subscriber
ScnTopic::subscribe(const std::string &node_name, 
        const std::string& topic_subscribe, 
        uint32_t queue_size, 
        const boost::function<void (const boost::shared_ptr<M const>&)>& callback, 
        const VoidConstPtr& tracked_object, 
        const TransportHints& transport_hints) {

    if (localSCNState) {
        // TODO, specify the behavior of node is in reconfigure or intermediate mode
        ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
    }
    registerDependenciesToSCN(node_name, topic_subscribe, REGISTER, TOPIC, SUBSCRIBE);
    return ros::NodeHandle::subscribe<M>(topic_subscribe, queue_size, callback, tracked_object, transport_hints);
}

// public method for one node to get its state, used by publisher and subscriber
int
ScnTopic::getLocalSCNState() {
    if (inited) {
        ROS_ERROR("Node Handle is not inited!\n");
        return -1;
    }
    return this->localSCNState;
}

// wrapper method for publish with extra parameter - SCNNodeHandle to get the node state
template <typename M> void
SCNPublisher::publish(const boost::shared_ptr<M> &message) const {
#if 0 
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("publish failed because of invalid local SCN state: %d\n", state);
        return;
    }
#endif
    ros::Publisher::publish<M>(message);
    return;
}

template <typename M> void 
SCNPublisher::publish(const M& message) const {
#if 0  
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("publish failed becasue of invalid local SCN state: %d\n", state);
        return;
    }
#endif

    ros::Publisher::publish<M> (message);
    return;
};
