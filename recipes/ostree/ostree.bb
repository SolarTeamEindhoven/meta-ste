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

SUMMARY = "Tool for managing bootable, immutable, versioned filesystem trees."

LICENSE = "LGPL-2.1"
LIC_FILES_CHKSUM = "file://COPYING;md5=5f30f0716dfdd0d91eb439ebec522ec2"

inherit autotools pkgconfig systemd

SRC_URI = " \
    git://github.com/GNOME/ostree.git \
    file://0001-Allow-updating-files-on-the-boot-partition.patch \
    file://0002-u-boot-Merge-ostree-s-and-systems-uEnv.txt.patch \
    file://0003-Allow-updating-files-in-root-of-boot.patch \
    file://0004-Mount-boot-partition.patch \
    "

SRCREV = "efdb4d8f443768e59529c299290bee8b1f8f93c3"

S = "${WORKDIR}/git"

DEPENDS = "glib-2.0 e2fsprogs gpgme attr libsoup-2.4 libgsystem libassuan xz"
RRECOMMENDS_${PN} += "gnupg"

PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/,,,"

SYSTEMD_SERVICE_${PN} = "ostree-prepare-root.service ostree-remount.service"
FILES_${PN} += "${systemd_unitdir}/system/ \
                ${libdir}/dracut/"

EXTRA_OECONF = "--with-dracut \
                --without-selinux \
                --without-libarchive \
                --with-grub2=no \
                --enable-gtk-doc-html=no \
                --with-soup \
                --enable-libsoup-client-certs"

do_configure_prepend() {
    cd ${S}
    # Update submodules and workaround bugs.
    env NOCONFIGURE=1 ./autogen.sh
    cd -
}
