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

if gum confirm "Do you want to install Hyprland packages?"; then
    _writeLogTerminal 0 "Installing Hyprland packages..."
    
    # Hyprland
    source $packages_directory/$install_platform/hyprland.sh
    _installPackages "${packages[@]}"
fi

