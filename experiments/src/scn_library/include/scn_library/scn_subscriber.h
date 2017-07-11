#ifndef __SCNSUBSCRIBER_H__
#define __SCNSUBSCRIBER_H__

#include "ros/subscriber.h"

namespace ros {
    class ROSCPP_DECL SCNSubscriber : public Subscriber {
        public:
            SCNSubscriber();
            SCNSubscriber(const Subscriber &rhs);
            ~SCNSubscriber();
    };
}
#endif
