#!/bin/sh
set -eu

# Run on the lab router. These rules permit the lab workstation to reach
# the second Vodafone box and permit traffic sourced by that box.
WORKSTATION_IP=${WORKSTATION_IP:-192.168.0.163}
VODAFONE_IP=${VODAFONE_IP:-192.168.50.180}
: "${VODAFONE_MAC:?Set VODAFONE_MAC to the Ethernet MAC of your own box}"

iptables -C FORWARD -s "$WORKSTATION_IP" -d "$VODAFONE_IP" -j ACCEPT 2>/dev/null || \
    iptables -I FORWARD 1 -s "$WORKSTATION_IP" -d "$VODAFONE_IP" -j ACCEPT
iptables -C FORWARD -s "$VODAFONE_IP" -m mac --mac-source "$VODAFONE_MAC" -j ACCEPT 2>/dev/null || \
    iptables -I FORWARD 1 -s "$VODAFONE_IP" -m mac --mac-source "$VODAFONE_MAC" -j ACCEPT
