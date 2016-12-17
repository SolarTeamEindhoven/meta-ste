SUMMARY = "The Solar Team Eindhoven Board Computer image"

IMAGE_FEATURES += "\
        package-management \
        ssh-server-dropbear \
        tools-debug \
        debug-tweaks \
        hwcodecs \
        "

inherit core-image
inherit bootfs-image

IMAGE_INSTALL += "\
	packagegroup-ivi \
	${ROOTFS_PKGMANAGE} \
	"
