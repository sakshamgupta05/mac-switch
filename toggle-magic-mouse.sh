#!/usr/bin/env bash
# MM="AA:BB:CC:DD:EE:FF"  # ← your mouse’s MAC
# if blueutil --is-connected "$MM"; then
#   echo "Disconnecting $MM"
#   blueutil --disconnect "$MM"
# else
#   echo "Connecting $MM"
#   blueutil --connect    "$MM"
# fi

MM="${MS_MAC_ADDRESS}"
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
