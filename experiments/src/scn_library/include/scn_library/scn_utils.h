#ifndef __SCN_UTILS_H__
#define __SCN_UTILS_H__

#include <stdio.h>

//request type
#define REGISTER        (0)
#define UNREGISTER      (1)

//dependecy type
#define TOPIC           (2)
#define SERVICE         (3)
#define ACTION          (4)

//direction type
#define SERVER          (5)
#define CLIENT          (6)

#define PUBLISH         (7)
#define SUBSCRIBE       (8)
#define ALL             (9)

#define SCN_UNSPECIFIED (10)

//response type
#define SCN_OK          (0)
#define SCN_ERROR       (1)

#define SCN_AUTH        (0x90)

//State of a node
#define SCN_NORMAL_MODE (0)
#define SCN_RECON_MODE  (1)

//SCN command type
#define SCN_ENTER_RECON (10)
#define SCN_EXIT_RECON  (11)
#define SCN_KILL        (12)

#if 0
//SCN reconType type
#define SCN_PARAMETER_RECON    (13)
#define SCN_INTER_RECON        (14)
#define SCN_NODE_RECON         (15)
#endif

// query framework info type
#define SCN_QUERY_NODE         (0)
#define SCN_QUERY_DEPENDENCY   (1)

#define SCN_COMM_WAIT_TIME      (5)

#define SCN_COMM    "Comm"
#define SCN_SERVICE "Service"
#define SCN_TOPIC   "Topic"

typedef enum {
    SCN_PARAMETER_RECON,
    SCN_INTER_RECON,
    SCN_NODE_RECON
} RECONTYPE_T;

typedef enum {
    BOOL_VAL,
    STRING_VAL,
    INT_VAL,
    DOUBLE_VAL
}PARAMTYPE_T;

typedef enum {
    SCN_ST_OK = 0,
    SCN_ST_ERROR,
    SCN_LAUNCH_FAIL,
    SCN_ENTER_RECON_FAIL,
    SCN_EXIT_RECON_FAIL,
    SCN_ROLLBACK_FAIL,
    SCN_TYPE_NOT_SUPPORTED
}STATUS_T;

typedef enum {
    LOG_ERR,
    LOG_MSG,
    LOG_INFO,
    LOG_DBG,
} LOG_T;

#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define RESET "\x1B[0m"

#define log_printf(log, fmt, ...) \
    do {    \
        if (log <= log_level) {   \
            printf(fmt, ##__VA_ARGS__); \
        }   \
    } while (0)

#define log_printf_red(log, fmt, ...) \
    do {    \
        if (log <= log_level) {   \
            printf("\x1B[31m" fmt, ##__VA_ARGS__ "\x1B[0m"); \
        }   \
    } while (0)


#define log_prinf_verbose(log, fmt, ...)    \
    do {    \
        if (log <= log_level) { \
            printf("[%s:%d] " fmt "\n", __func__, __LINE__, ##__VA_ARGS__); \
        }   \
    } while (0)

#define ERR(fmt, ...) \
    log_prinf_verbose(LOG_ERR, fmt, ##__VA_ARGS__)

#define DBG(fmt, ...)  \
    log_prinf_verbose(LOG_DBG, fmt, ##__VA_ARGS__)

#define INFO(fmt, ...)  \
    log_printf(LOG_INFO, fmt, ##__VA_ARGS__)

#define INFO_RED(fmt, ...) \
    log_printf_red(LOG_INFO, fmt, ##__VA_ARGS__)

#define ENTER() \
    DBG("enter")

#define LEAVE() \
    DBG("leave")

#endif
