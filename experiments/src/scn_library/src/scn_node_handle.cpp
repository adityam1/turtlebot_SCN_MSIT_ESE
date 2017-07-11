#include <string>
#include <scn_library/systemControlRegisterService.h>

#include "scn_library/scn_utils.h"
#include "scn_node_handle.h"

/**
 * private method to used for communicating with SCN
 */
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
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		const std::string& service, bool(T::*srv_func)(MReq &, MRes &), T *obj) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService(service, srv_func, obj);
};

template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		  const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), T *obj) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(service, srv_func, obj);
};

template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		  const std::string& service, bool(T::*srv_func)(MReq &, MRes &), const boost::shared_ptr<T>& obj) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(service, srv_func, obj);
};

template<class T, class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		  const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), const boost::shared_ptr<T>& obj) {
	
    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
    
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(service, srv_func, obj);
};

template<class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		const std::string& service, bool(*srv_func)(MReq&, MRes&)) {
    
    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(service, srv_func);
};

template<class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		const std::string& service, bool(*srv_func)(ros::ServiceEvent<MReq, MRes>&)) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(service, srv_func);
};

template<class MReq, class MRes> ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		  const std::string& service, const boost::function<bool(MReq&, MRes&)>& callback,
                                 const ros::VoidConstPtr& tracked_object = ros::VoidConstPtr()) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(service, callback, tracked_object);
};

template<class S> ros::ServiceServer
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		  const std::string& service, const boost::function<bool(S&)>& callback,
                                 const ros::VoidConstPtr& tracked_object = ros::VoidConstPtr()) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);

    //Call exiting advertiseService
	return ros::NodeHandle::advertiseService<S>(service, callback, tracked_object);
};

ros::ServiceServer 
SCNNodeHandle::advertiseService(std::string node_name, std::string services_provided,
		ros::AdvertiseServiceOptions& ops) {

    registerDependenciesToSCN(node_name, services_provided, REGISTER, SERVICE, SERVER);
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService(ops);
};

template<class MReq, class MRes> ros::ServiceClient 
SCNNodeHandle::serviceClient(std::string node_name, std::string services_used,
							const std::string& service_name, bool persistent = false,
                          const ros::M_string& header_values = ros::M_string()) {
    
    registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);

	//Call exiting serviceClient
	return ros::NodeHandle::serviceClient<MReq, MRes>(service_name, persistent, header_values);
};

template<class Service> ros::ServiceClient 
SCNNodeHandle::serviceClient(std::string node_name, std::string services_used,
		  const std::string& service_name, bool persistent = false,
                              const ros::M_string& header_values = ros::M_string()) {

    registerDependenciesToSCN(node_name, services_used, REGISTER, SERVICE, CLIENT);
	
    //Call exiting serviceClient
	return ros::NodeHandle::serviceClient<Service>(service_name, persistent, header_values);
};

ros::ServiceClient
SCNNodeHandle::serviceClient(std::string node_name, std::string services_used,
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
    if (inited) {
        ROS_ERROR("Node Handle is not inited!\n");
        return -1;
    }
    return this->localSCNState;
}
