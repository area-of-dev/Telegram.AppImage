# Copyright 2020 Alex Woroschilow (alex.woroschilow@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
PWD:=$(shell pwd)

.PHONY: all


all: clean init
	mkdir --parents $(PWD)/build/Boilerplate.AppDir/telegram

	wget -O $(PWD)/build/build.tar.xz  https://telegram.org/dl/desktop/linux	
	tar -xJf $(PWD)/build/build.tar.xz -C $(PWD)/build

	
	cp --recursive --force $(PWD)/build/Telegram*/*Telegram*  $(PWD)/build/Boilerplate.AppDir/telegram/telegram
	cp --force --recursive $(PWD)/AppDir/* $(PWD)/build/Boilerplate.AppDir/

	chmod +x $(PWD)/build/Boilerplate.AppDir/AppRun

	export ARCH=x86_64 && $(PWD)/bin/appimagetool.AppImage $(PWD)/build/Boilerplate.AppDir $(PWD)/Telegram.AppImage
	chmod +x $(PWD)/Telegram.AppImage


init:
	mkdir --parents $(PWD)/bin

	wget https://apprepo.de/appimage/download/apprepo \
		--output-document=$(PWD)/bin/Apprepo.AppImage
	chmod +x $(PWD)/bin/Apprepo.AppImage

	wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage \
		--output-document=$(PWD)/bin/appimagetool.AppImage
	chmod +x $(PWD)/bin/appimagetool.AppImage

clean:
	rm -rf $(PWD)/*.AppImage
	rm -rf $(PWD)/bin/*
	rm -rf $(PWD)/build
