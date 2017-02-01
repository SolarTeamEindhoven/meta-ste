DESCRIPTION = "LAYR Controller Daemon"

LICENSE = "LGPL-3.0"
LIC_FILES_CHKSUM = "file://LICENSE.LGPLv3;md5=9c8f56fda3699388803758056636c803"

STE_MODULE = "LAYR-ControllerDaemon"

inherit qmake5 systemd
require LAYR-git.inc

STE_MODULE_BRANCH = "master"
SRCREV = "77c8375d203fa3c4e49dd84b5092536cd8508166"

S = "${WORKDIR}/git"

DEPENDS = "qtbase libiio"

do_install_append() {
	install -m 0755 -d ${D}${systemd_unitdir}/system
	install -m 0644 ${S}/LAYRDaemon.service ${D}${systemd_unitdir}/system/
}

SYSTEMD_SERVICE_${PN} = "LAYRDaemon.service"
