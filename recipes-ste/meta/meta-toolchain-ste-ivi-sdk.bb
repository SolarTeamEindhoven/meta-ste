SUMMARY = "The Solar Team Eindhoven Board Computer SDK"
LICENSE = "MIT"

LICENSE = "The-Qt-Company-DCLA-2.1"
LIC_FILES_CHKSUM = "file://${QT_LICENSE};md5=80e06902b5f0e94ad0a78ee4f7fcb74b"

inherit populate_b2qt_qt5_sdk

TOOLCHAIN_HOST_TASK += "nativesdk-packagegroup-b2qt-embedded-qt5-toolchain-host"
#TOOLCHAIN_TARGET_TASK += "packagegroup-b2qt-embedded-qt5-toolchain-target"
TOOLCHAIN_TARGET_TASK += "packagegroup-ivi-sdk"

TOOLCHAIN_HOST_TASK += "nativesdk-wayland-dev nativesdk-qtwayland"
#TOOLCHAIN_TARGET_TASK += "qtwayland-dev ivi-sdk-dev ivi-launchersdk-dev"
TOOLCHAIN_TARGET_TASK += "ivi-sdk ivi-launchersdk"
