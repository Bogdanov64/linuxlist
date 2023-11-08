#!/bin/bash

options=("ubuntu" "archlinux" "fedora" "Quit")

select opt in "${options[@]}"; do
    case $opt in
        "ubuntu")
            echo "You selected ubuntu"
proot-distro login ubuntu --shared-tmp
            ;;
        "archlinux")
            echo "You selected archlinux"
proot-distro login archlinux --shared-tmp
            ;;
        "fedora")
            echo "You selected fedora"
proot-distro login fedora --shared-tmp
            ;;
        "Quit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac                                                          done#!/bin/bash

options=("ubuntu" "archlinux" "fedora" "Quit")

select opt in "${options[@]}"; do
    case $opt in
        "ubuntu")
            echo "You selected ubuntu”
proot-distro login ubuntu –shared-tmp
            ;;
        "archlinux")
            echo "You selected archlinux”
proot-distro login archlinux –shared-tmp
            ;;
        "fedora")
            echo "You selected fedora”
proot-distro login fedora –shared-tmp
            ;;
        "Quit")
            echo "Exiting...”
            break
            ;;
        *)
            echo "Invalid option”
            ;;
    esac                                                          done
