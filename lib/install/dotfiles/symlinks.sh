# ------------------------------------------------------
# Install dotfiles
# ------------------------------------------------------
_writeLogHeader "Symlinks"

# Check home
files=$(ls -a $dotfiles_directory)
for f in $files; do
    if [ ! "$f" == "." ] && [ ! "$f" == ".." ] && [ ! "$f" == ".config" ]; then
        if [ -f $dotfiles_directory/$f ]; then
            # echo ":: Checking for file $HOME/$f"
            if [ -L $HOME/$f ]; then
                rm $HOME/$f
            fi
            if [ -f ~/$f ]; then
                rm $HOME/$f
            fi
            ln -s $dotfiles_directory/$f $HOME
            if [ -L $HOME/$f ]; then
                _writeLog 1 "$dotfiles_directory/$f -> $HOME/$f"
            else
                _writeLog 2 "$dotfiles_directory/$f -> $HOME/$f"
            fi
        fi
    fi
done

# Check .config
files=$(ls -a $dotfiles_directory/.config)
for f in $files; do
    if [ ! "$f" == "." ] && [ ! "$f" == ".." ]; then
        if [ -d $dotfiles_directory/.config/$f ]; then
            # echo ":: Checking for directory $HOME/.config/$f"
            if [ -L $HOME/.config/$f ]; then
                rm $HOME/.config/$f
            fi
            if [ -f $HOME/.config/$f ]; then
                rm $HOME/.config/$f
            fi
            if [ -d $HOME/.config/$f ]; then
                rm -rf $HOME/.config/$f
            fi
            ln -s $dotfiles_directory/.config/$f $HOME/.config
            if [ -L $HOME/.config/$f ]; then
                _writeLog 1 "$dotfiles_directory/.config/$f -> $HOME/.config/$f"
            else
                _writeLog 2 "$dotfiles_directory/.config/$f -> $HOME/.config/$f"
            fi
        fi
        if [ -f $dotfiles_directory/.config/$f ]; then
            # echo ":: Checking for file $HOME/.config/$f"
            if [ -L $HOME/.config/$f ]; then
                rm $HOME/.config/$f
            fi
            if [ -f $HOME/.config/$f ]; then
                rm $HOME/.config/$f
            fi
            ln -s $dotfiles_directory/.config/$f $HOME/.config
            if [ -L $HOME/.config/$f ]; then
                _writeLog 1 "$dotfiles_directory/.config/$f -> $HOME/.config/$f"
            else
                _writeLog 2 "$dotfiles_directory/.config/$f -> $HOME/.config/$f"
            fi
        fi
    fi
done
