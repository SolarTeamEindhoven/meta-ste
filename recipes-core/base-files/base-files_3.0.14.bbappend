do_install_append_ste-ivi () {
	echo "" >> ${D}${sysconfdir}/profile
	echo "# Used by almost all wayland servers/clients:" >> ${D}${sysconfdir}/profile
	echo "export XDG_RUNTIME_DIR=\"/tmp\"" >> ${D}${sysconfdir}/profile
	echo "" >> ${D}${sysconfdir}/profile
	echo "# Qt5 environement variables:" >> ${D}${sysconfdir}/profile
	echo "export QT_WAYLAND_SHELL_INTEGRATION=\"wayland-ste\"" >> ${D}${sysconfdir}/profile
	echo "export QT_WAYLAND_DISABLE_WINDOWDECORATION=1" >> ${D}${sysconfdir}/profile
	echo "export QT_WAYLAND_USE_BYPASSWINDOWMANAGERHINT=1" >> ${D}${sysconfdir}/profile
	echo "" >> ${D}${sysconfdir}/profile
	echo "export QT_QUICK_CONTROLS_STYLE=\"material\"" >> ${D}${sysconfdir}/profile
	echo "export QT_QUICK_CONTROLS_MATERIAL_ACCENT=\"DeepOrange\"" >> ${D}${sysconfdir}/profile
	echo "export QT_QUICK_CONTROLS_MATERIAL_PRIMARY=\"Yellow\"" >> ${D}${sysconfdir}/profile
	echo "export QT_QUICK_CONTROLS_MATERIAL_FOREGROUND=\"Amber\"" >> ${D}${sysconfdir}/profile
	echo "export QT_QUICK_CONTROLS_MATERIAL_BACKGROUND=\"Amber\"" >> ${D}${sysconfdir}/profile
}
