#!/bin/sh
if [[ "$TERM" = "screen"* ]] && [[ -n "$TMUX" ]]; then
  if [ "$1" == "red" ]; then
    tmux select-pane -P 'bg=#331C1F'
  elif [ "$1" == "blue" ]; then
    tmux select-pane -P 'bg=#192436'
  elif [ "$1" == "green" ]; then
    tmux select-pane -P 'bg=#253320'
  else
    tmux select-pane -P 'bg=#282c34'
  fi;
else
  if [ "$1" == "uni" ]; then
    printf '\033]11;#331C1F\007'
  elif [ "$1" == "kan" ]; then
    printf '\033]11;#192436\007'
  elif [ "$1" == "cluster" ]; then
    printf '\033]11;#253320\007'
  elif [ "$1" == "other" ]; then
    printf '\033]11;#253320\007'
  else
    printf '\033]11;#282c34\007'
  fi
fi
