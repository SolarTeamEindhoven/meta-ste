STE_MODULE ?= "${BPN}"
STE_MODULE_BRANCH ?= "develop"
STE_MODULE_BRANCH_PARAM ?= "branch=${STE_MODULE_BRANCH}"

# each module needs to define valid SRCREV
SRC_URI = " \
    ${STE_GIT}/${STE_MODULE}.git;name=${STE_MODULE};${STE_MODULE_BRANCH_PARAM};protocol=${STE_GIT_PROTOCOL} \
"

S = "${WORKDIR}/git"

PV = "0.9.0+git${SRCPV}"
