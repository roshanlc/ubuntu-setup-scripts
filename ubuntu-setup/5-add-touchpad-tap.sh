#!/bin/sh
sudo mkdir /etc/X11/xorg.conf.d
sudo echo "Section \"InputClass\"
    Identifier \"touchpad\"
    Driver \"libinput\"
    MatchIsTouchpad \"on\"
    Option \"Tapping\" \"on\"
    Option \"ScrollMethod\" \"edge\"
EndSection" > /etc/X11/xorg.conf.d/30-touchpad.conf

