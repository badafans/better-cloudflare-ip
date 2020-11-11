AM_CFLAGS = -Wall -Wextra -Wno-sign-compare

sbin_PROGRAMS = fping

fping_SOURCES = fping.c seqmap.c socket4.c fping.h options.h seqmap.h optparse.c optparse.h
fping_DEPENDENCIES = ../config.h

if IPV6
fping_SOURCES += socket6.c
fping_CFLAGS = $(AM_CFLAGS) -DIPV6
endif
