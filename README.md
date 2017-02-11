Meta layer for STE IVI Software Stack
=====================================

This openembedded meta layer is based on the Boot 2 Qt layer.

Setting up build environment
============================

Checkout this repository
------------------------

Create a directory for the sources:
```bash
mkdir sources
```

Clone this repository in the sources directory:
```bash
git clone git@github.com:SolarTeamEindhoven/meta-ste.git sources/meta-ste
```

Initialize build environment
----------------------------

To automaticaly download all dependecies of this layer:
```bash
sources/meta-ste/b2qt-init-build-env init --device raspberrypi3
```

Build the image and SDK
=======================

Initialize the bitbake build environement:
```bash
export MACHINE=raspberrypi3
source setup-environment.sh
```

build the bitbake recipe:
```bash
bitbake meta-toolchain-ste-ivi-qbsp
```

