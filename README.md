# Omarchy .config

## Setup

```bash
git clone https://github.com/amchp/omarchy-.config.git ~/.config
```

## macOS-Style Text Navigation (xremap)

System-wide key remapping for macOS-style text editing shortcuts using [xremap](https://github.com/k0kubun/xremap).

```bash
yay -S xremap-wlroots-bin
systemctl --user enable --now xremap.service
```

Config: `~/.config/xremap/config.yml`

| Shortcut | Action |
|----------|--------|
| ALT + Arrow Left/Right | Move by word |
| CTRL + Arrow Left/Right | Move to line start/end |
| SHIFT + ALT + Arrow Left/Right | Select by word |
| SHIFT + CTRL + Arrow Left/Right | Select to line start/end |
| ALT + Backspace | Delete word backward |
| CTRL + Backspace | Delete to line start |

## Chrome (replacing Chromium)

```bash
yay -S google-chrome
sudo pacman -Rns omarchy-chromium --noconfirm
xdg-settings set default-web-browser google-chrome.desktop
xdg-mime default google-chrome.desktop x-scheme-handler/http
xdg-mime default google-chrome.desktop x-scheme-handler/https
```
