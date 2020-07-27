#!/bin/sh
# This script was made to install the Goshujinsama's green tea theme.
# Script made by Guadaluṕe Fernando Escutia Rodriguez AKA Goshujinsama88.

ins=0
echo "This is a script to install Goshujinsama's green tea Cinnamon theme."
while [ $ins -eq 0 ]; do
    echo "If you want to install this theme enter (y), or enter (q) to exit."
    read yas
    if [ "$yas" = "y" ] || [ "$yas" = "q" ]; then
            if [ "$yas" = "y" ]; then
                    ins=1
            elif [ "$yas" = "q" ]; then 
                    exit 1
            else
                echo "No valid entry, try again"
            fi
    else 
        echo "No valid entry, try again"
    fi
done
clear
echo "INFO"
echo "Goshujinsama's green tea is a theme for Cinnamon desktop manager, is based in the
Cinnamon theme from Matcha GTK theme by vinceliuice. This theme is aimmed to Linux Mint,
so includes a modification of the GTK Theme for Nemo and other programs to match the
Cinnamon Theme.\n"
echo "This theme doesn't recieve any support from vinceliuice or the Matcha GTK Theme team.\n"
echo "This theme was done modifiyng the css files directly, so I think maybe this will be
the only release that I work that way. In future I like to work as the HACKING file in Matcha
GTK theme says, but maybe that modification will be in another repository.\n"
echo "This theme was done by Guadalupe Fernando Escutia Rodriguez AKA Goshujinsama88.\n"
echo "Goshujinsama's green tea  Copyright (C) 2020  Guadalupe Fernando Escutia Rodriguez
This program comes with ABSOLUTELY NO WARRANTY. This is free software, and you are welcome
to redistribute it under certain conditions.\n"
echo -n "Press [ENTER] to read the license agreement (press q when you finish reading):"
read var_name
clear
less ./LICENSE
while [ $ins -eq 1 ]; do
    echo "Do you accept the terms of the license? enter yes(y) to continue,"
    echo "or enter no(n) to exit."
    read yas
    if [ "$yas" = "y" ] || [ "$yas" = "n" ]; then
            if [ "$yas" = "y" ]; then
                    ins=0
            elif [ "$yas" = "n" ]; then 
                    exit 1
            else
                echo "No valid entry, try again"
            fi
    else 
        echo "No valid entry, try again"
    fi
done
cat ./icon.txt
echo "Installing Theme, please wait..."
mkdir ~/.themes/"Goshujinsama's green tea"
cp -R cinnamon ~/.themes/"Goshujinsama's green tea"
cp -R gtk-2.0 ~/.themes/"Goshujinsama's green tea"
cp -R gtk-3.0 ~/.themes/"Goshujinsama's green tea"
cp index.theme ~/.themes/"Goshujinsama's green tea"
echo "All done, installation finished."
sleep 5
exit 1