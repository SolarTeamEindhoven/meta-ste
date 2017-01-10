FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
    file://oe-device-extra.pri \
    file://0001-Add-win32-g-oe-mkspec-that-uses-the-OE_-environment.patch \
    file://0001-Support-class-names-not-stating-with-capital-Q.patch \
    file://0001-Workaround-for-stdlib.h-not-found.patch \
"

PACKAGECONFIG_remove = "linuxfb"
PACKAGECONFIG += "dbus udev evdev widgets tools libs freetype accessibility tslib libinput libproxy alsa gles2 eglfs gbm kms harfbuzz ico gif sql-psql sql-sqlite mtdev openssl fontconfig icu sctp xkbcommon-evdev"

PACKAGECONFIG += "qml-debug"

do_configure_prepend() {
    install -m 0644 ${WORKDIR}/oe-device-extra.pri ${S}/mkspecs
}

PACKAGECONFIG[sctp] = "-sctp,-no-sctp,lksctp-tools"

# make other libgbm providers possible
PACKAGECONFIG[gbm] = "-gbm,-no-gbm,virtual/libgbm"
