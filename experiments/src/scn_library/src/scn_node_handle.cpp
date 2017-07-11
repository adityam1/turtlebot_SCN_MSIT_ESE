#include <string>
#include <scn_library/systemControlRegisterService.h>

#include "scn_library/scn_utils.h"
#include "scn_library/scn_node_handle.h"

ros::SCNNodeHandle::SCNNodeHandle(const std::string& ns, const M_string& remappings) : NodeHandle(ns, remappings) {

    client = n.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    localSCNState = 0;
    inited = true;
};

ros::SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& rhs) : NodeHandle(rhs) {
    
    client = n.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    localSCNState = 0;
    inited = true;
};

ros::SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns) : NodeHandle(parent, ns) {
    
    client = n.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
    localSCNState = 0;
    inited = true;
};

ros::SCNNodeHandle::SCNNodeHandle(const SCNNodeHandle& parent, const std::string &ns, const M_string &remappings) : NodeHandle(parent, ns, remappings) {

    client = n.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
        localSCNState = 0;   
        inited = true;
    };

ros::SCNNodeHandle::~SCNNodeHandle() {
    inited = false;
};



/**
 * private method to used for communicating with SCN
 */
#if 0
bool
SCNNodeHandle::registerDependenciesToSCN(const std::string &_nodeName, const std::string &_depName, 
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

/**
 * the following wrappers are provided for ROS topics
 */
// wrapper of advertise accept extra parameter - node_name, and return SCNPublisher
template<class M> Publisher 
SCNNodeHandle::advertise(const std::string &node_name, 
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
SCNNodeHandle::advertise(const std::string &node_name, 
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
SCNNodeHandle::subscribe(const std::string &node_name,
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
SCNNodeHandle::subscribe(const std::string &node_name,
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
SCNNodeHandle::subscribe(const std::string &node_name, 
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

/**
 * the following wrappers are provided for ROS service
 */
template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided, 
        bool(T::*srv_func)(MReq &, MRes &), T *obj) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService(services_provided, srv_func, obj);
};

template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided, 
        bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), T *obj) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(services_provided, srv_func, obj);
};

template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
        bool(T::*srv_func)(MReq &, MRes &), const boost::shared_ptr<T>& obj) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(services_provided, srv_func, obj);
};

template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
        bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), const boost::shared_ptr<T>& obj) {
	
    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
    
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(services_provided, srv_func, obj);
};

template<class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
        bool(*srv_func)(MReq&, MRes&)) {
    
    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(services_provided, srv_func);
};

template<class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
        bool(*srv_func)(ros::ServiceEvent<MReq, MRes>&)) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(services_provided, srv_func);
};

template<class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
		  const boost::function<bool(MReq&, MRes&)>& callback,
          const ros::VoidConstPtr& tracked_object = ros::VoidConstPtr()) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(services_provided, callback, tracked_object);
};

template<class S> ros::ServiceServer
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
        const boost::function<bool(S&)>& callback,
        const ros::VoidConstPtr& tracked_object = ros::VoidConstPtr()) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

    //Call exiting advertiseService
	return ros::NodeHandle::advertiseService<S>(services_provided, callback, tracked_object);
};

ros::ServiceServer 
SCNNodeHandle::advertiseService(const std::string &node_name, const std::string &services_provided,
		ros::AdvertiseServiceOptions& ops) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService(ops);
};

template<class MReq, class MRes> ros::ServiceClient 
SCNNodeHandle::serviceClient(const std::string &node_name, const std::string &services_used,
        bool persistent = false,
        const ros::M_string& header_values = ros::M_string()) {

    registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);

	//Call exiting serviceClient
	return ros::NodeHandle::serviceClient<MReq, MRes>(services_used, persistent, header_values);
};

template<class Service> ros::ServiceClient 
SCNNodeHandle::serviceClient(const std::string &node_name, const std::string &services_used,
        bool persistent = false,
        const ros::M_string& header_values = ros::M_string()) {

    registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);
	
    //Call exiting serviceClient
	return ros::NodeHandle::serviceClient<Service>(services_used, persistent, header_values);
};

ros::ServiceClient
SCNNodeHandle::serviceClient(const std::string &node_name, const std::string &services_used,
		ros::ServiceClientOptions& ops) {

    registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);
	
	//Call exiting serviceClient
	return ros::NodeHandle::serviceClient(ops);
};

/**
 * extra methods for handle communicating with SCN
 */
// public method for one node to get its state, used by publisher and subscriber
int
SCNNodeHandle::getLocalSCNState() {
    if (this->inited) {
        ROS_ERROR("Node Handle is not inited!\n");
        return -1;
    }
    return this->localSCNState;
}

#endif
