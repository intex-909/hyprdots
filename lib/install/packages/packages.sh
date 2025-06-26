# ------------------------------------------------------
# Install packages
# ------------------------------------------------------
_writeLogHeader "Packages"
_writeHeader "Packages"

# Hyprland
source $packages_directory/$install_platform/hyprland.sh
_installPackages "${packages[@]}"

# Base
source $packages_directory/$install_platform/base.sh
_installPackages "${packages[@]}"

# Terminal tools
source $packages_directory/$install_platform/terminal-tools.sh
_installPackages "${packages[@]}"

# additional
source $packages_directory/$install_platform/addons.sh
_installPackages "${packages[@]}"
