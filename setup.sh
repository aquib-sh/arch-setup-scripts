#!/bin/bash 

## Author: Shaikh Aquib
#
#  Script to setup and configure Arch Linux easily
#


printf "========================== ARCH LINUX SETUP SCRIPT ===========================\n\n"

TAR_PACKAGES_INSTALL_DIR=$HOME/arch_script_installations
USER_PROFILE=$HOME/.bashrc

function main() {
    if [! test -d $TAR_PACKAGES_INSTALL_DIR]; then
        mkdir $TAR_PACKAGES_INSTALL_DIR
    fi

    printf "1. Install and Configure Text Editors ?
            (VIM, VSCode, Zettlr) [Y/n]"
    read response
    if [$response != "n"] && [$response != "N"]; then
        setup_text_editors
    fi

    printf " Install important packages like tools, multimedia and documents:
           (VLC, LibreOffice, various fonts in different languages, etc)"
    read response
    if [$response != "n"] && [$response != "N"]; then
        install_imp_packages
    fi

    printf "Install Editing softwares
           (GIMP, Krita, Obs-Studio, OpenShot, Audacity)"
    read response
    if [$response != "n"] && [$response != "N"]; then
        install_editing_softwares
    fi

    printf "Configure yay for installing AUR packages"
    read response
    if [$response != "n"] && [$response != "N"]; then
        configure_yay
    fi
}

function setup_text_editors() {
    VSCODE_INSTALL_PATH=$TAR_PACKAGES_INSTALL_DIR/code-stable-x64.tar.gz
    pacman -Syu --noconfirm vim zettlr
    
    echo "[+] Creating .vimrc in $HOME"
    if [! test -f $HOME/.vimrc]; then
        cp .vimrc $HOME/.vimrc
    else
        echo "[+] $HOME/.vimrc already exists, leaving it untouched"
    fi
    
    echo "[+] Downloading VSCode"
    wget -O $VSCODE_INSTALL_PATH "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"
    wget -O $VSCODE_INSTALL_PATH/code-stable.png "https://code.visualstudio.com/assets/images/code-stable.png"
    echo "PATH:$PATH:$VSCODE_INSTALL_PATH/bin"  | tee -a $USER_PROFILE
}

function install_imp_packages() {
}

function install_editing_softwares() {
}

function configure_yay() {
}

main
