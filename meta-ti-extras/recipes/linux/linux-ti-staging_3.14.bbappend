##############################################################################
##
## Copyright (C) 2016 The Qt Company Ltd.
## Contact: http://www.qt.io/licensing/
##
## This file is part of the Boot to Qt meta layer.
##
## $QT_BEGIN_LICENSE:COMM$
##
## Commercial License Usage
## Licensees holding valid commercial Qt licenses may use this file in
## accordance with the commercial license agreement provided with the
## Software or, alternatively, in accordance with the terms contained in
## a written agreement between you and The Qt Company. For licensing terms
## and conditions see http://www.qt.io/terms-conditions. For further
## information use the contact form at http://www.qt.io/contact-us.
##
## $QT_END_LICENSE$
##
##############################################################################

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "\
    file://usb-serial.cfg \
    "
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/usb-serial.cfg"
KERNEL_DEVICETREE_b2qt = "am335x-evm.dtb am335x-evmsk.dtb am335x-bone.dtb am335x-boneblack.dtb"

KERNEL_GIT_URI = "git://github.com/beagleboard/linux"
BRANCH = "3.14"
SRCREV = "b36a2d5ca4e2859c92fac09ccedf4e42d620dda7"
