#include "scn_library/scn_publisher.h"
#include "scn_library/scn_node_handle.h"

ros::SCNPublisher::SCNPublisher() : Publisher() {

}

ros::SCNPublisher::SCNPublisher(const Publisher &rhs) : Publisher(rhs){
    
}

ros::SCNPublisher::~SCNPublisher() {

}
