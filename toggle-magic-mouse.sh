#!/usr/bin/env bash

# ensure brew dirs are in PATH even in Shortcuts/Automator
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

MM="<<MAC_ADDRESS>>"

res=$(blueutil --is-connected "$MM")
if [[ "$res" = '1' ]]
then
  blueutil --unpair "$MM"
else
  blueutil --unpair "$MM"
  sleep 1
  blueutil --pair "$MM"
  sleep 1
  blueutil --connect "$MM"
fi
