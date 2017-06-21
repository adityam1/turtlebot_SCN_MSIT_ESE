#include "Dependency.h"
#include <cstring>

/**
 * APIs for NodeInfo
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

NodeList::NodeList(){

}
NodeList::~NodeList(){

}
void NodeList::addNode(NodeInfo *_node){
	this->list.push_back(_node);
}
void NodeList::addNode(std::vector<NodeInfo*> &_nodes){
    int size = _nodes.size();

    for (int i = 0; i < size; i++) {
        this->list.push_back(_nodes[i]);
    }
}
