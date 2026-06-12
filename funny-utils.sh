#!/bin/bash

DEPS="figlet cowsay sl toilet rig cmatrix fortune"

echo "Checking dependencies..."
if which "$DEPS" >/dev/null; then
    echo -n "Depenedencies exist!"

    echo "Funny Utils - Portal for funny terminal tools"
    echo -n "What do you want to use? Select a number:
    1. Figlet
    2. sl
    3. Cowsay
    4. Toilet
    5. Rig
    6. CMatrix
    7. Fortune

    Choice: "

    read CHOICE

    if [ "$CHOICE" = "1" ]; then
        echo "--------------------------------"
        echo "Figlet:"
        echo "Figlet lets you make small, big."
        echo "Printing figlet help... use it to formulate a command "
        figlet --help
    fi

    if [ "$CHOICE" = "2" ]; then
        echo "--------------------------------"
        echo "sl:"
        echo "sl is a tool that makes a small train drive across the screen"
        echo "Printing sl help... use it to formulate a command "
        echo -n "sl only has a man page, proceed? [y/N] "
        read ya
        if [ "$ya" = "y" ] || [ "$ya" = "Y" ]; then
            man sl
        else
            echo "Not printing man page..."
        fi
    fi

    if [ "$CHOICE" = "3" ]; then
        echo "--------------------------------"
        echo "Cowsay:"
        echo "Cowsay let's you make a cow-say ;) "
        echo "Printing Cowsay help... use it to formulate a command "
        cowsay --help
    fi

    if [ "$CHOICE" = "4" ]; then
        echo "--------------------------------"
        echo "Toilet:"
        echo "Toilet lets you enlarge words, with different characters"
        echo "Printing toilet help ;)... use it to formulate a command "
        toilet --help
    fi

    if [ "$CHOICE" = "5" ]; then
        echo "--------------------------------"
        echo "Rig:"
        echo "Rig generates fake identity's..."
        echo "Printing rig help... use it to formulate a command "
        rig --help
    fi

    if [ "$CHOICE" = "6" ]; then
        echo "--------------------------------"
        echo "CMatrix:"
        echo "Printing CMatrix help... use it to formulate a command "
        cmatrix --help
    fi

    if [ "$CHOICE" = "7" ]; then
        echo "--------------------------------"
        echo "Fortune:"
        echo "Fortune dispenses funny quotes"
        echo "Printing fortune help... use it to formulate a command "
        fortune --help
    fi
    echo "--------------------------------"
else
    echo -n "You must install the necessary dependencies! Proceed? [y/N]: "
    read DEPCHOICE
    if [ "$DEPCHOICE" = "Y" ] || [ "$DEPCHOICE" = "y" ]; then
        pkg install $DEPS
        echo "Done..."
    else
        echo "Not installing dependencies... The script won't work..."
    fi
fi
