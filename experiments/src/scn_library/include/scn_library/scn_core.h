#ifndef __SCN_CORE_H
#define __SCN_CORE_H

namespace ros {

    typedef void (*saveStateRoutine)(void);
    typedef void (*reconModeRoutine)(void);
    uint8_t scnGetState();
    void scnInit(int & argc, 
            char **argv, 
            const std::string & name, 
            uint32_t options,
            saveStateRoutine saveStateCb,
            reconModeRoutine reconModeCb
            );
}

#endif
