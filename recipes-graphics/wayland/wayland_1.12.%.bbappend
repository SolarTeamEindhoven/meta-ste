FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += " file://0001-Use-inline-implementation-when-experimantal-libc-fea.patch "

PACKAGECONFIG_class-nativesdk_mingw32 ?= ""
