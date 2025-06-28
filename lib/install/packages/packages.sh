# ------------------------------------------------------
# Install packages
# ------------------------------------------------------
clear
_writeLogHeader "Packages"
_writeHeader "Packages"

# Base
_writeHeader "Base"
source $packages_directory/$install_platform/base.sh
_installPackages "${packages[@]}"
clear

# Terminal tools
_writeHeader "Terminal-Tools"
source $packages_directory/$install_platform/terminal-tools.sh
_installPackages "${packages[@]}"
clear

# Additional
_writeHeader "Additional"
source $packages_directory/$install_platform/addons.sh
_installPackages "${packages[@]}"
clear

# Install AUR packages
_writeHeader "AUR packages"
source $packages_directory/$install_platform/aur-packs.sh
_installAurPackages "${packages[@]}"
clear

# Install Hyprland
_writeHeader "Hyprland"
if gum confirm "Do you want to install Hyprland packages?"; then
    
    source $packages_directory/$install_platform/hyprland.sh
    _installPackages "${packages[@]}"
    clear
fi
echo

# Install fnm (Fast Node Manager)
_writeHeader "Fast Node Manager"
if gum confirm "Do you want to install fnm (Fast Node Manager)?"; then

    curl -fsSL https://fnm.vercel.app/install | bash
    clear
fi
echo

# Add Flathub repository
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
clear

_writeHeader "Flatpaks"
if gum confirm "Do you want to install flatpaks?"; then

    # Install flatpaks
    flatpak install -y --user flathub com.github.tchx84.Flatseal
    flatpak install -y --user flathub io.github.flattool.Warehouse
    flatpak install -y --user flathub org.gnome.World.PikaBackup
    flatpak install -y --user flathub com.spotify.Client
fi
clear

