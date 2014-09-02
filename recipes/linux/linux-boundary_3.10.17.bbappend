#############################################################################
##
## Copyright (C) 2014 Digia Plc and/or its subsidiary(-ies).
##
## This file is part of the Qt Enterprise Embedded Scripts of the Qt
## framework.
##
## $QT_BEGIN_LICENSE$
## Commercial License Usage Only
## Licensees holding valid commercial Qt license agreements with Digia
## with an appropriate addendum covering the Qt Enterprise Embedded Scripts,
## may use this file in accordance with the terms contained in said license
## agreement.
##
## For further information use the contact form at
## http://qt.digia.com/contact-us.
##
##
## $QT_END_LICENSE$
##
#############################################################################


do_configure_prepend() {
	# Use multitouch protocol for touchscreen that support it
	echo "CONFIG_TOUCHSCREEN_EGALAX_SINGLE_TOUCH=n"      >> ${WORKDIR}/defconfig
	echo "CONFIG_TOUCHSCREEN_FT5X06_SINGLE_TOUCH=n"      >> ${WORKDIR}/defconfig

	# FunctionFS for adb
	echo "CONFIG_USB_FUNCTIONFS=m"  >> ${WORKDIR}/defconfig

	# Enable USB serial support
	echo "CONFIG_USB_SERIAL=m"              >> ${WORKDIR}/defconfig
	echo "CONFIG_USB_SERIAL_GENERIC=y"      >> ${WORKDIR}/defconfig
	echo "CONFIG_USB_SERIAL_FTDI_SIO=m"     >> ${WORKDIR}/defconfig
	echo "CONFIG_USB_SERIAL_PL2303=m"       >> ${WORKDIR}/defconfig

	# fix imx-vpu break on video decoding
	echo "CONFIG_VMSPLIT_2G=y"              >> ${WORKDIR}/defconfig
}