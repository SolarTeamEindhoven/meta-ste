PACKAGES_remove_mingw32 = "${PN}-python ${PN}-ptest"
PACKAGECONFIG_remove_mingw32 = "python"

RDEPENDS_${PN}-ptest_remove_mingw32 += "python-core"
RDEPENDS_${PN}-python_remove_mingw32 += "python-core"
