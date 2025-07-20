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

#### Install script

```bash
./install-toggle-magic-mouse.sh "<<MAC_ADDRESS>>"
```

## Keyboard Shortcut

### Shortcuts App (Preffered)

In macOS Ventura+ with the Shortcuts app:

1. Open Shortcuts, click ➕ to make a new shortcut
2. Search for “Run Shell Script” and drag it in
3. Paste:
   ```bash
   ~/bin/toggle-magic-mouse.sh
   ```
4. Click the “i” (info), enable “Use as Quick Action” and “Receives no input”
5. Still in the info pane, click “Add Keyboard Shortcut” and press your combo `⌃⌥⌘M`
6. Done—pressing that combo anywhere will fire your script.

Either of these will give you a true global hot-key on your Keychron (or any Mac keyboard) to flip your Magic Mouse between machines.

---

### Quick Action (Old)

Here’s one easy macOS-native way—using a “Quick Action” (formerly Automator Service) plus a global shortcut. You don’t need any extra apps beyond what ships with macOS.

1. Make sure your toggle script is executable and lives in a stable path, e.g.

   ```bash
   chmod +x ~/bin/toggle-magic-mouse.sh
   ```

2. Open Automator (Spotlight → “Automator”) and choose “New Document” → “Quick Action”.

3. At the top of the workflow, set:
   • Workflow receives: “no input”  
   • In: “any application”

4. From the library pane, drag in “Run Shell Script”.  
   • Shell: /bin/bash (or /bin/zsh if that’s your default)  
   • Pass input: “as arguments” (though we won’t actually use any)

5. In the script box type a single line to call your script:

   ```bash
   ~/bin/toggle-magic-mouse.sh
   ```

6. Save the Quick Action (⌘-S) and give it a name like “Toggle Magic Mouse”.

7. Open System Settings → Keyboard → Keyboard Shortcuts → “Services” (or “Quick Actions” on newer macOS).  
   You’ll see your “Toggle Magic Mouse” listed, probably under “General” or “User-Defined”.  
   Click “none” next to it and press your desired shortcut, e.g. ⌃⌥⌘M.

8. Close Settings. Now whenever you press your chosen combo—whether on your Keychron K3 Pro or any other Mac keyboard—it will run the toggle script and swap your Magic Mouse connection.
