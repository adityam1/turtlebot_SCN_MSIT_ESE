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

//response type
#define SCN_OK          (0)
#define SCN_ERROR       (1)

typedef enum {
    LOG_ERR,
    LOG_MSG,
    LOG_INFO,
    LOG_DBG,
} LOG_T;

#define log_printf(log, fmt, ...) \
    do {    \
        if (log <= log_level) {   \
            printf(fmt, ##__VA_ARGS__); \
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

#define ENTER() \
    DBG("enter")

#define LEAVE() \
    DBG("leave")

#endif
