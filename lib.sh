#!/bin/bash

link_config_files() {
    local source="$1"
    local target="$2"

    #source and target are folders and target is not a symlink
    #backup of target folder

    if [[ -d "$source" && -d "$target" && ! -L "$target" ]]; then
        echo "${target} is a regualar folder."
        mv "$target"{,.back}
    fi

    #source and target are files and target is not symlink
    #backup target file

    if [[ -f "$source" && -f "$target" && ! -L "$target" ]]; then
        echo "${target} is a regualar file."
        mv "$target"{,.back}
    fi

    #target is a symlink but is not link to the source
    #unlink target
    if [[ -L "$target" && $(readlink -f "$target") != "$source" ]]; then
        echo "${target} is a symb link, but is not link to source."
        unlink "$target"
    fi
    #target is not symlink
    #symlink target to source
    if [[ ! -L "$target" ]]; then
        echo "Linking ${source}"
        ln -s "$source" "$target"
    fi
}
