#include "scn_library/scn_publisher.h"
#include "scn_library/scn_node_handle.h"

ros::SCNPublisher::SCNPublisher() : Publisher() {

}

ros::SCNPublisher::SCNPublisher(const Publisher &rhs) : Publisher(rhs){
    
}

ros::SCNPublisher::~SCNPublisher() {

}

// wrapper method for publish with extra parameter - SCNNodeHandle to get the node state
template <typename M> void 
ros::SCNPublisher::publish(SCNNodeHandle &nh, const boost::shared_ptr<M> &message) const {
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("publish failed because of invalid local SCN state: %d\n", state);
        return;
    }
    ros::Publisher::publish<M>(message);
    return;
}

template <typename M> void 
ros::SCNPublisher::publish(SCNNodeHandle &nh, const M& message) const {
    int state = nh.getLocalSCNState();

    if (state) {
        //FIXME
        ROS_ERROR("publish failed becasue of invalid local SCN state: %d\n", state);
        return;
    }

    ros::Publisher::publish<M> (message);
    return;
}
