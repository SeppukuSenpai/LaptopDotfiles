#!/usr/bin/bash

pikupdates=$(( pikaur -Qqu | grep -C ))

if ! pikupdates=$(pikaur -Qqu 2> /dev/null | wc -l ); then
    allupdates=0
fi

updates=$pikupdates

if [[ "$updates" -gt 0 ]]; then
    echo "%{F#00ffff}%{u#00ffff}%{F-}%{-u}"
else
    echo ""
fi
