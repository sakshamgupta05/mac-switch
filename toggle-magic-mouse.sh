#!/usr/bin/env bash
# MM="AA:BB:CC:DD:EE:FF"  # ← your mouse’s MAC
MM="${MS_MAC_ADDRESS}"
if blueutil --is-connected "$MM"; then
  echo "Disconnecting $MM"
  blueutil --disconnect "$MM"
else
  echo "Connecting $MM"
  blueutil --connect    "$MM"
fi
