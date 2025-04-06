#!/bin/zsh

SCRIPT_DIR=$HOME/dotfiles

DOT_FOLDERS="zsh"

for folder in $(echo $DOT_FOLDERS | sed "s/,/ /g"); do
    echo "[+] Folder :: $folder"
    stow --ignore=README.md --ignore=LICENSE \
        -t $HOME -D $folder
    stow -v -t $HOME $folder --adopt
done

# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
