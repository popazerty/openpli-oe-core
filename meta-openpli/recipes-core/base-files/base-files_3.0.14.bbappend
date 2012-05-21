PRINC = "1"

FILESEXTRAPATHS_prepend := "${THISDIR}/${P}:"

do_install_append() {
	rm -rf ${D}/mnt
	rm -rf ${D}/hdd
	ln -sf media/hdd ${D}/hdd
	ln -sf media ${D}/mnt
	rm -rf ${D}/media/*
	rmdir ${D}/tmp
	ln -s var/volatile/tmp ${D}/tmp
}