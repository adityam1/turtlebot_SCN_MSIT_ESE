#ifndef _SCNNODE_HANDLE_H_
#define _SCNNODE_HANDLE_H_

#include "ros/node_handle.h"
//#include "scn_publisher.h"
#include "scn_subscriber.h"

using namespace ros;

class ROSCPP_DECL SCNNodeHandle : public NodeHandle {
    class SCNPublisher;
    private:
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
     * node_name - the name of the node
     * name - name of the topic, service, or action
     * direction - topic: 0, service: 1, action: 2
     */
    bool registerDependenciesToSCN(const SCNNodeHandle &nh, std::string &node_name, std::string &name, int direction);

    public:
    SCNNodeHandle(const std::string& ns, const M_string& remappings);
    SCNNodeHandle(const SCNNodeHandle& rhs);
    SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns);
    SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns, const M_string &remappings);
    ~SCNNodeHandle();

    // wrapper of advertise accept extra parameter - node_name, and return SCNPublisher
    template<class M> Publisher advertise(const std::string &node_name, 
            const std::string &topic, 
            uint32_t queue_size, 
            bool latch=false) {
        if (localSCNState) {
            // TODO, specify the behavior of node is in reconfigure or intermediate mode
            ROS_ERROR("advertise failed because of invalid local SCN state: %d\n", localSCNState);
        }
        // TODO add dependency part for this advertise
        return ros::NodeHandle::advertise<M>(topic, queue_size, latch);
    }
    template<class M> Publisher advertise(const std::string &node_name, 
            const std::string& topic, 
            uint32_t queue_size, 
            const SubscriberStatusCallback& connect_cb, 
            const SubscriberStatusCallback& disconnect_cb = SubscriberStatusCallback(), 
            const VoidConstPtr& tracked_object = VoidConstPtr(), 
            bool latch = false) {
        if (localSCNState) {
            // TODO, specify the behavior of node is in reconfigure or intermediate mode
            ROS_ERROR("advertise failed because of invalid local SCN state: %d\n", localSCNState);
        }
        // TODO add dependency part for this advertise
        return ros::NodeHandle::advertise<M>(topic, queue_size, connect_cb, disconnect_cb, tracked_object, latch);
    }

    // wrapper of subscribe accept extra parameter - node_name, and return SCNSubscriber
    template<class M> Subscriber subscribe(const std::string &node_name,
            const std::string &topic,
            uint32_t queue_size,
            void(*fp)(M), 
            const TransportHints& transport_hints = TransportHints()) {

        if (localSCNState) {
            // TODO, specify the behavior of node is in reconfigure or intermediate mode
            ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
        }
        // TODO add dependency part for this subscribe
        return ros::NodeHandle::subscribe<M>(topic, queue_size, fp, transport_hints);
    }

    template<class M> Subscriber subscribe(const std::string &node_name,
            const std::string& topic, 
            uint32_t queue_size, 
            void(*fp)(const boost::shared_ptr<M const>&), 
            const TransportHints& transport_hints = TransportHints()) {

        if (localSCNState) {
            // TODO, specify the behavior of node is in reconfigure or intermediate mode
            ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
        }
        // TODO add dependency part for this subscribe
        return ros::NodeHandle::subscribe<M>(topic, queue_size, fp, transport_hints);
    }

    template<class M> Subscriber subscribe(const std::string &node_name, 
            const std::string& topic, 
            uint32_t queue_size, 
            const boost::function<void (const boost::shared_ptr<M const>&)>& callback, 
            const VoidConstPtr& tracked_object = VoidConstPtr(), 
            const TransportHints& transport_hints = TransportHints()) {

        if (localSCNState) {
            // TODO, specify the behavior of node is in reconfigure or intermediate mode
            ROS_ERROR("subscribe failed because of invalid local SCN state: %d\n", localSCNState);
        }
        // TODO add dependency part for this subscribe
        return ros::NodeHandle::subscribe<M>(topic, queue_size, callback, tracked_object, transport_hints);
    }

    // public method for one node to get its state, used by publisher and subscriber
    int getLocalSCNState() {
        if (inited) {
            ROS_ERROR("Node Handle is not inited!\n");
            return -1;
        }
        return this->localSCNState;
    }
};
#endif
