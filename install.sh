#!/bin/bash

echo "Installation du rice de hrsxnnCode..."

# Installer yay si pas présent
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si
fi

# Installer les paquets
yay -S --needed hyprland kitty fish btop cava fastfetch foot \
    fuzzel starship uwsm htop nvtop spicetify-cli vesktop

# Supprimer les configs par défaut
rm -rf ~/.config/kitty ~/.config/fish ~/.config/hypr ~/.config/btop \
       ~/.config/cava ~/.config/fastfetch ~/.config/fuzzel ~/.config/foot \
       ~/.config/gtk-3.0 ~/.config/gtk-4.0 ~/.config/uwsm ~/.config/starship.toml

# Appliquer les dotfiles
cd ~/dotfiles
stow kitty fish hypr btop cava fastfetch fuzzel gtk uwsm starship

echo "C'est bon, le rice est installé !"

