DESCRIPTION = "LAYR RPM Repository"

LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://layr.repo;md5=5c9e95099efe645f6c793dbb040f38af"

SRC_URI += "file://layr.repo"

S = "${WORKDIR}"

RDEPENDS_${PN} = "dnf"

do_install() {
	install -m 0755 -d ${D}${sysconfdir}/yum.repos.d
	install -m 0644 ${WORKDIR}/layr.repo ${D}${sysconfdir}/yum.repos.d/
}

FILES_${PN} = "${sysconfdir}/yum.repos.d/layr.repo"
