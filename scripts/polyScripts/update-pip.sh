#!/bin/zsh

if ! pipUpdates=$( pip list -o 2> /dev/null | wc -l ); then
    updates=0
fi

updates=$( pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}'))

if [[ "$pipUpdates" -gt 0 ]]; then
    sudo pip install --user -U updates
fi

#pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
