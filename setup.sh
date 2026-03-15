set -x

ANDROID_PKG="
    neovim
    git
    clang
    make
"

LINUX_PKG="
    neovim
    git
    gcc
    make
"

case "$(uname -o)" in
    "Android")
        pkg install $ANDROID_PKG
    ;;
    "Linux")
        if ! [[ $0 == "" ]]; then
            case $0 in
                "void")
                    sudo xbps-install $LINUX_PKG
                    ;;

                "arch")
                    sudo pacman -S $LINUX_PKG
                    ;;

                "alpine")
                    sudo apk add $LINUX_PKG
                    ;;
                # Add more os here
            esac
        fi
    ;;
    *)
        echo "Unknown host"
    ;;
esac
