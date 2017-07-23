#include <iostream>
#include "reconfigure/Dependency.h"
#include "scn_library/scn_utils.h"

using namespace std;

static int log_level = LOG_DBG;

void printList(vector<string> &list);

int main(int argc, char** argv) {
    /**
     * use case 1 - single source, single sink
     *      1
     *     / \
     *    2   5
     *   /    /
     *  3    6
     *  \   /
     *    4
     */
    Dependency *depency = new Dependency();
    string node, serviceUsing, serviceProviding;

    node = "4";
    serviceProviding = "4_service";
    depency->addIncomingServices(node, serviceProviding);

    node = "3";
    serviceUsing = "4_service";
    depency->addOutgoingServices(node, serviceUsing);
    serviceProviding = "3_service";
    depency->addIncomingServices(node, serviceProviding);

    node = "6";
    serviceUsing = "4_service";
    depency->addOutgoingServices(node, serviceUsing);
    serviceProviding = "6_service";
    depency->addIncomingServices(node, serviceProviding);

    node = "2";
    serviceUsing = "3_service";
    depency->addOutgoingServices(node, serviceUsing);
    serviceProviding = "2_service";
    depency->addIncomingServices(node, serviceProviding);

    node = "5";
    serviceUsing = "6_service";
    depency->addOutgoingServices(node, serviceUsing);
    serviceProviding = "5_service";
    depency->addIncomingServices(node, serviceProviding);

    node = "1";
    serviceUsing = "2_service";
    depency->addOutgoingServices(node, serviceUsing);
    serviceUsing = "5_service";
    depency->addOutgoingServices(node, serviceUsing);

    // reconfigure all nodes
    vector<string> reconfigureOrderedList1 = depency->getReconNodeList();
    cout << "reconfigure ordered list of all nodes is as follows for case 1:" << endl;
    printList(reconfigureOrderedList1);

    // reconfigure only one node: 6
    node = "6";
    vector<string> reconfigureOrderedList2 = depency->getReconNodeList(node);
    cout << "reconfigure ordered list of only one node 6 is as follows for case 1:" << endl;
    printList(reconfigureOrderedList2);

    /**
     * use case 2 - multiple source and one sink
     *      1    7
     *     / \    \
     *    2   5   8 
     *   /    /  /
     *  3    6 - 
     *  \   /
     *    4
     */
    node = "8";
    serviceUsing = "6_service";
    depency->addOutgoingServices(node, serviceUsing);
    serviceProviding = "8_service";
    depency->addIncomingServices(node, serviceProviding);

    node = "7";
    serviceUsing = "8_service";
    depency->addOutgoingServices(node ,serviceUsing);

    //reconfigure all nodes
    vector<string> reconfigureOrderedList3 = depency->getReconNodeList();
    cout << "reconfigure ordered list of all nodes is as follows for case 2:" << endl;
    printList(reconfigureOrderedList3);

    // reconfigure only one node: 6
    node = "6";
    vector<string> reconfigureOrderedList4 = depency->getReconNodeList(node);
    cout << "reconfigure ordered list of only one node 6 is as follows for case 2" << endl;
    printList(reconfigureOrderedList4);

    /**
     * use case 3 - test remove node dependency
     *      1    7                 1  
     *     / \    \               / \
     *    2   5   8              2   5
     *   /    /  /    --->      /    /
     *  3    6 -               3    6 
     *  \   /                   \  /
     *    4                      4
     */

    node = "7";
    serviceUsing = "8_service";
    depency->eraseOutgoingServices(node ,serviceUsing);

    node = "8";
    serviceUsing = "6_service";
    depency->eraseOutgoingServices(node, serviceUsing);
    serviceProviding = "8_service";
    depency->eraseIncomingServices(node, serviceProviding);

    // reconfigure all nodes
    vector<string> reconfigureOrderedList5 = depency->getReconNodeList();
    cout << "reconfigure ordered list of all nodes is as follows for case 3:" << endl;
    printList(reconfigureOrderedList5);

    // reconfigure only one node: 6
    node = "6";
    vector<string> reconfigureOrderedList6 = depency->getReconNodeList(node);
    cout << "reconfigure ordered list of only one node 6 is as follows for case 3:" << endl;
    printList(reconfigureOrderedList6);

    /**
     * use case 4 - single source, single sink with service and topic depency
     * service dependency:        topic dependency:
     *            1                         
     *           / \
     *          2   5                       2
     *         /    /                        \
     *        3    6                          6
     *        \   /                           /
     *          4                           3
     */      
    node = "2";
    string topicSubscribing = "6_topic";
    depency->addOutgoingTopics(node, topicSubscribing);
    node = "6";
    string topicPublishing = "6_topic";
    depency->addIncomingTopics(node, topicPublishing);
    topicSubscribing = "3_topic";
    depency->addOutgoingTopics(node, topicSubscribing);
    node = "3";
    topicPublishing = "3_service";
    depency->addIncomingTopics(node, topicPublishing);

    // reconfigure only one node: 6
    node = "6";
    vector<string> reconfigureOrderedList7 = depency->getReconNodeList(node);
    cout << "reconfigure ordered list of only one node 6 is as follows for case 4:" << endl;
    printList(reconfigureOrderedList7);

    return 0;
}

void printList(vector<string> &list) {
     for (int i = 0; i < list.size(); i++) {
        if (i != 0) {
            cout << "\t";
        }
        cout << list[i];
    }
    cout << endl;
}
