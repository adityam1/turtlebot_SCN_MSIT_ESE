#ifndef __SCNSUBSCRIBER_H__
#define __SCNSUBSCRIBER_H__

namespace ros {
    class ROSCPP_DECL SCNSubscriber : public Subscriber {
        public:
            SCNSubscriber() : Subscriber() {};
            ~SCNSubscriber();
    };
}
#endif
