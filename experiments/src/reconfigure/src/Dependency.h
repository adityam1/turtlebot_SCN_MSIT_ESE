#ifndef __DEPENDENCY_H__
#define __DEPENDENCY_H__

#include <vector>
#include <string>
#include <map>

class Dependency {
    private:
        /**
         * NodeService map that stores the services the node provides
         * key - node name
         * values - services it provides
         */
        std::map<std::string, std::vector<std::string> > NodeServices;
        /**
         * NodeTopics map that stores the topics the node publishes
         * key - node name
         * values - topics it publishes
         */
        std::map<std::string, std::vector<std::string> > NodeTopics;
        /**
         * ServicesInfo map that stores the nodes that use certain service
         * key - service name
         * values - nodes used the service
         */
        std::map<std::string, std::vector<std::string> > ServicesInfo;
        /**
         * TopicsInfo map that stores the nodes that subscribe certain topic
         * key - topic name
         * values - nodes subscribed to the topic
         */
        std::map<std::string, std::vector<std::string> > TopicsInfo;

        bool isValidNodeForService(const std::string &nodeName);
        bool isValidNodeForTopic(const std::string &nodeName);
        bool isValidServiceForNode(const std::string &serviceName);
        bool isValidTopicForNode(const std::string &topicName);

    public:
        Dependency();
        ~Dependency();

        // register dependency
        void addToNodeServices(const std::string &nodeName, const std::string &serviceName);
        void addToNodeTopics(const std::string &nodeName, const std::string &topicName);
        void addToServicesInfo(const std::string &serviceName, const std::string &nodeName);
        void addToTopicsInfo(const std::string &topicName, const std::string &nodeName);

        // getters
        std::vector<std::string> &getNodeServiceList(const std::string &nodeName);
        std::vector<std::string> &getServiceNodeList(const std::string &serviceName);
        std::vector<std::string> &getNodeTopicList(const std::string &nodeName);
        std::vector<std::string> &getTopicNodeList(const std::string &topicName);

        // traverse dependency
        void traverseNodeServices();
        void traverseNodeTopics();
        void traverseServicesInfo();
        void traverseTopicsInfo();
};

class NodeInfo {
    private:
        // node name
        std::string name;
        // list of services provided by this node
        std::vector<std::string> servicesProvided;
        //list of topics published to by this node
        std::vector<std::string> topicsPublished;

    public:
        NodeInfo(char const *_name);
        NodeInfo(char const *_name, std::vector<std::string> &_servicesProvided, std::vector<std::string> &_topicsPublished);
        ~NodeInfo();
        std::string getName(void);
        std::vector<std::string> &getServicesProvided(void);
        std::vector<std::string> &getSTopicsPublished(void);
        void addServicesProvided(std::string &_servicesProvided);
        void addTopicsPublished(std::string &_topicsPublished);
        void addServicesProvided(std::vector<std::string> &_servicesProvided);
        void addTopicsPublished(std::vector<std::string> &_topicsPublished);
};

#endif //__DEPENDENCY_H__
