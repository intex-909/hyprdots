# ------------------------------------------------------
# Install packages
# ------------------------------------------------------
_writeLogHeader "Packages"
_writeHeader "Packages"

# Base
_writeHeader "Installing base packages"
source $packages_directory/$install_platform/base.sh
_installPackages "${packages[@]}"
echo

# Terminal tools
_writeHeader "Installing terminal tools"
source $packages_directory/$install_platform/terminal-tools.sh
_installPackages "${packages[@]}"
echo

# Additional
_writeHeader "Installing additional packages"
source $packages_directory/$install_platform/addons.sh
_installPackages "${packages[@]}"
echo

# Install AUR packages
_writeHeader "Installing AUR packages"
source $packages_directory/$install_platform/aur-packs.sh
_installAurPackages "${packages[@]}"
echo

# Install Hyprland
if gum confirm "Do you want to install Hyprland packages?"; then
    _writeHeader "Installing Hyprland packages"
    
    source $packages_directory/$install_platform/hyprland.sh
    _installPackages "${packages[@]}"
fi
echo

# Install fnm (Fast Node Manager)
if gum confirm "Do you want to install fnm (Fast Node Manager)?"; then
    _writeHeader "Installing Fast Node Manager"

    curl -fsSL https://fnm.vercel.app/install | bash
fi
echo

# Add Flathub repository
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

if gum confirm "Do you want to install flatpaks?"; then
    _writeHeader "Installing flatpaks"

    # Install flatpaks
    flatpak install --user flathub com.github.tchx84.Flatseal
    flatpak install --user flathub io.github.flattool.Warehouse
    flatpak install --user flathub org.gnome.World.PikaBackup
    flatpak install --user flathub com.spotify.Client
fi
echo
