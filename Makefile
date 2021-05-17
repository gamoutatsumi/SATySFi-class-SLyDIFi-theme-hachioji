PACKAGE_NAME=class-slydifi-theme-hachioji

.PHONY: all
.PHONY: doc

all:
	:

doc: doc/slydifi.pdf

doc/slydifi.pdf: doc/slydifi.saty satysfi-${PACKAGE_NAME}.opam Satyristes
	opam pin add satysfi-${PACKAGE_NAME}.opam "file://$(PWD)" -y
	satyrographos opam build --name ${PACKAGE_NAME}-doc
