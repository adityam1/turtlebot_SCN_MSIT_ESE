#include <signal.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <getopt.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <python2.7/Python.h>

#include <scn_library/systemControlRegisterService.h>
#include <reconfigure/userInterfaceService.h>
#include <reconfigure/demoNodeService.h>
#include <iostream>
#include <vector>

#include <scn_library/scn_utils.h>
#include "log.h"
#include "Dependency.h"

/**
 * global definitions
 */
NodeList nodeList;
typedef std::map<std::string, std::vector<std::string> > my_map;
extern char **environ;

/**
 * declaration
 */
void systemControlSigintHandler(int sig);
int launchNode(char* name);
int killNode(char* name);

/**
 * APIs
 */

class ScnCore {
    private:
        // key - node name, values - services it provides
        std::map<std::string, std::vector<std::string> > NodeServices;

        // key - node name, values - topics it publishes
        std::map<std::string, std::vector<std::string> > NodeTopics;

        // key - service name, values - nodes used the service
        std::map<std::string, std::vector<std::string> > ServicesInfo;

        // key - topic name, values - nodes subscribed to the topic
        std::map<std::string, std::vector<std::string> > TopicsInfo;

        bool registerService(
                scn_library::systemControlRegisterService::Request &req, 
                scn_library::systemControlRegisterService::Response &res); 

        bool registerTopic(
                scn_library::systemControlRegisterService::Request &req, 
                scn_library::systemControlRegisterService::Response &res); 

        bool unRegisterService(
                scn_library::systemControlRegisterService::Request &req, 
                scn_library::systemControlRegisterService::Response &res); 

        bool unRegisterTopic(
                scn_library::systemControlRegisterService::Request &req, 
                scn_library::systemControlRegisterService::Response &res); 

        bool unRegisterAll(
                scn_library::systemControlRegisterService::Request &req, 
                scn_library::systemControlRegisterService::Response &res); 
    public:
        ScnCore(ros::NodeHandle &n);
        bool scnCoreCb(scn_library::systemControlRegisterService::Request &req,
                scn_library::systemControlRegisterService::Response &res); 

        bool userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req,
                reconfigure::userInterfaceService::Response &res);

};

ScnCore::ScnCore(ros::NodeHandle &n) {
    ros::ServiceServer registerService = n.advertiseService("systemControlRegisterService", &ScnCore::scnCoreCb, this);
    ros::ServiceServer userInterfaceService = n.advertiseService("userInterfaceService", &ScnCore::userInterfaceServiceCallback, this);
}

/*------------------------------------------------------------------
 * #FIXME
 * Write for actions
 *-----------------------------------------------------------------*/


/*------------------------------------------------------------------
 * registerService
 * Registers the service with the SCN i.e. records the dependency 
 * for a service for the respective node.
 *
 * #FIXME: Need a check?
 * It is expected that a service client can only be registered after
 * the server has registered the service.
 *-----------------------------------------------------------------*/
bool ScnCore::registerService(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    uint8_t direction = req.direction;
    std::string node_name = req.nodeName;
    
    /* #FIXME: Callback service is not needed as the name of 
     * the service provided by the respective node (for the SCN to
     * communicate with it) will be the same as the name of the node
     * This use the name of the node for the service call at time of 
     * reconfiguration communication.
     */

    std::string service_name = req.depName;

    /* Take locks on the NodeServices map #FIXME */

    /* Check direction of service being registered */
    if(SERVER == direction) {
        /* Check if entry for node already exists */
        if(this->NodeServices.find(node_name) == this->NodeServices.end()) {
            /* Insert node to the map */
            this->NodeServices.insert(std::pair<std::string, std::vector<std::string> > \
                    (node_name, std::vector<std::string>()));
        }

        /* Update nodes service vector */
        this->NodeServices[node_name].push_back(service_name); 

    } else if(CLIENT == direction) {
        /* Check if entry for this service already exists */
        if(ServicesInfo.find(service_name) == ServicesInfo.end()) {
            /* Insert service to the map */
            ServicesInfo.insert(std::pair<std::string, std::vector<std::string> > \
                    (service_name, std::vector<std::string>()));
        }

        /* Update the list of nodes for this service */
        ServicesInfo[service_name].push_back(node_name);
    }
    return true;
}

/*------------------------------------------------------------------
 * registerTopic
 * Registers the topic with the SCN i.e. records the dependency 
 * for a topic for the respective node.
 *
 *-----------------------------------------------------------------*/

bool ScnCore::registerTopic(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    uint8_t direction = req.direction;
    std::string node_name = req.nodeName;
    std::string topic_name = req.depName;

    /* Take locks on the NodeTopics map #FIXME */

    /* Check direction of service being registered */
    if(PUBLISH == direction) {
        /* Check if entry for node already exists */
        if(NodeTopics.find(node_name) == NodeTopics.end()) {
            /* Insert node to the map */
            NodeTopics.insert(std::pair<std::string, std::vector<std::string> > \
                    (node_name, std::vector<std::string>()));
        }

        /* Update nodes topic vector */
        NodeTopics[node_name].push_back(topic_name); 

    } else if(SUBSCRIBE == direction) {
        /* Check if entry for this topic already exists */
        if(TopicsInfo.find(topic_name) == TopicsInfo.end()) {
            /* Insert topic to the map */
            TopicsInfo.insert(std::pair<std::string, std::vector<std::string> > \
                    (topic_name, std::vector<std::string>()));
        }

        /* Update the list of nodes for this service */
        TopicsInfo[topic_name].push_back(node_name);
    }
    return true;
}



/*------------------------------------------------------------------
 * #FIXME
 * Write for actions
 *-----------------------------------------------------------------*/


/*------------------------------------------------------------------
 * unregisterService
 * Registers the service with the SCN i.e. records the dependency 
 * for a service for the respective node.
 *
 * #FIXME: Need a check?
 * It is expected that a service client can only be registered after
 * the server has registered the service.
 *-----------------------------------------------------------------*/
bool ScnCore::unRegisterService(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    uint8_t direction = req.direction;
    std::string node_name = req.nodeName;

    return true;
}

/*------------------------------------------------------------------
 * unRegisterTopic
 * Registers the topic with the SCN i.e. records the dependency 
 * for a topic for the respective node.
 *
 *-----------------------------------------------------------------*/

bool ScnCore::unRegisterTopic(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    uint8_t direction = req.direction;
    std::string node_name = req.nodeName;
    std::string topic_name = req.depName;

    return true;
}

/*------------------------------------------------------------------
 * unRegisterAll
 * Registers the topic with the SCN i.e. records the dependency 
 * for a topic for the respective node.
 *
 *-----------------------------------------------------------------*/

bool ScnCore::unRegisterAll(
        scn_library::systemControlRegisterService::Request &req, 
        scn_library::systemControlRegisterService::Response &res) 
{
    uint8_t direction = req.direction;
    std::string node_name = req.nodeName;
    std::string topic_name = req.depName;

    return true;
}

/*------------------------------------------------------------------
 * scnCoreCb
 * Request Format
 *  node_name - Name of the node for which the dep is being 
 *              registered
 *  dependency  - Type of the dependency (Service/Topic/Action)
 *  direction   - Direction of the dependency (Server/Client, PUB/SUB,
 *                                              Act/provide)
 *
 *  Response Format 
 *  result - OK/ERROR
 *  #FIXME - add more error codes
 *
 *-----------------------------------------------------------------*/
bool ScnCore::scnCoreCb(scn_library::systemControlRegisterService::Request &req,
                 scn_library::systemControlRegisterService::Response &res) 
{
    bool status = false;
    uint8_t request = req.requestType;
    /* Check the type of registration */
    uint8_t reg_dep_type = req.dependency;

    if(REGISTER == request)
    {
        switch(reg_dep_type) 
        {
            case SERVICE:
                status = registerService(req, res);
                break;
                //case ACTION:
                //    status = register_action(req, res);
                //    break;
            case TOPIC:
                status = registerTopic(req, res);
                break;
            default: 
                ROS_ERROR("SCN: Unknown dependency type\n");
                status = SCN_ERROR;
                break;
        }
        return status;
    }
    else if(UNREGISTER == request)
    {
        switch(reg_dep_type)
        {
            case SERVICE:
                status = unRegisterService(req, res);
                break;
                //case ACTION:
                //    status = unregister_action(req, res);
                //    break;
            case TOPIC:
                status = unRegisterTopic(req, res);
                break;
            case ALL:
                status = unRegisterAll(req, res);
            default: 
                ROS_ERROR("SCN: Unknown dependency type\n");
                status = SCN_ERROR;
                break;
        }
    }
}

/**
 * Request format
 * string old_node - the name of the old node
 * string new_node - the name of the new node
 * Response format
 * uint8 result - the result of the service call
 */
bool ScnCore::userInterfaceServiceCallback(reconfigure::userInterfaceService::Request &req, 
                                   reconfigure::userInterfaceService::Response &res) 
{
    std::string old_node = req.old_node;
    std::string new_node = req.new_node;

    ROS_INFO("request old_node: %s", old_node.c_str());
    ROS_INFO("request new_node: %s", new_node.c_str());

    for (my_map::iterator it = this->NodeServices.begin(); it != this->NodeServices.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("node name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("service provided by this node: %s\n", value[i].c_str());
        }
    }
    for (my_map::iterator it = ServicesInfo.begin(); it != ServicesInfo.end(); it++) {
        std::string const &key = it->first;
        std::vector<std::string> &value = it->second;
        ROS_INFO("service name: %s\n", key.c_str());
        for (int i = 0; i < value.size(); i++) {
            ROS_INFO("node used this service: %s\n", value[i].c_str());
        }
    }

    // based on the dependencies of the old and new noderithms, invoke service call for corresponding nodes and do the reconfigurations
    if (this->NodeServices.find(old_node) == this->NodeServices.end()) {
        ROS_ERROR("Invalid old node specified");
        return false;
    }

    // tell all nodes affected by this reconfiguration into safe mode
    std::vector<std::string> &oldNodeServiceList = this->NodeServices[old_node];
    for (int i = 0; i < oldNodeServiceList.size(); i++) {
        std::string service = oldNodeServiceList[i];
        // if this serivice is not used by any nodes, no need to put the node to safe mode
        if (ServicesInfo.find(service) == ServicesInfo.end()) {
            continue;
        }
        std::vector<std::string> &nodeList = ServicesInfo[service];
        for (int j = 0; j < nodeList.size(); j++) {
            ros::NodeHandle n;
            std::string serviceName = nodeList[j] + "Service";
            ROS_INFO("node name: %s, reconfigure service name: %s\n", nodeList[j].c_str(), serviceName.c_str());
            ros::ServiceClient client = n.serviceClient<reconfigure::demoNodeService>(serviceName);
            reconfigure::demoNodeService srv;
            srv.request.callback_service = serviceName;
            if (client.call(srv)) {
                std::string res = srv.response.result == 0 ? "OK" : "ERROR";
                ROS_INFO("result: %s\n", res.c_str());
            } else {
                ROS_ERROR("Failed to call demoNodeService");
                return -1;
            }
        }
        // after put all the dependent nodes into safe mode, also put this node into safe mode
        ros::NodeHandle n;
        std::string serviceName = old_node + "Service";
        ROS_INFO("node name: %s, reconfigure service name: %s\n", old_node.c_str(), serviceName.c_str());
        ros::ServiceClient client = n.serviceClient<reconfigure::demoNodeService>(serviceName);
        reconfigure::demoNodeService srv;
        srv.request.callback_service = serviceName;
        if (client.call(srv)) {
            std::string res = srv.response.result == 0 ? "OK" : "ERROR";
            ROS_INFO("result: %s\n", res.c_str());
        } else {
            ROS_ERROR("Failed to call demoNodeService");
            return -1;
        }
    }
    // TODO add topics reconfigure

    // kill the dependecies of old node and launch the dependency of new node
    launchNode((char *)"python /home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/with_launch_file.py");
    res.result = 0;
    return true;
}

int main(int argc, char **argv) 
{
    ros::init(argc, argv, "systemControlNode", ros::init_options::NoSigintHandler);
    //ros::init(argc, argv, "systemControlNode");
    ros::NodeHandle n;

    ScnCore coreObject(n);


    // override the default ros sigint handler
    signal(SIGINT, systemControlSigintHandler);

    ros::spin();
    return 0;
}

void systemControlSigintHandler(int sig) {
    // TODO
    // do some custom action
    // For example, publish a stop message to some other nodes.
    
    // default sigint handler: call shutdown()
    ros::shutdown();
}

int launchNode(char *name) {
#if 0
    ROS_INFO("enter %s\n", __func__);
    pid_t pid = fork();
    int error = 0;
    char *argv_node[1] = {0};

    if (pid == 0) {
        //Py_SetProgramName(argv[0]);  /* optional but recommended */
        Py_Initialize();
        PyRun_SimpleString("from time import time,ctime\n"
                "print 'Today is',ctime(time())\n");
        const char *cmd = name.c_str();
        FILE* PythonScriptFile = fopen(cmd, "r");
        if(PythonScriptFile) {
            PyRun_SimpleFile(PythonScriptFile, cmd);
            //fclose(PythonScriptFile);
        }

        Py_Finalize();
    }

    ROS_INFO("leave %s\n", __func__);
    return error;
#endif
    std::cout << "In Launch function " <<std::endl;

    pid_t pid;
    if(0 == (pid = fork())) 
    {   
        /*  Child  */
        setpgid(0,0);           /*  Assigning child its own group ID  */
        
        /* Redirect I/O */
#if 0
        io_redirect(&stdin_rep, &stdout_rep, &tok);
        dup2(stdin_rep, STDIN_FILENO);
        dup2(stdout_rep, STDOUT_FILENO);
        close_redirect(&stdin_rep, &stdout_rep);
#endif   
        char *argv[3] = {0};
        argv[0] = (char *)"/usr/bin/python";
        argv[1] = (char *)"/home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/with_launch_file.py";
        argv[2] = NULL;

        //std::cout << argv[0] << "\t" << argv[1] <<std::endl;
        /*  Unblock signals and Execute command  */
        int error = execve(argv[0], argv, environ);
        if(error)
        {
            std::cout << "What is the reason: errno = " << errno << std::endl;
        }
    }
}

int killNode(char *name) {
    pid_t pid = fork();
    int32_t error = 0;
    char *argv[4] = {0};
    argv[0] = (char *)"/usr/bin/python";
    argv[1] = (char *)"/home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/kill_node.py";
    argv[2] = name;
    argv[3] = NULL;
       
    if (pid == 0) {
        error = execve(argv[0], argv, environ);
        if(error)
        {   
            ROS_ERROR("Error in killing node %s!\n", name);
        }   
    }
    return error;
}
