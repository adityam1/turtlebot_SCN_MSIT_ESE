/*
 * This is file provides the SCN API's that connect the nodes in the 
 * system with the SCN.
 *
 * Author: Aditya Mathur
 * Project: MSIT-ESE - Carnegie Mellon University
 *
 */

#include "scn_lib.h"

/* ----------------------------------------------------------------------------------
 * Function:    scn_init
 * Arguments:   Dep - List of dependencies of the nodes 
 *              Callbacks - set of callbacks 
 *              Name - Name of node
 *
 * The function performs ROS initialization for the respective node
 * On successful initialization, it will communicate the set of dependencies
 * to the SCN and store the callbacks locally.
 * It will create a ROS service that will allow the SCN to communicate with the node
 * The name of the service will be <name-of-node_reconf> 
 *
 * --------------------------------------------------------------------------------*/
uint8_t scn_init(dependency_t dep_struct, callback_t callback_struct, string name, int argc, char **argv)
{
    /* Initialize with ROS */
    ros::init(argc, argv, name);

    /* Create ROS node service */
    name.append("_reconf");
    ros::ServiceServer service = n.advertiseService(name, add);
    ROS_INFO("Service created");


}

