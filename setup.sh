#!/bin/bash
# script by JohnJayMcKaye
# setup.sh permissions `chmod u+x setup.sh`



echo "----------------------------------------------------------------"
echo "     wenn alles gut geht, ist dein PC nachher nicht kaputt      "
echo "----------------------------------------------------------------"

echo "bereite System für Script vor"
rpm-ostree cancel


echo "entferne RPM-Version von Firefox (wird durch Flatpak-Version ersetzt)"
rpm-ostree override remove firefox firefox-langpacks

echo "layer einige wichtige Pakete"
rpm-ostree install waydroid gnome-tweak-tool gnome-shell-extension-pop-shell gnome-shell-extension-dash-to-dock gnome-shell-extension-openweather gnome-shell-extension-screen-autorotate virt-manager wireguard-tools gstreamer1-vaapi syncthing distrobox

echo "Räume die Flatpakrepos auf"
sudo flatpak remote-delete flathub
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --user --if-not-exists fedora oci+https://registry.fedoraproject.org 

echo "Installiere ein paar Programme"
flatpak install --user flathub org.mozilla.firefox com.mattjakeman.ExtensionManager io.missioncenter.MissionCenter com.github.jeromerobert.pdfarranger com.github.junrrein.PDFSlicer com.github.tchx84.Flatseal com.rawtherapee.RawTherapee com.valvesoftware.Steam de.bund.ausweisapp.ausweisapp2 im.riot.Riot org.audacityteam.Audacity org.audacityteam.Audacity.Codecs org.blender.Blender org.blender.Blender.Codecs org.darktable.Darktable org.freecadweb.FreeCAD org.gimp.GIMP org.gnome.NetworkDisplays org.gnome.SimpleScan org.gnome.Snapshot org.gnome.SoundRecorder org.gnome.gThumb org.gpodder.gpodder org.inkscape.Inkscape org.kde.kdenlive org.kde.krita org.keepassxc.KeePassXC org.libreoffice.LibreOffice org.mozilla.Thunderbird org.videolan.VLC
flatpak install --user fedora org.jpilot.JPilot

echo "aktiviere automatische Updates"
echo "ich arbeite daran" > log.txt



echo "----------------------------------------------------------------"
echo "                 fertig, danke für deine Geduld                 "
echo "                 bitte starte nun neu und führe                 "
echo "                 das 2te script aus.                 "
echo "----------------------------------------------------------------"


