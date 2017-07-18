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
