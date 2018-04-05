include config.mk

scripts = pfr marc2pfr

build: pfr

install: check
	install -d $(PREFIX)/bin
	install $(scripts) $(PREFIX)/bin/

check:
	./check-syntax $(scripts)

.PHONY: build check install

