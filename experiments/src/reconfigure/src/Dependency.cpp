#include <cstring>
#include <queue>
#include <ros/ros.h>
#include "reconfigure/Dependency.h"
#include "scn_library/scn_utils.h"

static int log_level = LOG_INFO;

/**
 * APIs for Node class
 */
Node::Node(const char *_name) {
    this->name = string(_name);
}

Node::Node(const string _name) {
    this->name = _name;
}

Node::~Node(){

}

// getters
string
Node::getName(void){
    return this->name;
}

void 
Node::setName(string _name) {
    this->name = _name;
}

bool
Node::getVisited() {
    return this->visited;
}

void 
Node::setVisited(bool _visited) {
    this->visited = _visited;
}

vector<string> &
Node::getOutgoingServices(void) {
    return this->outgoingServices;
}

vector<string> &
Node::getIncomingServices(void) {
    return this->incomingServices;
}

vector<string> &
Node::getOutgoingTopics(void) {
    return this->outgoingTopics;
}

vector<string> &
Node::getIncomingTopics(void) {
    return this->incomingTopics;
}

int 
Node::getOutgoingServicesSize() {
    return this->outgoingServices.size();
}

int 
Node::getIncomingServicesSize() {
    return this->incomingServices.size();
}

int 
Node::getOutgoingTopicsSize() {
    return this->outgoingTopics.size();
}

int 
Node::getIncomingTopicsSize() {
    return this->incomingTopics.size();
}

// setters
void
Node::setOutgoingServices(vector<string> &_outgoingServices) {
    this->outgoingServices = _outgoingServices;
}
void 
Node::setIncomingServices(vector<string> &_incomingServices) {
    this->incomingServices = _incomingServices;
}
void 
Node::setOutgoingTopics(vector<string> &_outgoingTopics) {
    this->outgoingTopics = _outgoingTopics;
}

void 
Node::setIncomingTopics(vector<string> &_incomingTopics) {
    this->incomingTopics = _incomingTopics;
}

// adders
void 
Node::addOutgoingServices(string &_serviceProvided) {
    this->outgoingServices.push_back(_serviceProvided);
}

void 
Node::addIncomingServices(string  &_servicesUsed) {
    this->incomingServices.push_back(_servicesUsed);
}

void 
Node::addOutgoingTopics(string &_topicsPublished) {
    this->outgoingTopics.push_back(_topicsPublished);
}

void 
Node::addIncomingTopics(string &_topicsSubscribed) {
    this->incomingTopics.push_back(_topicsSubscribed);
}

// erasers
void 
Node::eraseOutgoingServices(string &_serviceProvided) {
    vector<string>::iterator pos = find(outgoingServices.begin(), outgoingServices.end(), _serviceProvided);
    if (pos != outgoingServices.end()) {
        outgoingServices.erase(pos);
    }
}
void 
Node::eraseIncomingServices(string  &_servicesUsed) {
    vector<string>::iterator pos = find(incomingServices.begin(), incomingServices.end(), _servicesUsed);
    if (pos != incomingServices.end()) {
        incomingServices.erase(pos);
    }
}

void
Node::eraseOutgoingTopics(string &_topicsPublished) {
    vector<string>::iterator pos = find(outgoingTopics.begin(), outgoingTopics.end(), _topicsPublished);
    if (pos != outgoingTopics.end()) {
        outgoingTopics.erase(pos);
    }
}

void 
Node::eraseIncomingTopics(string &_topicsSubscribed) {
    vector<string>::iterator pos = find(incomingTopics.begin(), incomingTopics.end(), _topicsSubscribed);
    if (pos != incomingTopics.end()) {
        incomingTopics.erase(pos);
    }
}

void 
Node::traverseOutgoingServices() {
    INFO("Services used:\n");
    for (int i = 0; i < outgoingServices.size(); i++) {
        INFO("\t%s", outgoingServices[i].c_str());
    }
    if (outgoingServices.size() != 0) {
        INFO("\n");
    }
}

void 
Node::traverseIncomingServices() {
    INFO("Services provided:\n");
    for (int i = 0; i < incomingServices.size(); i++) {
        INFO("\t%s", incomingServices[i].c_str());
    }
    if (incomingServices.size() != 0) {
        INFO("\n");   
    }
}

void 
Node::traverseOutgoingTopics() {
    INFO("Topics published:\n");
    for (int i = 0; i < outgoingTopics.size(); i++) {
        INFO("\t%s", outgoingTopics[i].c_str());
    }
    if (outgoingTopics.size() != 0) {
        INFO("\n");
    }
}

void 
Node::traverseIncomingTopics() {
    INFO("Topics subscribed:\n");
    for (int i = 0; i < incomingTopics.size(); i++) {
        INFO("\t%s", incomingTopics[i].c_str());
    }
    if (incomingTopics.size() != 0) {
        INFO("\n");   
    }
}

/**
 * APIs for Dependency class
 */
Dependency::Dependency() {

}

Dependency::~Dependency() {

}

// adders
void 
Dependency::addServiceNode(const string service, Node* _node) {
    this->serviceInfo[service] = _node;
}

void 
Dependency::addTopicNode(const string topic, Node* _node) {
    this->topicInfo[topic] = _node;
}

// getters
Node *
Dependency::getNodeWithName(string &nodeName) {
    Node *res = NULL;
    for (int i = 0; i < list.size(); i++) {
        Node *node = list[i];
        if (node->getName().compare(nodeName) == 0) {
            res = node;
            break;
        }
    }
    return res;
}

vector<Node *>
Dependency::getNodeUsingService(string &serviceName) {
    vector<Node *> res;
    for (int i = 0; i < list.size(); i++) {
        Node *tmp = list[i];
        vector<string> serviceList = tmp->getOutgoingServices();
        for (int j = 0; j < serviceList.size(); j++) {
            if (serviceList[j].compare(serviceName) == 0) {
                res.push_back(tmp);
                break;
            } 
        }
    }
    return res;
}

Node *
Dependency::getNodeProvidingService(string &serviceName) {
    Node *res = NULL;
    map<string, Node*>::iterator it;
    it = serviceInfo.find(serviceName);
    if (it != serviceInfo.end()) {
        res = it->second;
    }
    return res;
}

vector<Node *>
Dependency::getNodeSubscribingTopic(string &topicName) {
    vector<Node *> res;
    for (int i = 0; i < list.size(); i++) {
        Node *tmp = list[i];
        vector<string> topicList = tmp->getOutgoingTopics();
        for (int j = 0; j < topicList.size(); j++) {
            if (topicList[j].compare(topicName) == 0) {
                res.push_back(tmp);
                break;
            }
        }
    }
    return res;
}

Node *
Dependency::getNodePublishingTopic(string &topicName) {
    Node *res = NULL;
    map<string, Node*>::iterator it;
    it = topicInfo.find(topicName);
    if (it != topicInfo.end()) {
        res = it->second;
    }
    return res;
}

// add node to the dependency
void 
Dependency::addNode(Node *_node) {
    this->list.push_back(_node);
}

void 
Dependency::removeNode(Node *_node) {
   vector<Node*>::iterator pos = find(list.begin(), list.end(), _node);
   if (pos != list.end()) {
       list.erase(pos);
   }
}

void 
Dependency::removeNode(string nodeName) {
    Node *node = getNodeWithName(nodeName);
    if (node != NULL) {
        removeNode(node);
    }
}


// add node and topic to dependency
void 
Dependency::addOutgoingServices(string &nodeName, string &serviceName) {
    // the node doesn't exist, then only add the dependency
    Node *node;
    if ((node=getNodeWithName(nodeName)) == NULL) {
        node = new Node(nodeName);
        list.push_back(node);
    }

    // fill outgoingServices
    node->addOutgoingServices(serviceName);
}

void 
Dependency::addIncomingServices(string &nodeName, string &serviceName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        node = new Node(nodeName);
        list.push_back(node);
    }

    // fill serviceInfo and incomingServices
    serviceInfo[serviceName] = node;
    node->addIncomingServices(serviceName);
}

void 
Dependency::addOutgoingTopics(string &nodeName, string &topicName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        node = new Node(nodeName);
        list.push_back(node);
    }

    // fill outgoingTopics
    node->addOutgoingTopics(topicName);
}

void
Dependency::addIncomingTopics(string &nodeName, string &topicName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        node = new Node(nodeName);
        list.push_back(node);
    }
    
    //fill topicInfo and incomingTopics
    topicInfo[topicName] = node;
    node->addIncomingTopics(topicName);
}

void 
Dependency::eraseOutgoingServices(string &nodeName, string &serviceName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        ROS_ERROR("Invalid node name specified: %s", nodeName.c_str());
        return;
    }
    node->eraseOutgoingServices(serviceName);
    eraseOrphanNode(node);
}

void 
Dependency::eraseIncomingServices(string &nodeName, string &serviceName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        ROS_ERROR("Invalid node name specified: %s", nodeName.c_str());
        return;
    }
    node->eraseIncomingServices(serviceName);
    eraseOrphanNode(node);
}

void 
Dependency::eraseOutgoingTopics(string &nodeName, string &topicName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        ROS_ERROR("Invalid node name specified: %s", nodeName.c_str());
        return;
    }
    node->eraseOutgoingTopics(topicName);
    eraseOrphanNode(node);
}

void 
Dependency::eraseIncomingTopics(string &nodeName, string &topicName) {
    Node *node;
    if ((node = getNodeWithName(nodeName)) == NULL) {
        ROS_ERROR("Invalid node name specified: %s", nodeName.c_str());
        return;
    }
    node->eraseIncomingTopics(topicName);
    eraseOrphanNode(node);
}

void
Dependency::eraseAllDependency() {
    list.clear();
}

vector<string>
Dependency::getReconNodeList() {
    ENTER();
    // root node means those without any incoming services
    vector<Node *> rootList; 
    vector<string> orderedList; //return vector

    resetVisited();
    getRootNodeList(rootList);
    /**
     * in case that the rootList is empty, it means all those nodes are actually in cyclic dependencies
     * then, we can just return the list we have
     */
    if (rootList.empty()) {
        return getAllNodes();
    } 

    /**
     * in case the rootList is not empty, it means we find some root nodes, then we need to do 
     * a BFS traverse for all those nodes, since BFS have the property that node has a smaller distance 
     * to the root will be accessed. (if there're multiple root, we can consider there's a dummy root
     * that can access all those root nodes)
     */
    queue<Node*> queue;
    Node *node;
    for (int i = 0; i < rootList.size(); i++) {
        node = rootList[i];
        node->setVisited(true);
        queue.push(node);
    }

    //DBG("rootList size: %ld", rootList.size());
    //for (int i = 0; i < rootList.size(); i++) {
    //    DBG("root: %s", rootList[i]->getName().c_str());
    //}

    while (!queue.empty()) {
        node = queue.front();
        orderedList.push_back(node->getName());
        queue.pop();

        /**
         * get all outgoingServices of the dequeued node
         * if the node that service provides has not been visited, then mark it as visited
         * and enqueue it
         */
        DBG("current node: %s", node->getName().c_str());
        vector<string> &outgoingServices = node->getOutgoingServices();
        int size = outgoingServices.size();
        for (int i = 0; i < size; i++) {
            string service = outgoingServices[i];
            Node *tmp = getNodeProvidingService(service);
            if (tmp != NULL && !tmp->getVisited()) {
                tmp->setVisited(true);
                queue.push(tmp);
            }
        }
    }
    /**
     * FIXME after processing based on service, then do it on topic dependencies
     * currently, only add all unvisited nodes at the end of the list
     */
    for (int i = 0; i < list.size(); i++) {
        if (list[i]->getVisited()) continue;
        orderedList.push_back(list[i]->getName());
    }

    LEAVE();
    return orderedList;
}

vector<string> 
Dependency::getReconNodeList(string &nodeName) {
    vector<string> orderedList; //return vector
    
    Node *root = getNodeWithName(nodeName);
    if (!root) {
        ROS_ERROR("Invalid node name specified");
        return orderedList;
    }
    resetVisited();
    /**
     * The algorithm for this part can be divided into two parts:
     * 1. for service dependency: use BFS to traserse all the imcoming nodes of the node specified until reach a root(source) node and then reverse the accessing order, so we can obtain all the paths from source to this node
     * 2. for topic dependency: use BFS starting from this node and traverse all the outgoing nodes and get all the paths
     */
    // part 1. BFS and reverse for all nodes that have service dependency related to root
    queue<Node*> queue;
    Node *node;
    root->setVisited(true);
    queue.push(root);
    
    while (!queue.empty()) {
       node = queue.front();
       orderedList.push_back(node->getName());
       DBG("orderedList push:%s", node->getName().c_str());
       queue.pop();

       vector<string> &incomingServices = node->getIncomingServices();
       int size = incomingServices.size();
       for (int i = 0; i < size; i++) {
           string service = incomingServices[i];
           vector<Node *> tmpList = getNodeUsingService(service);
           for (int j = 0; j < tmpList.size(); j++) {
               Node *tmp = tmpList[j];
               if (tmp != NULL && !tmp->getVisited()) {
                   tmp->setVisited(true);
                   queue.push(tmp);
               }
           }
       }
    }
    reverse(orderedList.begin(), orderedList.end());
    DBG("orderedList size:%ld", orderedList.size());

    // part 2. BFS and reverse for all unvisited nodes that have service dependency related to root
    queue.push(root);
    while (!queue.empty()) {
        node = queue.front();
        if (node != root) {
            orderedList.push_back(node->getName());
        }
        queue.pop();
        vector<string> &incomingTopics = node->getIncomingTopics();
        int size = incomingTopics.size();
        for (int i = 0; i < size; i++) {
            string topic = incomingTopics[i];
            vector<Node *> tmpList = getNodeSubscribingTopic(topic);
            for (int j = 0; j < tmpList.size(); j++) {
                Node *tmp = tmpList[j];
                if (tmp != NULL && !tmp->getVisited()) {
                    tmp->setVisited(true);
                    queue.push(tmp);
                }
            }
        }
    }
    DBG("orderedList size:%ld", orderedList.size());
    return orderedList;
}

/**
 * private methods 
 */
void 
Dependency::eraseOrphanNode(Node *node) {
    // remove orphan node from list
    if (node != NULL &&
            node->getOutgoingServicesSize() == 0 && 
            node->getIncomingServicesSize() == 0 && 
            node->getOutgoingTopicsSize() == 0 &&
            node->getIncomingTopicsSize() == 0) {
        removeNode(node);
    }
}

vector<string> 
Dependency::getAllNodes() {
    vector<string> nodeList; 
    for (int i = 0; i < list.size(); i++) {
        nodeList.push_back(list[i]->getName());
    }
    return nodeList;;
}

void 
Dependency::resetVisited() {
    for (int i = 0; i < list.size(); i++) {
        list[i]->setVisited(false);
    }
    return;
}

void
Dependency::getRootNodeList(vector<Node*> &rootList) {
    ENTER();
    for (int i = 0; i < list.size(); i++) {
        // currently, only consider no incoming service as root
        Node *node = list[i];
        if (node->getIncomingServicesSize() == 0) {
            rootList.push_back(node); 
        }
    }
    LEAVE();
}
