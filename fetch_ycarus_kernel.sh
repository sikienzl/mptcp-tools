#!/bin/bash
KERNEL_VERSION="6.1.0"
KERNEL_PACKAGE_VERSION="1.30"
VPSURL="https://www.openmptcprouter.com/"
KERNEL_RELEASE="${KERNEL_VERSION}-mptcp_${KERNEL_PACKAGE_VERSION}"
wget -O /tmp/linux-image-${KERNEL_RELEASE}_amd64.deb ${VPSURL}kernel/linux-image-${KERNEL_RELEASE}_amd64.deb
wget -O /tmp/linux-headers-${KERNEL_RELEASE}_amd64.deb ${VPSURL}kernel/linux-headers-${KERNEL_RELEASE}_amd64.deb
