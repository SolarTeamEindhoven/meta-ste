FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
    file://oe-device-extra.pri \
    file://0001-Add-win32-g-oe-mkspec-that-uses-the-OE_-environment.patch \
    file://0001-Support-class-names-not-stating-with-capital-Q.patch \
    file://0001-Workaround-for-stdlib.h-not-found.patch \
"

PACKAGECONFIG_remove = "linuxfb"
PACKAGECONFIG += " \
    accessibility \
    dbus \
    eglfs \
    evdev \
    fontconfig \
    freetype \
    gbm \
    gif \
    gles2 \
    glib \
    harfbuzz \
    ico \
    icu \
    kms \
    libinput \
    libproxy \
    libs \
    mtdev \
    openssl \
    qml-debug \
    sctp \
    sql-psql \
    sql-sqlite \
    tools \
    tslib \
    udev \
    widgets \
    xkbcommon-evdev \
    "

do_configure_prepend() {
    install -m 0644 ${WORKDIR}/oe-device-extra.pri ${S}/mkspecs
}

PACKAGECONFIG[sctp] = "-sctp,-no-sctp,lksctp-tools"

# make other libgbm providers possible
PACKAGECONFIG[gbm] = "-gbm,-no-gbm,virtual/libgbm"
