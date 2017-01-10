DESCRIPTION = "LAYR SoftKey Plugin"

LICENSE = "LGPL-3.0"
LIC_FILES_CHKSUM = "file://LICENSE.LGPLv3;md5=c4fe8c6de4eef597feec6e90ed62e962"

STE_MODULE = "LAYR-SoftkeyPlugin"

inherit qmake5
require LAYR-git.inc

SRCREV = "a5b5a04b28a919388067391ec0652ef4838d4583"

S = "${WORKDIR}/git"

FILES_${PN} += " \
	${OE_QMAKE_PATH_PLUGINS}/*/*${SOLIBSDEV} \
"
FILES_${PN}-dev += "${libdir}/cmake/*/*.cmake"

DEPENDS = "qtbase qtdeclarative ivi-launchersdk libiio"
