# Makefile fragment for Accton AS_28T_OPS

# Vendor's version number can be defined here.
# Available variables are 'VENDOR_VERSION' and 'UBOOT_IDENT_STRING'.
# e.g.,
# VENDOR_VERSION = .00.01
# UBOOT_IDENT_STRING = 1.4.0.1

ONIE_ARCH ?= armv7a
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

UBOOT_MACHINE = AS_28T_OPS

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
VENDOR_ID = 259

# Specify Linux kernel version
LINUX_VERSION       = 3.2
LINUX_MINOR_VERSION = 69

# Older GCC required for older 3.2 kernel
GCC_VERSION = 4.9.2

# Set the desired U-Boot version
UBOOT_VERSION = 2012.10

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
