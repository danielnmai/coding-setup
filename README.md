# coding-setup

This holds all of my configs to make it easier when I switch to a new environment, i.e. new Mac or new Windows PC.

## Setup on a new machine

Clone this repo, then create symlinks from the config locations to the files in this repo:

```bash
# Karabiner (keyboard customization)
ln -s /path/to/coding-setup/karabiner.json ~/.config/karabiner/karabiner.json

# Starship (shell prompt)
ln -s /path/to/coding-setup/starship.toml ~/.config/starship.toml

# Neovim
ln -s /path/to/coding-setup/nvim ~/.config/nvim

# tmux
ln -s /path/to/coding-setup/.tmux.conf ~/.tmux.conf
ln -s /path/to/coding-setup/.tmux ~/.tmux

# Rectangle (window management) - if installed
ln -s /path/to/coding-setup/RectangleConfig.json ~/Library/Application\ Support/Rectangle/RectangleConfig.json
```

**Note:** Remove or back up any existing config files before creating symlinks.

## Karabiner

Always edit `karabiner.json` directly in this repo. **Do not use the Karabiner GUI to add/modify rules** — Karabiner breaks the symlink every time it writes the config (it does an atomic rename instead of writing in-place). If you do use the GUI, restore the symlink afterwards:

```bash
ln -sf /path/to/coding-setup/karabiner.json ~/.config/karabiner/karabiner.json
```
