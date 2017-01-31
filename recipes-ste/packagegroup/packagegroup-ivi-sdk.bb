DESCRIPTION = "Target packages for B2Qt embedded Qt5 SDK"
LICENSE = "The-Qt-Company-DCLA-2.1"
PR = "r0"

inherit packagegroup bluetooth qtquickcompiler

MACHINE_EXTRA_INSTALL_SDK ??= ""

#    qtdatavis3d-dev
#    qtvirtualkeyboard-dev
#    qtlocation-dev
#    qtdeclarative-render2d-dev
RDEPENDS_${PN} += " \
    packagegroup-core-standalone-sdk-target \
    base-files \
    glib-2.0-dev \
    openssl-dev \
    libpng-dev \
    tiff-dev \
    alsa-dev \
    dbus-dev \
    freetype-dev \
    fontconfig-dev \
    ${@bb.utils.contains("DISTRO_FEATURES", "gstreamer010", "gstreamer-dev gst-plugins-base-dev", "", d)} \
    ${@bb.utils.contains("DISTRO_FEATURES", "gstreamer", "gstreamer1.0-dev gstreamer1.0-plugins-base-dev", "", d)} \
    icu-dev \
    libxslt-dev \
    ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd-dev", "udev-dev", d)} \
    tslib-dev \
    hunspell-dev \
    libcap-dev \
    wpa-supplicant-dev \
    libmysqlclient-dev \
    libpq-dev \
    atk-dev \
    libevent-dev \
    ${@bb.utils.contains("DISTRO_FEATURES", "bluetooth", "${BLUEZ}-dev", "", d)} \
    ${MACHINE_EXTRA_INSTALL_SDK} \
    \
    qt3d-dev \
    qtbase-dev \
    qtbase-staticdev \
    qtcanvas3d-dev \
    qtconnectivity-dev \
    qtdeclarative-dev \
    qtdeclarative-staticdev \
    qtdeviceutilities-dev \
    qtgraphicaleffects-dev \
    qtimageformats-dev \
    qtquickcontrols-dev \
    qtquickcontrols2-dev \
    qtsensors-dev \
    qtserialbus-dev \
    qtserialport-dev \
    qtsvg-dev \
    qttools-dev \
    qttools-staticdev \
    qtscript-dev \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'qtwayland-dev', '', d)} \
    ${@bb.utils.contains('DISTRO_FEATURES', 'webengine', 'qtwebengine-dev', '', d)} \
    qtwebsockets-dev \
    qtwebchannel-dev \
    qtxmlpatterns-dev \
    qtmultimedia-dev \
    qtvirtualkeyboard-dev \
    qtcharts-dev \
    qtlocation-dev \
    libegl-mesa-dev \
    libgles2-mesa-dev \
    libgles3-mesa-dev \
    libiio-dev \
    "
