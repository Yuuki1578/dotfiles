#!/usr/bin/env bash

test $use_verbose && set -x

CFGPATH="$HOME/.config"
CFGREPO="$(realpath ./.config)"

HOST="$(uname -o)"
PKGDEPS=""

makeln() {
	ln -s $CFGREPO $CFGPATH
}

setup_config() {
    if ! [ -e $CFGPATH ]; then
        ln -s $CFGREPO $CFGPATH
    else
        printf "\"$CFGPATH\" exist, replace? [y/n]: "
        read inp
        case $inp in
            "y" | "Y" | "1")
            rm -rf $CFGPATH
            makeln
            ;;

            *)
            echo "Aborted"
            ;;
        esac
    fi
}

android_install() {
    if ! [ $HOST == "Android" ]; then
        return 1
    fi

    pkg update && pkg upgrade
    pkg install $PKGDEPS -y
}

linux_install() {
    printf "Command of your package manager: "
    read pm

    pm_args=""

    case $pm in
        "pacman" | "xbps-install")
            pm_args="-S"
        ;;

        "apt")
            pm_args="install"
        ;;

        "apk")
            pm_args="add"
        ;;

        *)
            echo "Unknown package manager, aborting"
            return 1
        ;;
    esac

    sudo $pm $pm_args $PKGDEPS
}

setup_pkg() {
    case $HOST in
        "Android")
            PKGDEPS="
            neovim
            git
            clang
            pyrefly
            uv
            lua-language-server
            "

            android_install
        ;;

        *)
            # Not all distro had clangd merge with clang package.
            PKGDEPS="
            neovim
            git
            gcc
            uv
            lua-language-server
            "

            linux_install
        ;;
    esac
}

case $1 in
    "--config" | "-C")
        setup_config
    ;;

    "--pkg" | "-P")
        setup_pkg
    ;;

    "--help" | "-H")
        printf "\
Usage:
$0               = setup all
$0 --config | -C = setup only config files
$0 --pkg    | -P = setup only packages
$0 --help   | -H = display help message

Env:
use_verbose=true = make the script more verbose
"

    ;;

    *)
        setup_config
        setup_pkg
    ;;
esac
