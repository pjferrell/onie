# Makefile fragment for Freescale P2041RDB

# Copyright 2015 Freescale Semiconductor, Inc.
#
# SPDX-License-Identifier:     GPL-2.0

ONIE_ARCH ?= powerpc-softfloat
SWITCH_ASIC_VENDOR = none

VENDOR_REV ?= ONIE

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),ONIE)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

UBOOT_MACHINE = P2041RDB_ONIE_$(MACHINE_REV)
KERNEL_DTB = p2041rdb.dtb

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
VENDOR_ID = 33118

# Include kexec-tools
KEXEC_ENABLE = yes

# Set the desired U-Boot version
UBOOT_VERSION = 2015.10

# Specify Linux kernel version -- comment out to use the default
LINUX_VERSION = 4.1
LINUX_MINOR_VERSION = 38

#---------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
