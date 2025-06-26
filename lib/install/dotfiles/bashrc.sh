# ------------------------------------------------------
# Install .bashrc
# ------------------------------------------------------

if [ -f $HOME/.bashrc ]; then
    _writeHeader ".bashrc"
    _writeMessage "The script has detected an existing .bashrc file."
    echo
    rm ~/.bashrc
    _writeLogTerminal 0 ".bashrc will be installed"
fi
echo
