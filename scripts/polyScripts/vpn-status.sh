#!/usr/bin/sh

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)
output=$( nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2 )

if [ "$STATUS" = "Connected" ]; then
    echo  "%{F#687793}%{u#687793}%{+u} $output%{F-}%{-u}"
else
    echo "%{F#42485d}%{u#42485d}%{+u}%{F-}%{-u}"
fi
