#!/usr/bin/bash

value=$( nordvpn status | grep Status: )
SSID=$( wicd-cli -i | grep 'Connected to' )


if [[ $value =~ "Connected" ]]; then
        nordvpn disconnect
elif [[ $value =~ "Disconnected" ]]; then
        nordvpn connect
        echo $(nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2)
fi
