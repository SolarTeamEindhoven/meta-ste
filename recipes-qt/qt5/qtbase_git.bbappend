FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
    file://0001-Support-class-names-not-stating-with-capital-Q.patch \
    file://0001-Workaround-for-stdlib.h-not-found.patch \
"

PACKAGECONFIG_remove = "linuxfb"
PACKAGECONFIG += "dbus udev evdev widgets tools libs freetype accessibility tslib libinput libproxy alsa gles2 eglfs gbm kms harfbuzz ico gif sql-psql sql-sqlite mtdev openssl fontconfig icu sctp xkbcommon-evdev"

PACKAGECONFIG += "qml-debug"

DEPENDS += "virtual/libgles3"

PACKAGECONFIG[sctp] = "-sctp,-no-sctp,lksctp-tools"
