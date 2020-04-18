SOURCE="https://telegram.org/dl/desktop/linux"
DESTINATION="build.tar.xz"
OUTPUT="Telegram.AppImage"


all:
	echo "Building: $(OUTPUT)"
	wget -O $(DESTINATION)  $(SOURCE)
	
	tar -xJf $(DESTINATION)
	rm -rf AppDir/opt
	
	mkdir --parents AppDir/opt/application
	mv Telegram/Telegram AppDir/opt/application/telegram
	rm -rf Telegram

	chmod +x AppDir/AppRun

	appimagetool AppDir $(OUTPUT)

	chmod +x $(OUTPUT)

	rm -f $(DESTINATION)
