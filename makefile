SOURCEDIR = ~/rpmbuild/SOURCES
BUILDDIR = ~/rpmbuild/BUILD

clean:
	rm -rf ${SOURCEDIR}
	rm -rf ${BUILDDIR}
	rm -rf dist
rpm:
	mkdir -p ${SOURCEDIR}
	mkdir -p ${BUILDDIR}
	mkdir -p ${SOURCEDIR}/src
	mkdir -p ${BUILDDIR}/init-scripts
	mkdir -p ${BUILDDIR}/example-conf
	cp -rp src/* ${SOURCEDIR}/src
	cp -rp init-scripts/* ${BUILDDIR}/init-scripts
	cp example-conf/yara.conf ${BUILDDIR}/example-conf/yara.conf.example
	cp MANIFEST ${BUILDDIR}
	cp cb-yara-connector.spec ${SOURCEDIR}/cb-yara-connector.spec
	ls ${SOURCEDIR}
	rpmbuild -ba cb-yara-connector.rpm.spec