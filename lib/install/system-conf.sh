#!/bin/bash
# ------------------------------------------------------
# System configuration
# ------------------------------------------------------
_writeLogHeader "System configuration"
_writeHeader "System configuration"

# Show password feedback in terminal
if gum confirm "Do you want to enable password feedback in terminal?"; then
    _writeLogTerminal 0 "Enable password feedback..."

    echo "Defaults pwfeedback" | sudo tee -a /etc/sudoers
fi

