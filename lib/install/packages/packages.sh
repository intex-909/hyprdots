# ------------------------------------------------------
# Install packages
# ------------------------------------------------------
_writeLogHeader "Packages"
_writeHeader "Packages"

# Base
source $packages_directory/$install_platform/base.sh
_installPackages "${packages[@]}"

# Terminal tools
source $packages_directory/$install_platform/terminal-tools.sh
_installPackages "${packages[@]}"

# Hyprland
source $packages_directory/$install_platform/hyprland.sh
_installPackages "${packages[@]}"

# Additional
source $packages_directory/$install_platform/addons.sh
_installPackages "${packages[@]}"

# Install AUR packages
source $packages_directory/$install_platform/aur-packs.sh
_installAurPackages "${packages[@]}"
