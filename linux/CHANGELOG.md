fping 4.2 (2019-02-19)
======================

## New features

- New option -x / --reachable to check if the number of reachable hosts is >= a certain
  number. Useful for example to implement connectivity-checks (#138, thanks @deepak0004)

## Bugfixes and other changes

- Allow decimal numbers for '-t', '-i', '-p', and '-Q'
- Fix build with --disable-ipv6 (#134, thanks @Polynomial-C)
- Fix hang with '-6', with ipv6 kernel module, but not loaded (#140, thanks @abelbeck)
- Assume '-6' if the binary is named 'fping6' (this is mostly for special
  embedded-distro use cases, and not meant to be used generally in place of
  compiling IPv6-only binary or using '-6', see also the notes in #139, thanks
  abelbeck)
- Get rid of warning "timeout (-t) value larger than period (-p) produces unexpected results"
  (#142, thanks @MrDragon1122)
  

fping 4.1 (2018-09-17)
======================

## Bugfixes and other changes

- Fix problem when socket fd is 0 (#125, thanks Ramón Novoa!)
- Fix running on servers with disabled IPv6 (#118, thanks Simon Matter)
- Allow running "fping -h" or "--help" even when raw socket can't be opened (#131, thanks @teto)
- Fix build issue with FreeBSD and IPv6 (#132, thanks @gsnw)

fping 4.0 (2017-04-23)
======================

## Incompatible Changes

##### fping and fping6 unification

fping and fping6 are now unified into one binary. It means that, for example,
doing 'fping google.com' is going to ping the IPv6 IP of google.com on
IPv6-enabled hosts.  

If you need exact compatibility with old versions, you can configure and
install fping twice: once for ipv4, and once for ipv6:

    ./configure --disable-ipv6; make clean install
    ./configure --disable-ipv4 --program-suffix=6; make clean install

##### Option -n, not the same as -d anymore

Option -n / --name is now doing a reverse-DNS lookups on host addresses,
only if they are given as IP address, but not for hostnames. For example,
if you write 'fping -n google.com', fping would previously do a
forward-DNS lookup on google.com, and then a reverse-DNS lookup on the
resolved IP address. Now, it is just going to keep the name 'google.com'.
That same behavior can be achieved with the option -d / --rdns (which was
previously an alias for -n).

                     fping<4.0              fping>=4.0
    fping -n NAME    NAME->IP->IPNAME       NAME
    fping -d NAME    NAME->IP->IPNAME       NAME->IP->IPNAME

##### Discarding of late packets

fping will now discard replies, if they arrive after the defined timeout
for reply packets, specified with -t. This change is relevant only for the
count and loop modes, where the measured times should be now more
consistent (see github issue [#32][i32] for details).

To prevent loosing reply packets because of this change, the default
timeout in count and loop modes is now automatically adjusted to the
period interval (up to 2000 ms), but it can be overriden with the -t
option. The default timeout for non-loop/count modes remains 500 ms.

##### No restrictions by default

fping will not enforce -i >= 1 and -p >= 10 anymore, except if you
'./configure --enable-safe-limits'.

The reasoning to removing the restrictions by default, is that users can
clog the network with other tools anyway, and these restrictions are
sometimes getting in the way (for example if you try to ping a lot of
hosts).

##### Default interval (-i) changed from 25ms to 10ms

The default minimum interval between ping probes has been changed from
25ms to 10ms. The reason is that 25ms is very high, considering today's
fast networks: it generates at most 31 kbps of traffic (for IPv4 and
default payload size).

## New features

- Unified 'fping' and 'fping6' into one binary ([#80][i80])
- Long option names for all options
- IPv6 enabled by default
- New option -4 to force IPv4
- New option -6 to force IPv6
- Keep original name if a hostname is given with -n/--name
- Option -d/--rdns now always does a rdns-lookup, even for names, as '-n' was doing until now
- Enforce -t timeout on reply packets, by discarding late packets ([#32][i32])
- Auto-adjust timeout for -c/-C/-l mode to value of -p

## Bugfixes and other changes

- -i/-p restrictions disabled by default (enable with --enable-safe-limits)
- Default interval -i changed from 25ms to 10ms
- Fix compatibility issue with GNU Hurd
- A C99 compiler is now required
- Option parsing with optparse (https://github.com/skeeto/optparse). Thanks Christopher Wellons!
- New changelog file format

[i32]: https://github.com/schweikert/fping/issues/32
[i80]: https://github.com/schweikert/fping/issues/80

(see doc/CHANGELOG.pre-v4 for older changes)
