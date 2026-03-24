#!/usr/bin/env bash
set -euo pipefail

printf "Installation du rice de hrsxnnCode...\n"

if [[ ! -f /etc/os-release ]]; then
  echo "Impossible de détecter la distribution (fichier /etc/os-release introuvable)."
  exit 1
fi

# shellcheck disable=SC1091
source /etc/os-release

DISTRO=""
case "${ID:-}" in
  arch|manjaro|endeavouros)
    DISTRO="arch"
    ;;
  ubuntu|debian|pop|linuxmint|elementary)
    DISTRO="debian"
    ;;
  fedora)
    DISTRO="fedora"
    ;;
  *)
    echo "Distribution non supportée par ce script: ${ID:-unknown}";
    echo "Tu peux adapter manuellement l'installation des paquets."
    exit 1
    ;;
 esac

COMMON_PKGS=(git stow kitty fish btop cava fastfetch foot fuzzel starship htop nvtop)
ARCH_ONLY_PKGS=(hyprland uwsm spicetify-cli vesktop)

install_one_apt() {
  local pkg="$1"
  if sudo apt-get install -y "$pkg"; then
    return 0
  else
    echo "[WARN] Paquet non disponible via APT: $pkg"
    return 1
  fi
}

install_one_dnf() {
  local pkg="$1"
  if sudo dnf install -y "$pkg"; then
    return 0
  else
    echo "[WARN] Paquet non disponible via DNF: $pkg"
    return 1
  fi
}

install_arch() {
  if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    (cd /tmp/yay && makepkg -si)
  fi

  yay -S --needed "${COMMON_PKGS[@]}" "${ARCH_ONLY_PKGS[@]}"
}

install_debian() {
  sudo apt-get update
  for pkg in "${COMMON_PKGS[@]}"; do
    install_one_apt "$pkg" || true
  done
  echo "[INFO] Hyprland/uwsm/spicetify-cli/vesktop ne sont pas installés automatiquement sur Debian/Ubuntu."
}

install_fedora() {
  sudo dnf makecache
  for pkg in "${COMMON_PKGS[@]}"; do
    install_one_dnf "$pkg" || true
  done
  echo "[INFO] Hyprland/uwsm/spicetify-cli/vesktop ne sont pas installés automatiquement sur Fedora."
}

case "$DISTRO" in
  arch) install_arch ;; 
  debian) install_debian ;;
  fedora) install_fedora ;;
esac

# Supprimer les configs par défaut
rm -rf ~/.config/kitty ~/.config/fish ~/.config/hypr ~/.config/btop \
       ~/.config/cava ~/.config/fastfetch ~/.config/fuzzel ~/.config/foot \
       ~/.config/gtk-3.0 ~/.config/gtk-4.0 ~/.config/uwsm ~/.config/starship.toml

# Appliquer les dotfiles
cd ~/dotfiles
stow kitty fish hypr btop cava fastfetch fuzzel gtk uwsm starship

echo "C'est bon, le rice est installé !"