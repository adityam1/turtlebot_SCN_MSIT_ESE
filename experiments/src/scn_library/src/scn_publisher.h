#ifndef _SCN_PUBLISHER_H_
#define _SCN_PUBLISHER_H_

#include "ros/publisher.h"
#include "scn_node_handle.h"

using namespace ros;

class SCNNodeHandle;

class ROSCPP_DECL SCNPublisher : public Publisher {
    public:
        SCNPublisher() : Publisher() {};
        ~SCNPublisher();

        // wrapper method for publish with extra parameter - SCNNodeHandle to get the node state
        template <typename M> void publish(SCNNodeHandle &nh, const boost::shared_ptr<M> &message) const {
            int state = nh.getLocalSCNState();

            if (state) {
                //FIXME
                ROS_ERROR("publish failed because of invalid local SCN state: %d\n", state);
                return;
            }
            ros::Publisher::publish<M>(message);
            return;
        }

        template <typename M> void publish(SCNNodeHandle &nh, const M& message) const {
            int state = nh.getLocalSCNState();

            if (state) {
                //FIXME
                ROS_ERROR("publish failed becasue of invalid local SCN state: %d\n", state);
                return;
            }

            ros::Publisher::publish<M> (message);
            return;
        };
};

#endif
