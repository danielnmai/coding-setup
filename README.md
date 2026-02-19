# dotfiles

Personal config files tracked with a bare git repo. Setup approach from:
https://www.atlassian.com/git/tutorials/dotfiles

## Configs tracked

- **zsh** — `.zshrc`, `.zprofile`
- **tmux** — `.tmux.conf`, `.tmux/plugins/` (tpm, tmux-sensible, tmux-powerline)
- **neovim** — `.config/nvim/`
- **karabiner** — `.config/karabiner/karabiner.json`
- **starship** — `.config/starship.toml`
- **kitty** — `.config/kitty/kitty.conf`
- **tmux-powerline** — `.config/tmux-powerline/`
- **rectangle** — `RectangleConfig.json`

## New machine setup

### 1. Clone the bare repo

```bash
git clone --bare git@github.com:danielnmai/coding-setup.git ~/.cfg
```

### 2. Set up the `config` alias

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Add this to your `.zshrc` so it persists.

### 3. Check out dotfiles

```bash
config checkout
```

If there are conflicts with existing files, back them up first:

```bash
mkdir -p ~/.config-backup && \
config checkout 2>&1 | grep "\s\+\." | awk '{print $1}' | xargs -I{} mv {} ~/.config-backup/{}
config checkout
```

### 4. Hide untracked files in status

```bash
config config --local status.showUntrackedFiles no
```

### 5. Set up secrets

Create `~/.secrets` (not tracked) with any tokens or keys:

```bash
touch ~/.secrets
chmod 600 ~/.secrets
```

Add secrets as exports, e.g.:

```bash
export NPM_TOKEN_GITHUB="..."
```

### 6. Install tmux plugins

```bash
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```

### 7. Import Rectangle config

Install Rectangle, then use **Preferences → Import** to load `~/RectangleConfig.json`.
