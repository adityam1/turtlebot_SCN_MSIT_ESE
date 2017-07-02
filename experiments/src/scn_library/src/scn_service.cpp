#include "scn_service.h"

#include <string>
#include <scn_library/systemControlRegisterService.h>

#include <ros/ros.h>
#include "ros/node_handle.h"
#include "ros/forwards.h"
#include "ros/publisher.h"
#include "ros/subscriber.h"
#include "ros/service_server.h"
#include "ros/service_client.h"
#include "ros/timer.h"
#include "ros/rate.h"
#include "ros/wall_timer.h"
#include "ros/advertise_options.h"
#include "ros/advertise_service_options.h"
#include "ros/subscribe_options.h"
#include "ros/service_client_options.h"
#include "ros/timer_options.h"
#include "ros/wall_timer_options.h"
#include "ros/spinner.h"
#include "ros/init.h"

#include <boost/bind.hpp>

#include <XmlRpcValue.h>

ScnService::ScnService()
{
	// client used to register to the systemControlNode
	client = n.serviceClient<scn_library::systemControlRegisterService>("systemControlRegisterService");
};

template<class T, class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		const std::string& service, bool(T::*srv_func)(MReq &, MRes &), T *obj)
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	} 
    	else 
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}
	
	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService(service, srv_func, obj);
};

template<class T, class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		  const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), T *obj)
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(service, srv_func, obj);
};

template<class T, class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		  const std::string& service, bool(T::*srv_func)(MReq &, MRes &), const boost::shared_ptr<T>& obj)
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(service, srv_func, obj);
};

template<class T, class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		  const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), const boost::shared_ptr<T>& obj)
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<T, MReq, MRes>(service, srv_func, obj);
};

template<class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		const std::string& service, bool(*srv_func)(MReq&, MRes&))
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(service, srv_func);
};

template<class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		const std::string& service, bool(*srv_func)(ros::ServiceEvent<MReq, MRes>&))
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(service, srv_func);
};

template<class MReq, class MRes>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		  const std::string& service, const boost::function<bool(MReq&, MRes&)>& callback,
                                 const ros::VoidConstPtr& tracked_object = ros::VoidConstPtr())
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<MReq, MRes>(service, callback, tracked_object);
};

template<class S>
ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		  const std::string& service, const boost::function<bool(S&)>& callback,
                                 const ros::VoidConstPtr& tracked_object = ros::VoidConstPtr())
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
		std::string res;
		if (srv.response.result == 0)
		{
			res = "OK";
		}
		else
		{
		res = "ERROR";
		}
		ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
		ROS_ERROR("Failed to call systemControlRegisterService");
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService<S>(service, callback, tracked_object);
};

ros::ServiceServer ScnService::advertiseService(std::string node_name, std::vector<std::string> services_provided,
		ros::AdvertiseServiceOptions& ops)
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_provided = services_provided;

	if (client.call(srv))
	{
		std::string res;
		if (srv.response.result == 0)
		{
			res = "OK";
		}
		else
		{
		res = "ERROR";
		}
		ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
		ROS_ERROR("Failed to call systemControlRegisterService");
	}

	//Call exiting advertiseService
	return ros::NodeHandle::advertiseService(ops);
};

template<class MReq, class MRes>
ros::ServiceClient ScnService::serviceClient(std::string node_name, std::vector<std::string> services_used,
							const std::string& service_name, bool persistent = false,
                          const ros::M_string& header_values = ros::M_string())
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_used = services_used;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	} 
    	else 
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting serviceClient
	return ros::NodeHandle::serviceClient<MReq, MRes>(service_name, persistent, header_values);
};

template<class Service>
ros::ServiceClient ScnService::serviceClient(std::string node_name, std::vector<std::string> services_used,
		  const std::string& service_name, bool persistent = false,
                              const ros::M_string& header_values = ros::M_string())
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_used = services_used;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting serviceClient
	return ros::NodeHandle::serviceClient<Service>(service_name, persistent, header_values);
};

ros::ServiceClient ScnService::serviceClient(std::string node_name, std::vector<std::string> services_used,
		ros::ServiceClientOptions& ops)
{
	scn_library::systemControlRegisterService srv;
	srv.request.node_name = node_name;
	srv.request.services_used = services_used;

	if (client.call(srv))
	{
    	std::string res;
    	if (srv.response.result == 0)
    	{
        	res = "OK";
    	}
    	else
    	{
        res = "ERROR";
    	}
    	ROS_INFO("result: %s\n", res.c_str());
	}
	else
	{
    	ROS_ERROR("Failed to call systemControlRegisterService");
    	//return -1;
	}

	//Call exiting serviceClient
	return ros::NodeHandle::serviceClient(ops);
};

template<class MReq, class MRes>
bool ScnServiceClient::call(MReq& req, MRes& res)
{
	//Do other SCN related stuff here

	//call actual ServiceClient's call
	return ros::ServiceClient::call(req, res);
};
