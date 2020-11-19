
/* 
 *  Interval is the minimum amount of time between sending a ping packet to 
 *  any host.
 * 
 *  Perhost_interval is the minimum amount of time between sending a ping 
 *  packet to a particular responding host (when count is > 1)
 * 
 *  Timeout  is the initial amount of time between sending a ping packet to
 *  a particular non-responding host.
 * 
 *  Retry is the number of ping packets to send to a non-responding host
 *  before giving up (in is-it-alive mode).
 * 
 *  Backoff factor is how much longer to wait on successive retries.
 * 
 * 
 */

/* constants */

#ifndef DEFAULT_INTERVAL
#define DEFAULT_INTERVAL 10        /* default time between packets (msec) */
#endif

#ifndef DEFAULT_PERHOST_INTERVAL      /* default time between packets */
#define DEFAULT_PERHOST_INTERVAL 1000 /* to a particular destination  */
#endif                                /* in counting/looping mode     */

#ifndef DEFAULT_TIMEOUT
#define DEFAULT_TIMEOUT 500       /* individual host timeouts */
#define AUTOTUNE_TIMEOUT_MAX  2000
#endif


#ifndef DEFAULT_RETRY 
#define DEFAULT_RETRY 3            /* number of times to retry a host */
#endif

#ifndef DEFAULT_SELECT_TIME
#define DEFAULT_SELECT_TIME 10     /* default time to wait during select() */
#endif

#ifndef DEFAULT_BACKOFF_FACTOR
#define DEFAULT_BACKOFF_FACTOR 1.5 /* exponential timeout factor */
#endif
#define MIN_BACKOFF_FACTOR     1.0 /* exponential timeout factor */
#define MAX_BACKOFF_FACTOR     5.0 /* exponential timeout factor */

#ifndef DNS_TIMEOUT
#define DNS_TIMEOUT 1000         /* time in micro_sec for dns retry */
#endif
