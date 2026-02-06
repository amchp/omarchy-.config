# Project Rules

## macOS-Style Key Remapping (xremap)

This system uses xremap for macOS-style text navigation. When making changes to keybindings or input configuration:

- The xremap config lives at `~/.config/xremap/config.yml`
- It runs as a systemd user service: `xremap.service`
- ALT + Arrow = word movement, CTRL + Arrow = line movement (opposite of default Linux behavior)
- Never add Hyprland bindings that conflict with ALT+Left, ALT+Right, CTRL+Left, CTRL+Right, ALT+Backspace, or CTRL+Backspace without arrow/backspace — these are intercepted by xremap before reaching apps
- If adding new Hyprland keybindings with CTRL or ALT modifiers, verify they don't conflict with xremap remaps
- After editing `~/.config/xremap/config.yml`, restart with: `systemctl --user restart xremap`
