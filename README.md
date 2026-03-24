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

- Arch Linux (or an Arch-based distro)
- Git
- Basic build tools (for optional packages)

> If you’re on a fresh install, make sure your system is updated before running the installer.

---

## ⚡ Installation

**SSH**

```bash
git clone git@github.com:hrsxnnCode/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

**HTTPS**

```bash
git clone https://github.com/hrsxnnCode/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

---

## 🚀 Usage

After installation, log out and start a Hyprland session. Most configs are ready out of the box. Customize freely inside each folder.

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

---

## 📌 Notes

These are personal configs and may assume specific packages or fonts. Feel free to fork and adapt.

---

made with 🖤 on Arch Linux