#include "Dependency.h"

/**
 * APIs for DependencyNode
 */
DependencyNode::DependencyNode(const char *_name) {
    this->name = std::string(_name);
}

DependencyNode::DependencyNode(const char *_name, std::vector<std::string> &_dependencies) {
    this->name = std::string(_name);
    this->dependencies = _dependencies;
}

std::string
DependencyNode::getName() {
    return this->name;
}

void
DependencyNode::addDependencies(std::string& _dependency) {
    this->dependencies.push_back(_dependency);
}

void
DependencyNode::addDependencies(std::vector<std::string> &_dependencies) {
    int size = _dependencies.size();
    for (int i = 0; i < size; i++) {
        this->dependencies.push_back(_dependencies[i]);
    }
}

std::vector<std::string> &
DependencyNode::getDependencies(void) {
    return this->dependencies;
}

DependencyNode::~DependencyNode() {

}

/**
 * APIs for DependencyTree
 */
DependencyTree::DependencyTree() {
    
}

DependencyTree::~DependencyTree() {

}

void 
DependencyTree::addDependencyNode(DependencyNode *_node) {
    this->tree.push_back(_node);
}

void
DependencyTree::addDependencyNode(std::vector<DependencyNode*> &_nodes) {
    int size = _nodes.size();

    for (int i = 0; i < size; i++) {
        this->tree.push_back(_nodes[i]);
    }
}

bool 
DependencyTree::isValidDependencyNode(std::string _node) {
    if (_node.empty()) {
        return false;
    }

    for (int i = 0; i < tree.size(); i++) {
        if (_node.compare(tree[i]->getName()) == 0) {
            return true;
        }
    }

    return false;
}
