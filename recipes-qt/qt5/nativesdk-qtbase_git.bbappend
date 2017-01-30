############################################################################
##
## Copyright (C) 2016 The Qt Company Ltd.
## Contact: https://www.qt.io/licensing/
##
## This file is part of the Boot to Qt meta layer.
##
## $QT_BEGIN_LICENSE:GPL$
## Commercial License Usage
## Licensees holding valid commercial Qt licenses may use this file in
## accordance with the commercial license agreement provided with the
## Software or, alternatively, in accordance with the terms contained in
## a written agreement between you and The Qt Company. For licensing terms
## and conditions see https://www.qt.io/terms-conditions. For further
## information use the contact form at https://www.qt.io/contact-us.
##
## GNU General Public License Usage
## Alternatively, this file may be used under the terms of the GNU
## General Public License version 3 or (at your option) any later version
## approved by the KDE Free Qt Foundation. The licenses are as published by
## the Free Software Foundation and appearing in the file LICENSE.GPL3
## included in the packaging of this file. Please review the following
## information to ensure the GNU General Public License requirements will
## be met: https://www.gnu.org/licenses/gpl-3.0.html.
##
## $QT_END_LICENSE$
##
############################################################################

FILESEXTRAPATHS_prepend := "${THISDIR}/qtbase:"

SRC_URI += "\
    file://oe-device-extra.pri \
    file://0001-Add-win32-g-oe-mkspec-that-uses-the-OE_-environment.patch \
    file://0001-Support-class-names-not-stating-with-capital-Q.patch \
"

do_configure_prepend() {
    install -m 0644 ${WORKDIR}/oe-device-extra.pri ${S}/mkspecs
}

fakeroot do_install_append_mingw32() {

    OE_QMAKE_CC_VALUE=$(echo "${CC}" | sed "s/,/\\,/")
    OE_QMAKE_CFLAGS_VALUE=$(echo "${CFLAGS}" | sed "s/,/\\,/")
    OE_QMAKE_CXX_VALUE=$(echo "${CXX}" | sed "s/,/\\,/")
    OE_QMAKE_CXXFLAGS_VALUE=$(echo "${CXXFLAGS}" | sed "s/,/\\,/")
    OE_QMAKE_LINK_VALUE=$(echo "${CXX}" | sed "s/,/\\,/")
    OE_QMAKE_LDFLAGS_VALUE=$(echo "${LDFLAGS}" | sed "s/,/\\,/")
    OE_QMAKE_AR_VALUE=$(echo "${AR}" | sed "s/,/\\,/")
    OE_QMAKE_QT_CONFIG_VALUE=$(echo "${libdir}${QT_DIR_NAME}/mkspecs/qconfig.pri" | sed "s/,/\\,/")
    sed -i \
        -e "s,\$(OE_QMAKE_CC),${OE_QMAKE_CC_VALUE},g" \
        -e "s,\$(OE_QMAKE_CFLAGS),${OE_QMAKE_CFLAGS_VALUES},g" \
        -e "s,\$(OE_QMAKE_CXXFLAGS),${OE_QMAKE_CXXFLAGS_VALUES},g" \
        -e "s,\$(OE_QMAKE_CXX),${OE_QMAKE_CXX_VALUES},g" \
        -e "s,\$(OE_QMAKE_LINK),${OE_QMAKE_LINK_VALUE},g" \
        -e "s,\$(OE_QMAKE_LDFLAGS),${OE_QMAKE_LDFLAGS_VALUES},g" \
        -e "s,\$(OE_QMAKE_AR),${OE_QMAKE_AR_VALUES},g" \
        -e "s,\$(OE_QMAKE_QT_CONFIG),${OE_QMAKE_QT_CONFIG},g" \
        ${D}/${OE_QMAKE_PATH_HOST_DATA}/mkspecs/${OE_QMAKE_PLATFORM_mingw32}/qmake.conf
}

fakeroot do_generate_qt_environment_file_mingw32() {
}
