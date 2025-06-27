#!/bin/bash
# -----------------------------------------------------
# Folders
# -----------------------------------------------------
dir=$(dirname "$(realpath $0)")

# Filesystem
base_directory="$(pwd)"
bin_directory="$base_directory/bin"
share_directory="$base_directory/share"
lib_directory="$base_directory/lib"

install_directory="$lib_directory/install"
includes_directory="$lib_directory/includes"
dotfiles_directory="$base_directory/dotfiles"
wallpaper_directory="$base_directory/wallpapers"
packages_directory="$share_directory/packages"

hyprland_install="$HOME/.hyprland-install"
backup_directory="$hyprland_install/backup"
archive_directory="$hyprland_install/archive"
log_folder="$hyprland_install/log"

# -----------------------------------------------------
# Define script parameters
# -----------------------------------------------------
install_platform="arch"
install_mode="full"

# -----------------------------------------------------
# Colors
# -----------------------------------------------------
source $includes_directory/colors.sh

# -----------------------------------------------------
# Library
# -----------------------------------------------------
source $includes_directory/library.sh

# -----------------------------------------------------
# Log File
# -----------------------------------------------------
source $includes_directory/log.sh

# -----------------------------------------------------
# Run full installation
# -----------------------------------------------------
_run_fullinstall() {
    source $install_directory/header.sh
    source $install_directory/packages.sh
    source $install_directory/dotfiles.sh
}

_run_fullinstall
