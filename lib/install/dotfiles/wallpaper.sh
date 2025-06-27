# ------------------------------------------------------
# Install wallpapers
# ------------------------------------------------------
_writeLogHeader "Wallpaper"

_writeHeader "Wallpapers"
mkdir -p $HOME/wallpapers
cp -r $wallpaper_directory/* ~/wallpapers/
_writeLogTerminal 1 "Default wallpapers installed successfully."

echo
