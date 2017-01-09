FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += " file://0001-Use-inline-implementation-when-experimantal-libc-fea.patch "

DEPENDS_remove = "libxml2"

PACKAGECONFIG ?= "libxml2 libraries"
PACKAGECONFIG_class-nativesdk_mingw32 ?= ""
PACKAGECONFIG_class-nativesdk ?= "libxml2 libraries"

PACKAGECONFIG[libraries] = ",--disable-libraries"
PACKAGECONFIG[libxml2] = ",--disable-dtd-validation,libxml2"
