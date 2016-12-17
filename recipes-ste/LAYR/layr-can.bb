DESCRIPTION = "LAYR CAN descriptor"

LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://CAN.xml;md5=049b70b2f44f24620800a0a7aba1abf6"

SRC_URI += "file://CAN.xml"

S = "${WORKDIR}"

do_install() {
	install -m 0755 -d ${D}${datadir}/LAYR
	install -m 0644 ${WORKDIR}/CAN.xml ${D}${datadir}/LAYR/
}

FILES_${PN} = "${sysconfdir}/LAYR/CAN.xml"
