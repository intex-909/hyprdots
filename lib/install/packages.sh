# -----------------------------------------------------
# Select Platform
# -----------------------------------------------------
source $install_directory/packages/platform.sh

# -----------------------------------------------------
# Before start
# -----------------------------------------------------
source $install_directory/packages/required.sh

# -----------------------------------------------------
# Confirm start
# -----------------------------------------------------
source $install_directory/packages/confirm_start.sh

# -----------------------------------------------------
# Install AUR Helper
# -----------------------------------------------------
source $install_directory/packages/aur.sh

# -----------------------------------------------------
# Install packages
# -----------------------------------------------------
source $install_directory/packages/packages.sh

# -----------------------------------------------------
# Check executables of important apps
# -----------------------------------------------------
source $install_directory/packages/diagnosis.sh
