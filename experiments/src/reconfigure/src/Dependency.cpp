#include <cstring>
#include <ros/ros.h>
#include "Dependency.h"

using namespace std;
typedef std::map<std::string, std::vector<std::string> > my_map;
static vector<string> empty_vector;
/**
 * APIs for Dependency class
 */
Dependency::Dependency() {

}

Dependency::~Dependency() {

}

void 
Dependency::addToNodeServices(const std::string &nodeName, const std::string &serviceName) {
    /* Check if entry for node already exists */
    if(NodeServices.find(nodeName) == NodeServices.end()) {
        /* Insert node to the map */
        NodeServices.insert(std::pair<std::string, std::vector<std::string> > (nodeName, std::vector<std::string>()));
    }

    /* Update nodes service vector */
    NodeServices[nodeName].push_back(serviceName); 
}

void 
Dependency::addToNodeTopics(const std::string &nodeName, const std::string &topicName) {
    /* Check if entry for node already exists */
    if(NodeTopics.find(nodeName) == NodeTopics.end()) {
        /* Insert node to the map */
        NodeTopics.insert(std::pair<std::string, std::vector<std::string> > (nodeName, std::vector<std::string>()));
    }

    /* Update nodes topic vector */
    NodeTopics[nodeName].push_back(topicName); 
}

void 
Dependency::addToServicesInfo(const std::string &serviceName, const std::string &nodeName) {
    /* Check if entry for this service already exists */
    if(ServicesInfo.find(serviceName) == ServicesInfo.end()) {
        /* Insert service to the map */
        ServicesInfo.insert(std::pair<std::string, std::vector<std::string> > (serviceName, std::vector<std::string>()));
    }

    /* Update the list of nodes for this service */
    ServicesInfo[serviceName].push_back(nodeName);
}

void 
Dependency::addToTopicsInfo(const std::string &topicName, const std::string &nodeName) {
    /* Check if entry for this topic already exists */
    if(TopicsInfo.find(topicName) == TopicsInfo.end()) {
        /* Insert topic to the map */
        TopicsInfo.insert(std::pair<std::string, std::vector<std::string> > (topicName, std::vector<std::string>()));
    }

    /* Update the list of nodes for this service */
    TopicsInfo[topicName].push_back(nodeName);
}

void 
Dependency::traverseNodeServiers() {
    for (my_map::iterator it = NodeServices.begin(); it != NodeServices.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("node name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("service provided by this node: %s\n", value[i].c_str());
        }
    }
}

void 
Dependency::traverseNodeTopics() {
    for (my_map::iterator it = NodeTopics.begin(); it != NodeTopics.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &values = it->second;
        ROS_INFO("node name: %s\n", key.c_str());
        for (int i = 0; i < values.size(); i++) {
            ROS_INFO("topics published by this node: %s\n", values[i].c_str());
        }
    }
}

void 
Dependency::traverseServicesInfo() {
    for (my_map::iterator it = ServicesInfo.begin(); it != ServicesInfo.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("service name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("node used this service: %s\n", value[i].c_str());
        }
    }
}

void 
Dependency::traverseTopicsInfo() {
    for (my_map::iterator it = TopicsInfo.begin(); it != TopicsInfo.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("service name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("node subscribed to the topic: %s\n", value[i].c_str());
        }
    }
}

std::vector<std::string> &
Dependency::getNodeServiceList(const std::string &nodeName) {
    if (!isValidNodeForService(nodeName)) {
        return empty_vector;
    }
    return NodeServices[nodeName];
}

std::vector<std::string> &
Dependency::getServiceNodeList(const std::string &serviceName) {
    if (!isValidServiceForNode(serviceName)) {
        return empty_vector;
    }
    return ServicesInfo[serviceName];
}

std::vector<std::string> &
Dependency::getNodeTopicList(const std::string &nodeName) {
    if (!isValidNodeForTopic(nodeName)) {
        return empty_vector;
    }
    return NodeTopics[nodeName];
}

std::vector<std::string> &
Dependency::getTopicNodeList(const std::string &topicName) {
    if (!isValidTopicForNode(topicName)) {
        return empty_vector;
    }
    return TopicsInfo[topicName];
}

/**
 * private methods
 */
bool 
Dependency::isValidNodeForService(const std::string &nodeName) {
    if (NodeServices.find(nodeName) == NodeServices.end()) {
        ROS_ERROR("Invalid node specified for services");
        return false;
    }
    return true;
}

bool 
Dependency::isValidNodeForTopic(const std::string &nodeName) {
    if (NodeTopics.find(nodeName) == NodeTopics.end()) {
        ROS_ERROR("Invalid node specified for topics");
        return false;
    }
    return true;
}

bool 
Dependency::isValidServiceForNode(const std::string &serviceName) {
    if (ServicesInfo.find(serviceName) == ServicesInfo.end()) {
        ROS_INFO("No node uses the service specified");
        return false;
    }
    return true;
}
bool 
Dependency::isValidTopicForNode(const std::string &topicName) {
    if (TopicsInfo.find(topicName) == TopicsInfo.end()) {
        ROS_INFO("No node subscribes the node specified");
        return false;
    }
    return true;
}

/**
 * APIs for NodeInfo, currently not used
 */
NodeInfo::NodeInfo(char const *_name){
	this->name = std::string(_name);
}
NodeInfo::NodeInfo(char const *_name, std::vector<std::string> &_servicesProvided, std::vector<std::string> &_topicsPublished){
    this->name = std::string(_name);
    this->servicesProvided = _servicesProvided;
    this->topicsPublished = _topicsPublished;
}
NodeInfo::~NodeInfo(){

}
std::string NodeInfo::getName(void){
	return this->name;
}
std::vector<std::string> & NodeInfo::getServicesProvided(void){
	return this->servicesProvided;
}
std::vector<std::string> & NodeInfo::getSTopicsPublished(void){
	return this->topicsPublished;
}
void NodeInfo::addServicesProvided(std::string &_servicesProvided){
	this->servicesProvided.push_back(_servicesProvided);
}
void NodeInfo::addTopicsPublished(std::string &_topicsPublished){
	this->topicsPublished.push_back(_topicsPublished);
}
void NodeInfo::addServicesProvided(std::vector<std::string> &_servicesProvided){
    int size = _servicesProvided.size();
    for (int i = 0; i < size; i++) {
        this->servicesProvided.push_back(_servicesProvided[i]);
    }
}
void NodeInfo::addTopicsPublished(std::vector<std::string> &_topicsPublished){
    int size = _topicsPublished.size();
    for (int i = 0; i < size; i++) {
        this->topicsPublished.push_back(_topicsPublished[i]);
    }
}
