#!/bin/bash

# 💡 Pfad zur Quelldatei
ICON="icon.png"

# 🔁 Vorhandene Dateien löschen
rm -rf icon.icns icon.ico MyIcon.iconset

echo "🛠️ Erzeuge .icns-Datei..."

# 📁 Iconset-Ordner anlegen
mkdir MyIcon.iconset

# 🧩 Verschiedene Größen erzeugen
sips -z 16 16     $ICON --out MyIcon.iconset/icon_16x16.png
sips -z 32 32     $ICON --out MyIcon.iconset/icon_16x16@2x.png
sips -z 32 32     $ICON --out MyIcon.iconset/icon_32x32.png
sips -z 64 64     $ICON --out MyIcon.iconset/icon_32x32@2x.png
sips -z 128 128   $ICON --out MyIcon.iconset/icon_128x128.png
sips -z 256 256   $ICON --out MyIcon.iconset/icon_128x128@2x.png
sips -z 256 256   $ICON --out MyIcon.iconset/icon_256x256.png
sips -z 512 512   $ICON --out MyIcon.iconset/icon_256x256@2x.png
sips -z 512 512   $ICON --out MyIcon.iconset/icon_512x512.png
sips -z 1024 1024 $ICON --out MyIcon.iconset/icon_512x512@2x.png

# 🎯 .icns erzeugen
iconutil -c icns MyIcon.iconset -o icon.icns

echo "✅ icon.icns erzeugt!"

echo "🛠️ Erzeuge .ico-Datei..."

# 📦 ImageMagick installieren, falls nötig
if ! command -v convert &> /dev/null; then
  echo "📦 Installiere ImageMagick..."
  brew install imagemagick
fi

# 🎯 .ico erzeugen (mehrere Größen in eine Datei)
convert $ICON -define icon:auto-resize=256,128,64,48,32,16 icon.ico

echo "✅ icon.ico erzeugt!"
