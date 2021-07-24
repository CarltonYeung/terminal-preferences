#!/bin/bash

DEFAULT_TARGET_DIR=./
target_dir="${1:-$DEFAULT_TARGET_DIR}"
[ ! -d $target_dir ] && echo "'$target_dir': Not a valid directory" && exit 1

files=(~/.bash_aliases ~/.bashrc ~/.profile ~/.tmux.conf ~/.vimrc)

for file in "${files[@]}"; do
    if cp $file $target_dir; then
        echo "Copied $file"
    fi
done

