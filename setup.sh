
rpm-ostree override remove firefox firefox-langpacks

rpm-ostree install waydroid gnome-tweak-tool gnome-shell-extension-pop-shell gnome-shell-extension-dash-to-dock gnome-shell-extension-openweather gnome-shell-extension-screen-autorotate virt-manager wireguard-tools gstreamer1-vaapi syncthing distrobox

sudo flatpak remote-delete flathub

flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak remote-add --user --if-not-exists fedora oci+https://registry.fedoraproject.org 

flatpak install --user flathub org.mozilla.firefox com.mattjakeman.ExtensionManager io.missioncenter.MissionCenter com.github.jeromerobert.pdfarranger com.github.junrrein.PDFSlicer com.github.tchx84.Flatseal com.rawtherapee.RawTherapee com.valvesoftware.Steam de.bund.ausweisapp.ausweisapp2 im.riot.Riot org.audacityteam.Audacity org.audacityteam.Audacity.Codecs org.blender.Blender org.blender.Blender.Codecs org.darktable.Darktable org.freecadweb.FreeCAD org.gimp.GIMP org.gnome.NetworkDisplays org.gnome.SimpleScan org.gnome.Snapshot org.gnome.SoundRecorder org.gnome.gThumb org.gpodder.gpodder org.inkscape.Inkscape org.kde.kdenlive org.kde.krita org.keepassxc.KeePassXC org.libreoffice.LibreOffice org.mozilla.Thunderbird org.videolan.VLC

flatpak install --user fedora org.jpilot.JPilot

