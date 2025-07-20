# mac-switch

## Steps

#### Install blueutil

```bash
brew install blueutil
```

#### Get your mouse's mac address

```bash
blueutil --paired | grep "Magic Mouse"
```

#### Copy toggle script to bin

```bash
cp ./toggle-magic-mouse.sh ~/bin/
```

#### [DEPRECATED] Change the mac address to what you saw earlier

```bash
"AA:BB:CC:DD:EE:FF" --> "${YOUR_MAC_ADDRESS}"
```

#### Add the following to your .bashrc/.zshrc file
```bash
export MS_MAC_ADDRESS="{{YOUR_MAC_ADDRESS}}"

# Also add bin to path if not there
export PATH=$PATH:~/bin
```
