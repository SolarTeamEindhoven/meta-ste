FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_mingw = "\
    file://0001-Remove-POSIX-dependecy.patch \
"

EXTRA_OECONF_append_mingw = " LDFLAGS='-lws2_32'"
