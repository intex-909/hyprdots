#!/bin/bash

# -----------------------------------------------------
# Install SDDM
# -----------------------------------------------------
source $install_directory/dotfiles/sddm.sh

# -----------------------------------------------------
# Install SDDM Theme
# -----------------------------------------------------
# source $install_directory/dotfiles/sddm-theme.sh

# -----------------------------------------------------
# Check installation of .bashrc
# -----------------------------------------------------
source $install_directory/dotfiles/bashrc.sh

# -----------------------------------------------------
# Install wallpapers
# -----------------------------------------------------
source $install_directory/dotfiles/wallpaper.sh

# -----------------------------------------------------
# Install profile symlinks
# -----------------------------------------------------
source $install_directory/dotfiles/symlinks.sh

# -----------------------------------------------------
# Final cleanup
# -----------------------------------------------------
source $install_directory/dotfiles/cleanup.sh

# -----------------------------------------------------
# Offer Reboot
# -----------------------------------------------------
source $install_directory/dotfiles/reboot.sh
