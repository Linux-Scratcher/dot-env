#!/bin/bash

link_config_files() {
    local source="$1"
    local target="$2"

    #source and target are files and target is not a symlink
    #backup of target folder

    if [[ -d "$source" && -d "$target" && ! -L "$target" ]]; then
        echo "${target} is a regualar folder."
    fi



    #source and target are files and target is not symlink
    #backup target file

    #target is a symlink but is not link to the source
    #unlink target

    #target is not symlink
    #symlink target to source
}