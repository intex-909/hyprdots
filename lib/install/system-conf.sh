#!/bin/bash
# ------------------------------------------------------
# System configuration
# ------------------------------------------------------
_writeLogHeader "System configuration"
_writeHeader "System configuration"

# Show password feedback in terminal
if gum confirm "Do you want to enable password feedback in terminal?"; then
    _writeLogTerminal 0 "Enable password feedback..."

    sudo echo "Defaults pwfeedback" >> /etc/sudoers
fi

