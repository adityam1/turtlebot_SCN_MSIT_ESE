#ifndef __DEPENDENCY_H__
#define __DEPENDENCY_H__

#include <vector>
#include <string>

class DependencyNode {
    private:
        // node name
        std::string name;
        // list of dependencies for this node
        std::vector<std::string> dependencies;

    public:
        DependencyNode(char const *_name);
        DependencyNode(char const *_name, std::vector<std::string> &_dependencies);
        ~DependencyNode();
        std::string getName(void);
        void addDependencies(std::string &_dependency);
        std::vector<std::string> &getDependencies(void);
        void addDependencies(std::vector<std::string> &_dependencies);
};

class DependencyTree {
    private:
        // the dependency tree that's maintained by the framework
        std::vector<DependencyNode*> tree;
        // TODO - add a lock to protect the data access

    public:
        DependencyTree();
        ~DependencyTree();
        void addDependencyNode(DependencyNode *_node);
        void addDependencyNode(std::vector<DependencyNode*> &_nodes);
        bool isValidDependencyNode(std::string _node);
};

#endif //__DEPENDENCY_H__
