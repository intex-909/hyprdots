# ------------------------------------------------------
# Install packages
# ------------------------------------------------------
_writeLogHeader "Packages"
_writeHeader "Packages"

# Base
_writeLogTerminal 0 "Installing base packages..."
source $packages_directory/$install_platform/base.sh
_installPackages "${packages[@]}"

# Terminal tools
_writeLogTerminal 0 "Installing terminal tools..."
source $packages_directory/$install_platform/terminal-tools.sh
_installPackages "${packages[@]}"

# Additional
_writeLogTerminal 0 "Installing additional packages..."
source $packages_directory/$install_platform/addons.sh
_installPackages "${packages[@]}"

# Install AUR packages
_writeLogTerminal 0 "Installing AUR packages..."
source $packages_directory/$install_platform/aur-packs.sh
_installAurPackages "${packages[@]}"

# Install Hyprland
if gum confirm "Do you want to install Hyprland packages?"; then
    _writeLogTerminal 0 "Installing Hyprland packages..."
    
    source $packages_directory/$install_platform/hyprland.sh
    _installPackages "${packages[@]}"
fi

# Install fnm (Fast Node Manager)
if gum confirm "Do you want to install fnm (Fast Node Manager)?"; then
    _writeLogTerminal 0 "Installing Fast Node Manager..."

    curl -fsSL https://fnm.vercel.app/install | bash
fi

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
if gum confirm "Do you want to install flatpaks?"; then
    _writeLogTerminal 0 "Installing flatpaks..."

    # Install flatpaks
    flatpak install --user flathub com.github.tchx84.Flatseal
    flatpak install --user flathub io.github.flattool.Warehouse
    flatpak install --user flathub org.gnome.World.PikaBackup
    flatpak install --user flathub com.spotify.Client
fi
