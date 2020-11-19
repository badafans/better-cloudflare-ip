/*
 * fping: fast-ping, file-ping, favorite-ping, funky-ping
 *
 *   Ping a list of target hosts in a round robin fashion.
 *   A better ping overall.
 *
 * fping website:  http://www.fping.org
 *
 * Current maintainer of fping: David Schweikert
 * Please send suggestions and patches to: david@schweikert.ch
 *
 *
 * Original author:  Roland Schemers  <schemers@stanford.edu>
 * IPv6 Support:     Jeroen Massar    <jeroen@unfix.org / jeroen@ipng.nl>
 * Improved main loop: David Schweikert <david@schweikert.ch>
 * Debian Merge, TOS settings: Tobi Oetiker <tobi@oetiker.ch>
 * Bugfixes, byte order & senseful seq.-numbers: Stephan Fuhrmann (stephan.fuhrmann AT 1und1.de)
 *
 *
 * Redistribution and use in source and binary forms are permitted
 * provided that the above copyright notice and this paragraph are
 * duplicated in all such forms and that any documentation,
 * advertising materials, and other materials related to such
 * distribution and use acknowledge that the software was developed
 * by Stanford University.  The name of the University may not be used
 * to endorse or promote products derived from this software without
 * specific prior written permission.
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
 * WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 * seqmap.c: implementation of a mapping between sequence number and (host, ping_nr)
 *           we can't just use ping_nr*host_count + host_nr, because it can
 *           overflow the 16 bit of the icmp header field. See also:
 *           https://github.com/schweikert/fping/issues/48
 */

#include "seqmap.h"
#include "limits.h"
#include "options.h"

#include <stdio.h>
#include <stdlib.h>

/* description of the data structure used:
 *
 * - we assume that no more than SEQMAP_MAXSEQ (65535) pings are sent in
 *   the timeout interval (SEQMAP_TIMEOUT_IN_S)
 * - we store the values in an array with SEQMAP_MAXSEQ elements
 * - current sequence number % SEQMAP_MAXSEQ gives the current index
 * - when entering a value, we check that the current entry is expired
 */

static SEQMAP_VALUE* seqmap_map = NULL;
static unsigned int seqmap_next_id = 0;

#define SEQMAP_TIMEOUT_IN_S 10
#define SEQMAP_UNASSIGNED_HOST_NR UINT_MAX

void seqmap_init()
{
    seqmap_map = calloc(SEQMAP_MAXSEQ, sizeof(SEQMAP_VALUE));
    if (seqmap_map == NULL) {
        perror("malloc error (can't allocate seqmap_map)");
    }
}

unsigned int seqmap_add(unsigned int host_nr, unsigned int ping_count, struct timeval* now)
{
    unsigned int current_id;
    SEQMAP_VALUE* next_value;

    if (!seqmap_map) {
        fprintf(stderr, "fping internal error: seqmap not initialized.\n");
        exit(4);
    }

    /* check if expired (note that unused seqmap values will have fields set to
     * 0, so will be seen as expired */
    next_value = &seqmap_map[seqmap_next_id];
    if (next_value->ping_ts.tv_sec != 0 && (now->tv_sec - next_value->ping_ts.tv_sec) < SEQMAP_TIMEOUT_IN_S) {
        fprintf(stderr, "fping error: not enough sequence numbers available! (expire_timeout=%d, host_nr=%d, ping_count=%d, seqmap_next_id=%d)\n",
            SEQMAP_TIMEOUT_IN_S, host_nr, ping_count, seqmap_next_id);
        exit(4);
    }

    /* store the value */
    next_value->host_nr = host_nr;
    next_value->ping_count = ping_count;
    next_value->ping_ts.tv_sec = now->tv_sec;
    next_value->ping_ts.tv_usec = now->tv_usec;

    /* increase next id */
    current_id = seqmap_next_id;
    seqmap_next_id = (seqmap_next_id + 1) % SEQMAP_MAXSEQ;

    return current_id;
}

SEQMAP_VALUE* seqmap_fetch(unsigned int id, struct timeval* now)
{
    SEQMAP_VALUE* value;

    if (id > SEQMAP_MAXSEQ) {
        return NULL;
    }

    value = &seqmap_map[id];

    /* verify that value is not expired */
    if (now->tv_sec - value->ping_ts.tv_sec >= SEQMAP_TIMEOUT_IN_S) {
        return NULL;
    }

    return value;
}
