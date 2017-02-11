
DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspberry Pi."
HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
SECTION = "devel/libs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://README.md;beginline=222;endline=248;md5=792932b758db63878387d7c0b0e74c54"

SRC_URI = " \
	git://github.com/sarfata/pi-blaster \
	file://0001-Enable-PCM.patch \
	file://0002-Changed-PWM-pins.patch \
"
SRCREV = "3d07ec13b98e7016e1d1540632f2f09bae9047d7"

S = "${WORKDIR}/git"

inherit systemd autotools pkgconfig

PACKAGECONFIG ?= "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd", "", d)}"
PACKAGECONFIG[systemd] = ",,systemd"

SYSTEMD_SERVICE_${PN} = "pi-blaster.service"

COMPATIBLE_MACHINE = "raspberrypi"

PACKAGE_ARCH = "${MACHINE_ARCH}"
