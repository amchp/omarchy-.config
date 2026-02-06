# Omarchy .config

## Setup

```bash
git clone https://github.com/amchp/omarchy-.config.git ~/.config
```

## Chrome (replacing Chromium)

```bash
yay -S google-chrome
sudo pacman -Rns omarchy-chromium --noconfirm
xdg-settings set default-web-browser google-chrome.desktop
xdg-mime default google-chrome.desktop x-scheme-handler/http
xdg-mime default google-chrome.desktop x-scheme-handler/https
```
