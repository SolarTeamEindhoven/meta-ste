remove_line() {
	echo "removing line: $1"
	sed -i "s/\($1\)/#\1/g" ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
}

do_deploy_append() {
	echo "dtoverlay=ad7998" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt

	remove_line "start_x=1"
	remove_line "dtparam=spi=on"
}
