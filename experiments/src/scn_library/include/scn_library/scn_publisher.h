#ifndef _SCN_PUBLISHER_H_
#define _SCN_PUBLISHER_H_

#include "ros/publisher.h"

namespace ros {
    // forward declaration
    class SCNNodeHandle;
    
    class SCNPublisher : public Publisher {
        public:
            SCNPublisher();
            SCNPublisher(const Publisher &rhs);
            ~SCNPublisher();

            // wrapper method for publish with extra parameter - SCNNodeHandle to get the node state
            template <typename M> void publish(SCNNodeHandle &nh, const boost::shared_ptr<M> &message) const;
            template <typename M> void publish(SCNNodeHandle &nh, const M& message) const;
    };
}
#endif
