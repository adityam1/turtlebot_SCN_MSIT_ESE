#ifndef _SCN_PUBLISHER_H_
#define _SCN_PUBLISHER_H_

#include "ros/publisher.h"
#include "scn_library/scn_core.h"

namespace ros {
    class ROSCPP_DECL SCNPublisher : public Publisher {
        public:
            SCNPublisher();
            SCNPublisher(const Publisher &rhs);
            ~SCNPublisher();

            // wrapper method for publish with extra parameter - SCNNodeHandle to get the node state
            template <typename M> void publish(const boost::shared_ptr<M> &message) const {
                int state = ros::scnGetNodeState();

                if (state) {
                    //FIXME
                    ROS_ERROR("publish failed because of invalid local SCN state: %d\n", state);
                    return;
                }
                ros::Publisher::publish<M>(message);
                return;
            }
            template <typename M> void publish(const M& message) const {
                int state = ros::scnGetNodeState();

                if (state) {
                    //FIXME
                    ROS_ERROR("publish failed becasue of invalid local SCN state: %d\n", state);
                    return;
                }

                ros::Publisher::publish<M> (message);
                return;
            }
    };
}
#endif
