#!/usr/bin/bash

if ! pipUpdates=$( pip list -o 2> /dev/null | wc -l ); then
    updates=0
fi

updates=$pipUpdates

if [[ "$updates" -gt 0 ]]; then
    echo "%{F#ffa700}%{u#ffa700}%{F-}%{-u}"
else
    echo ""
fi
