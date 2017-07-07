/*
 * scn_service.h
 *
 *  Created on: Jul 2, 2017
 *      Author: anind
 */

#ifndef TURTLEBOT_TURTLEBOT_EXPERIMENTS_SRC_SCN_LIBRARY_SRC_SCN_SERVICE_H_
#define TURTLEBOT_TURTLEBOT_EXPERIMENTS_SRC_SCN_LIBRARY_SRC_SCN_SERVICE_H_
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

class ScnService: public ros::NodeHandle
{
	//Register node and service to SCN
	ros::NodeHandle n;
	ros::ServiceClient client;
public:
	ScnService();

	template<class T, class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			const std::string& service, bool(T::*srv_func)(MReq &, MRes &), T *obj);

	template<class T, class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			  const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), T *obj);

	template<class T, class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			  const std::string& service, bool(T::*srv_func)(MReq &, MRes &), const boost::shared_ptr<T>& obj);

	template<class T, class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			  const std::string& service, bool(T::*srv_func)(ros::ServiceEvent<MReq, MRes>&), const boost::shared_ptr<T>& obj);

	template<class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			const std::string& service, bool(*srv_func)(MReq&, MRes&));

	template<class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			const std::string& service, bool(*srv_func)(ros::ServiceEvent<MReq, MRes>&));

	template<class MReq, class MRes>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			  const std::string& service, const boost::function<bool(MReq&, MRes&)>& callback,
	                                 const ros::VoidConstPtr& tracked_object);

	template<class S>
	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			  const std::string& service, const boost::function<bool(S&)>& callback,
	                                 const ros::VoidConstPtr& tracked_object);

	ros::ServiceServer advertiseService(std::string node_name, std::string services_provided,
			ros::AdvertiseServiceOptions& ops);

	template<class MReq, class MRes>
  	ros::ServiceClient serviceClient(std::string node_name, std::string services_used,
  								const std::string& service_name, bool persistent,
                              const ros::M_string& header_values);

	template<class Service>
	ros::ServiceClient serviceClient(std::string node_name, std::string services_used,
			  const std::string& service_name, bool persistent,
	                              const ros::M_string& header_values);

	ros::ServiceClient serviceClient(std::string node_name, std::string services_used,
			ros::ServiceClientOptions& ops);
};

class ScnServiceClient: public ros::ServiceClient
{
public:
	template<class MReq, class MRes>
	bool call(MReq& req, MRes& res);

};

#endif /* TURTLEBOT_TURTLEBOT_EXPERIMENTS_SRC_SCN_LIBRARY_SRC_SCN_SERVICE_H_ */
