# ------------------------------------------------------
# Install packages
# ------------------------------------------------------
_writeLogHeader "Packages"
_writeHeader "Packages"

# Base
_writeHeader "Base"
source $packages_directory/$install_platform/base.sh
_installPackages "${packages[@]}"
echo

# Terminal tools
_writeHeader "Terminal tools"
source $packages_directory/$install_platform/terminal-tools.sh
_installPackages "${packages[@]}"
echo

# Additional
_writeHeader "Additional"
source $packages_directory/$install_platform/addons.sh
_installPackages "${packages[@]}"
echo

# Install AUR packages
_writeHeader "AUR packages"
source $packages_directory/$install_platform/aur-packs.sh
_installAurPackages "${packages[@]}"
echo

# Install Hyprland
if gum confirm "Do you want to install Hyprland packages?"; then
    _writeHeader "Hyprland"
    
    source $packages_directory/$install_platform/hyprland.sh
    _installPackages "${packages[@]}"
fi
echo

# Install fnm (Fast Node Manager)
if gum confirm "Do you want to install fnm (Fast Node Manager)?"; then
    _writeHeader "Fast Node Manager"

    curl -fsSL https://fnm.vercel.app/install | bash
fi
echo

# Add Flathub repository
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

if gum confirm "Do you want to install flatpaks?"; then
    _writeHeader "Flatpaks"

    # Install flatpaks
    flatpak install -y --user flathub com.github.tchx84.Flatseal
    flatpak install -y --user flathub io.github.flattool.Warehouse
    flatpak install -y --user flathub org.gnome.World.PikaBackup
    flatpak install -y --user flathub com.spotify.Client
fi
echo
