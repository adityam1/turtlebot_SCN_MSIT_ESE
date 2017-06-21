#ifndef __DEPENDENCY_H__
#define __DEPENDENCY_H__

#include <vector>
#include <string>

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

class NodeList {
    private:
        // the dependency list that is maintained by the framework
        std::vector<NodeInfo*> list;
        // TODO - add a lock to protect the data access

    public:
        NodeList();
        ~NodeList();
        void addNode(NodeInfo *_node);
        void addNode(std::vector<NodeInfo*> &_nodes);
};

#endif //__DEPENDENCY_H__
