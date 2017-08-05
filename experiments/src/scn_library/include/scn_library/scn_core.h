#ifndef __SCN_CORE_H__
#define __SCN_CORE_H__

#include <scn_library/scn_utils.h>
#include "ros/service_server.h"
#include "ros/node_handle.h"

namespace ros {

    typedef void (*saveStateRoutine)(uint8_t reconType);
    typedef STATUS_T (*reconModeRoutine)(uint8_t reconType, uint8_t command);
    typedef void (*loadStateRoutine)();

    /* SCN core global variables and structs */
    typedef struct {

        std::string &name;                  //Node name
        saveStateRoutine saveStateCb;       //Callback to save state of the node
        reconModeRoutine reconModeCb;       //Callback to be called when entering recon mode
        loadStateRoutine loadStateCb;       //Callback to be called if need to load state
        ros::NodeHandle *scnNodeHandle;     //Node handle to communicate with SCN
        uint8_t nodeReconState;             //State of the node (noremal/recon)
        bool initStatus;                    //Specifies if node init has been called
        ros::ServiceServer nodeService;
    } scnNodeInfo_t;

    void scnInit(int & argc, 
            char **argv, 
            const std::string & name, 
            uint32_t options,
            saveStateRoutine saveStateCb,
            reconModeRoutine reconModeCb,
            loadStateRoutine loadStateCb
            );

    uint8_t scnGetNodeState();
    ros::NodeHandle* scnGetCommNh();
    std::string scnGetNodeName();
}

#endif
