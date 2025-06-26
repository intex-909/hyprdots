# ------------------------------------------------------
# Clean up
# ------------------------------------------------------
_writeLogHeader "Finalizing"
_writeHeader "Finalizing"

# Check for ttf-ms-fonts
if [[ $(_isInstalled "ttf-ms-fonts") == 0 ]]; then
    _writeLogTerminal 0 "The script has detected ttf-ms-fonts. This can cause conflicts with icons in Waybar."
    if gum confirm "Do you want to uninstall ttf-ms-fonts?"; then
        _removePackage "ttf-ms-fonts"
    fi
fi

# Check for running NetworkManager.service
if [[ $(systemctl list-units --all -t service --full --no-legend "NetworkManager.service" | sed 's/^\s*//g' | cut -f1 -d' ') == "NetworkManager.service" ]]; then
    _writeLog 0 "NetworkManager.service already running."
else
    sudo systemctl enable NetworkManager.service
    sudo systemctl start NetworkManager.service
    _writeLog 1 "NetworkManager.service activated successfully."
fi

# Check for running bluetooth.service
if [[ $(systemctl list-units --all -t service --full --no-legend "bluetooth.service" | sed 's/^\s*//g' | cut -f1 -d' ') == "bluetooth.service" ]]; then
    _writeLog 0 "bluetooth.service already running."
else
    sudo systemctl enable bluetooth.service
    sudo systemctl start bluetooth.service
    _writeLog 1 "bluetooth.service activated successfully."
fi

# Create default folder structure
xdg-user-dirs-update
_writeLog 1 "Clean up done"
