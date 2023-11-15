#!/bin/bash

if [ -z "$1" ]; then
    echo required tmux session name.
    exit1
fi

echo New tmux session name is "'$1'". OK?
select yn in Yes No; do
    echo "$yn"
    if [ "$yn" == "Yes" ]; then
        break
    elif [ "$yn" == "No" ]; then
        echo "User exit."
        exit
    else
        echo 1 or 2 only.
    fi
done
NEW_SESSION="$1"
shift

#tmux start-server
tmux new-session -d -n "${NEW_SESSION}-window" -s "$NEW_SESSION"

for i in $*
do
    tmux select-pane -t 0
    tmux split-window -v -t "${NEW_SESSION}-window"
    tmux send-keys "ssh $i" C-m
    tmux select-layout -t "${NEW_SESSION}-window" main-horizontal
done
tmux kill-pane -t 0

tmux select-window -t "${NEW_SESSION}-window"
tmux select-pane -t 0
tmux select-layout -t "${NEW_SESSION}-window" main-horizontal
tmux set-window-option synchronize-panes on
tmux attach-session -t "$NEW_SESSION"
