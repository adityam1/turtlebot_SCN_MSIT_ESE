#ifndef __SCN_CORE_H
#define __SCN_CORE_H

#include <scn_library/scn_utils.h>

namespace ros {

    typedef void (*saveStateRoutine)(void);
    typedef void (*reconModeRoutine)(void);
    /* SCN core global variables and structs */
    typedef struct {

        std::string &name;                  //Node name
        saveStateRoutine saveStateCb;       //Callback to save state of the node
        reconModeRoutine reconModeCb;       //Callback to be called when entering recon mode
        ros::NodeHandle *scnNodeHandle;     //Node handle to communicate with SCN
        uint8_t nodeReconState;             //State of the node (noremal/recon)
        bool initStatus;                    //Specifies if node init has been called
        ros::ServiceServer enterService;
        ros::ServiceServer exitService;
        ros::ServiceServer killService;
    }scnNodeInfo_t;

    void scnInit(int & argc, 
            char **argv, 
            const std::string & name, 
            uint32_t options,
            saveStateRoutine saveStateCb,
            reconModeRoutine reconModeCb
            );

    uint8_t scnGetNodeState();
    ros::NodeHandle* scnGetCommNh();
}

#endif
