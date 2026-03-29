<div align="center">

# 🌙 hrsxnnCode — dotfiles

Minimal, fast, and clean Arch Linux + Hyprland setup.

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)
![Fish](https://img.shields.io/badge/Fish_Shell-4AAE46?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Kitty](https://img.shields.io/badge/Kitty-F7C948?style=for-the-badge&logo=gnome-terminal&logoColor=black)

</div>

---

## ✨ Overview

This repository contains my personal configuration files for a lightweight Arch Linux desktop built around Hyprland. It focuses on a clean UI, fast workflow, and minimal dependencies.

---

## ✅ Supported distros

- **Arch / Arch-based** (recommended): full support, best experience.
- **Debian/Ubuntu-based**: supported, but some packages may be missing.
- **Fedora**: supported, but some packages may be missing.

> On non-Arch distros, Hyprland/uwsm/spicetify-cli/vesktop are not installed automatically. Install them manually if needed.

---

## 🖥️ Setup

| Component | Tool |
|-----------|------|
| WM | Hyprland |
| Terminal | Kitty |
| Shell | Fish |
| Launcher | Fuzzel |
| Fetch | Fastfetch |
| Prompt | Starship |
| Visualizer | Cava |
| Monitor | Btop |

---

## ✅ Prerequisites

- Arch Linux (or an Arch-based distro) **recommended**
- Git
- Basic build tools (for optional packages)

**Recommended before install (Arch only)**

```bash
sudo pacman -Syu
```

---

## ⚡ Installation (step by step)

### 1) Clone the repository

**SSH**

```bash
git clone git@github.com:hrsxnnCode/dotfiles.git ~/dotfiles
```

**HTTPS**

```bash
git clone https://github.com/hrsxnnCode/dotfiles.git ~/dotfiles
```

### 2) Enter the folder

```bash
cd ~/dotfiles
```

### 3) Make the installer executable

```bash
chmod +x install.sh
```

### 4) Run the installer

```bash
./install.sh
```

---

## 🚀 Usage (after install)

1. Log out of your current session.
2. Start a **Hyprland** session from your display manager (or run `Hyprland` from TTY).
3. Open your terminal (Kitty) and verify the setup:
   - `fastfetch` for system info
   - `btop` for system monitor
   - `cava` for audio visualizer

---

## 📁 Structure

```text
dotfiles/
├── btop/
├── cava/
├── fastfetch/
├── fish/
├── fuzzel/
├── gtk/
├── hypr/
├── kitty/
├── starship/
├── uwsm/
└── install.sh
```

---

## 🛠️ Customization

- **Hyprland**: keybindings, animations, and monitors in `hypr/`
- **Fish**: aliases, functions, and plugins in `fish/`
- **Kitty**: theme and font config in `kitty/`
- **Starship**: prompt styling in `starship/`

Tip: you can edit any config file and reload the app (or restart Hyprland) to see changes.

---

## 🙏 Credits

Inspired by the Caelestia dots.

---

## 📌 Notes

These are personal configs and may assume specific packages or fonts. Feel free to fork and adapt.





