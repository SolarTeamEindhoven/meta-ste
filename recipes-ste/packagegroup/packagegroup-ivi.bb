DESCRIPTION = "Packagegroup for STE IVI image"
LICENSE = "MIT"
#PR = "r0"

inherit packagegroup

DISTRO_UPDATE_ALTERNATIVES ??= ""
ROOTFS_PKGMANAGE_PKGS ?= '${@base_conditional("ONLINE_PACKAGE_MANAGEMENT", "none", "", "${ROOTFS_PKGMANAGE} ${DISTRO_UPDATE_ALTERNATIVES}", d)}'

#        ${MACHINE_EXTRA_INSTALL}
RDEPENDS_${PN} = "\
	kernel-modules \
	psplash \
	openssh-sftp-server \
	openssl \
	openssl-misc \
	libpng \
	tiff \
	libxslt \
	icu \
	freetype \
	fontconfig \
	liberation-fonts \
	tslib \
	tslib-calibrate \
	alsa-utils-amixer \
	hunspell \
	ca-certificates \
	linux-firmware \
	ttf-devanagari \
	ttf-opensans \
	ttf-dejavu-common \
	ttf-dejavu-sans \
	dbus-session-init \
	otf-noto \
	libmysqlclient \
	libpq \
	tzdata \
	tzdata-americas \
	tzdata-asia \
	tzdata-europe \
	atk \
	libevent \
	dracut \
	connman \
	ldd \
	binutils \
	binutils-symlinks \
	i2c-tools \
	perf \
	htop \
	ntp \
	connman-client \
	iproute2 \
	gstreamer1.0-meta-base \
	gstreamer1.0-meta-video \
	gstreamer1.0-meta-audio \
	gstreamer1.0-plugins-base-meta \
	gstreamer1.0-plugins-good-meta \
	gstreamer1.0-plugins-ugly-meta \
	gstreamer1.0-plugins-bad-meta \
	gstreamer1.0-libav \
	packagegroup-b2qt-qt5-modules \
	pi-blaster \
	ivi-sdk \
	ivi-launchersdk \
	layr-launcher \
	layr-softkeyplugin \
	layr-vehicleintegrationplugin \
	layr-controllerdaemon \
	"

