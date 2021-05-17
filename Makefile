PACKAGE_NAME=class-slydifi-theme-hachioji

.PHONY: all
.PHONY: doc
.PHONY: clean

all:
	:

clean:
	rm doc/slydifi.pdf

doc: doc/slydifi.pdf

doc/slydifi.pdf: doc/slydifi.saty satysfi-${PACKAGE_NAME}.opam Satyristes
	opam pin add satysfi-${PACKAGE_NAME}.opam "file://$(PWD)" -y
	satysfi doc/slydifi.saty -o doc/slydifi.pdf
	# satyrographos opam build --name ${PACKAGE_NAME}-doc
