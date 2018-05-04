SHELL := /bin/bash

all: build install

build:
	updpkgsums
	makepkg
	mksrcinfo

install:
	sudo pacman -U dbeaver*.tar.xz

clean:
	rm -rf src pkg
	rm -f dbeaver*.tar.gz dbeaver*.tar.xz
