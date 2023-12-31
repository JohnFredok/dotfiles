# Setting Up Fedora

This guide is aimed at setting up a fresh installation of [Fedora](https://getfedora.org/).

## Install and Upgrade Base Packages

```bash
sudo dnf upgrade -y --refresh
sudo dnf install -y findutils zsh make git neovim vim curl wget bash mold
sudo dnf autoremove -y
```

## Clone Dotfiles and Bootstrap

```bash
( cd ~/src/dotfiles; make )
```

## Change Default Shell

```bash
chsh -s $(which zsh)
```

Log out and log back in.

## Execute Bootstrap Script

Now that our dotfiles are loaded, we can bootstrap our system.

```bash
~/src/dotfiles/os/fedora/scripts/bootstrap.sh
```

Log out and log back in.

## Install GUI and Optional Applications

Here are some examples:

- Google Chrome (Flatpak or RPM)
- Zoom (Flatpak or RPM)
- Slack (Flatpak or RPM)
- VS Code (Flatpak or RPM)
- CLion
- Tailscale
- [System76 Driver](https://support.system76.com/articles/system76-driver/)
- [System76 Software](https://support.system76.com/articles/system76-software/)

## Setup GNOME Terminal

Use [Gogh](https://mayccoll.github.io/Gogh/) to customize terminal with a theme (e.g. Atom One Light).
You may have to create an extra profile first in your terminal preferences.
