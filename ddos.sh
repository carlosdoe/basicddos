

#!/bin/bash

#DOS defense
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
echo 1 > /proc/sys/net/ipv4/ip_forward
#echo 1024 > /proc/sys/net/ipv4/ipfrag_high_thresh
#echo 512 > /proc/sys/net/ipv4/ipfrag_low_thresh
echo 64000 > /proc/sys/net/ipv4/ipfrag_high_thresh
echo 48000 > /proc/sys/net/ipv4/ipfrag_low_thresh
echo 10 > /proc/sys/net/ipv4/ipfrag_time
echo 5 > /proc/sys/net/ipv4/icmp_ratelimit
echo 1 > /proc/sys/net/ipv4/tcp_syncookies
echo 0 > /proc/sys/net/ipv4/conf/eth0/accept_source_route
echo 0 > /proc/sys/net/ipv4/conf/eth0/accept_redirects
echo 1 > /proc/sys/net/ipv4/conf/eth0/log_martians
echo 10 > /proc/sys/net/ipv4/neigh/eth0/locktime
echo 0 > /proc/sys/net/ipv4/conf/eth0/proxy_arp
echo 50 > /proc/sys/net/ipv4/neigh/eth0/gc_stale_time
echo "1800" > /proc/sys/net/ipv4/tcp_keepalive_time
echo "0" > /proc/sys/net/ipv4/tcp_window_scaling
echo "0" > /proc/sys/net/ipv4/tcp_sack
echo 1 > /proc/sys/net/ipv4/tcp_syncookies
echo 1 > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts

# Makes it harder for MITM attacks
echo 0 > /proc/sys/net/ipv4/conf/eth0/send_redirects
echo 0 > /proc/sys/net/ipv4/conf/eth0/secure_redirects
echo 1 > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses
echo 5 > /proc/sys/net/ipv4/igmp_max_memberships
echo 2 > /proc/sys/net/ipv4/igmp_max_msf
echo 1024 > /proc/sys/net/ipv4/tcp_max_orphans
echo 2 > /proc/sys/net/ipv4/tcp_syn_retries
echo 2 > /proc/sys/net/ipv4/tcp_synack_retries
echo 1 > /proc/sys/net/ipv4/tcp_abort_on_overflow
echo 10 > /proc/sys/net/ipv4/tcp_fin_timeout
echo 0 > /proc/sys/net/ipv4/route/redirect_number
echo 1 > /proc/sys/net/ipv4/conf/all/rp_filter
echo 1 > /proc/sys/net/ipv4/conf/eth1/rp_filter
echo 1 > /proc/sys/net/ipv4/tcp_syncookies
echo 0 > /proc/sys/net/ipv4/conf/all/accept_source_route
echo 61 > /proc/sys/net/ipv4/ip_default_ttl

# Nmap foolery to appear as Checkpoint on XP
echo 4096 87380 4194304 >/proc/sys/net/ipv4/tcp_rmem
echo 4096 87380 4194304 >/proc/sys/net/ipv4/tcp_wmem

# Monitor network overload
echo 1 > /proc/sys/net/ipv4/tcp_ecn

# Port range outgoing traffic
echo "1000 60000" > /proc/sys/net/ipv4/ip_local_port_range

# Default queue size
echo 4096 > /proc/sys/net/ipv4/ip_conntrack_max

# SYN backlog queue
echo 2048 > /proc/sys/net/ipv4/tcp_max_syn_backlog
echo 0 > /proc/sys/net/ipv4/tcp_sack
echo 0 > /proc/sys/net/ipv4/tcp_timestamps

## mitigate fork bombs
echo 64000 > /proc/sys/fs/file-max
ulimit -n 64000
