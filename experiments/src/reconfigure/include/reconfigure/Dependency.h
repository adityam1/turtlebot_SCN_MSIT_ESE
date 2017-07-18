#ifndef __DEPENDENCY_H__
#define __DEPENDENCY_H__

#include <vector>
#include <string>
#include <map>

using namespace std;
// forwward declaration
class Node;

class Node {
    private:
        // node name
        string name;
        // visited
        bool visited;
        // services called
        vector<string> outgoingServices;
        // services provided
        vector<string> incomingServices;
        // topics subscribed
        vector<string> outgoingTopics;
        // topics published
        vector<string> incomingTopics;

    public:
        Node(const char *_name);
        Node(const string _name); 
        ~Node();
        string getName(void);
        void setName(string _name);
        bool getVisited();
        void setVisited(bool _visited);
        // getters
        vector<string> &getOutgoingServices(void);
        vector<string> &getIncomingServices(void);
        vector<string> &getOutgoingTopics(void);
        vector<string> &getIncomingTopics(void);
        int getOutgoingServicesSize();
        int getIncomingServicesSize();
        int getOutgoingTopicsSize();
        int getIncomingTopicsSize();
        // setters
        void setOutgoingServices(vector<string> &_outgoingServices);
        void setIncomingServices(vector<string> &_incomingServices);
        void setOutgoingTopics(vector<string> &_outgoingTopics);
        void setIncomingTopics(vector<string> &_incomingTopics);
        // adders
        void addOutgoingServices(string &_serviceProvided);
        void addIncomingServices(string  &_servicesUsed);
        void addOutgogingTopics(string &_topicsPublished);
        void addIncomingTopics(string &_topicsSubscribed);
        // erasers
        void eraseOutgoingServices(string &_serviceProvided);
        void eraseIncomingServices(string  &_servicesUsed);
        void earseOutgogingTopics(string &_topicsPublished);
        void eraseIncomingTopics(string &_topicsSubscribed);
        // validators
        bool isValidOutgoingService(const string &service);
        bool isValidIncomingService(const string &service);
        bool isValidOutgoingTopic(const string &topic);
        bool isValidIncomingTopic(const string &topic);
        // traverse dependency
        void traverseOutgoingServices();
        void traverseOutgoingTopics();
        void traverseIncomingServices();
        void traverseIncomingTopics();
};

class Dependency {
    private:
        // a list of all nodes
        vector<Node*> list;
        // key - service name
        // value - pointer to the Node that acts as the service server
        map<string, Node*> serviceInfo;
        // key - topic name
        // value - pointer to the Node that acts as the topic publisher
        map<string, Node*> topicInfo;

        // private methods
        /**
         * reset all the nodes to be visited false
         */
        void resetVisited();
        /**
         * get all nodes with name
         */
        vector<string> getAllNodes();
        /**
         * return the root node list (root node means the one that has no incoming services)
         */
        void getRootNodeList(vector<Node*> &rootList);
        
    public:
        Dependency();
        ~Dependency();
        
        // adders
        void addServiceNode(const string service, Node* _node);
        void addTopicNode(const string topic, Node* _node);
        
        // getters
        /**
         * get the binded Node using nodeName 
         */
        Node *getNodeWithName(string &nodeName);
        /**
         * get the node that uses or provides certain service
         * service provider and topic publisher are unique
         * service users and topic subscriber are not unique
         */
        vector<Node*> getNodeUsingService(string &serviceName);
        Node* getNodeProvidingService(string &serviceName);
        vector<Node*> getNodeSubscribingTopic(string &topicName);
        Node* getNodePublishingTopic(string &topicName);
        
        // add node to the dependency
        void addNode(Node *_node);
        void removeNode(Node *_node);

        /**
         * add dependency for the node specified
         * params:
         *  nodeName: the node specified
         *  serviceName/topicName: the name of topic/service
         */
        void addOutgoingServices(string &nodeName, string &serviceName);
        void addIncomingServices(string &nodeName, string &serviceName);
        void addOutgogingTopics(string &nodeName, string &topicName);
        void addIncomingTopics(string &nodeName, string &topicName);
        /**
         * add dependency according to service/topic
         * used at service client and topic subscribed
         */
        void addIncomingServices(string &serviceName);
        void addIncomingTopics(string &topicName);

        /**
         * return the orderedList of entering into safe mode for all nodes
         * return: vector of node name
         */
        vector<string> getReconNodeList();
        /**
         * return the orderedList of entering into safe mode for a specified node
         * it means that the node specified is the old node name that will be switched
         * param: the nodeName specified to be switched
         * return: vector of node name
         */
        vector<string> getReconNodeList(string &nodeName);

};
#endif //__DEPENDENCY_H__
