# Makefile fragment for Celestica Smallstone 

ONIE_ARCH ?= powerpc-softfloat
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
VENDOR_ID = 12244

# Specify Linux kernel version
LINUX_VERSION           = 3.2
LINUX_MINOR_VERSION     = 69

# Older GCC required for older 3.2 kernel
GCC_VERSION = 4.9.2

# Exclude ext3/4 file system tools
EXT3_4_ENABLE = no
# Exclude btrfs file system tools
BTRFS_PROGS_ENABLE = no

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
