# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------
_writeLogHeader "Confirm installation/update"

if gum confirm "DO YOU WANT TO INSTALL THE REQUIRED PACKAGES FOR HYPRLAND?"; then
    _writeLogTerminal 0 "Installation started"
elif [ $? -eq 130 ]; then
    _writeCancel
    exit 130
else
    _writeCancel
    exit
fi
echo
