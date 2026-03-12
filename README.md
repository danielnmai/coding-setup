# Setting up coding environment

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
git clone --bare git@github.com:danielnmai/dotfiles.git ~/.cfg
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

### 5. Install dependencies

#### Core tools

**Debian/Ubuntu:**

```bash
sudo apt install git zsh tmux neovim curl
chsh -s $(which zsh)
```

**macOS (Homebrew):**

```bash
brew install zsh tmux neovim curl
```

> git is included with Xcode Command Line Tools (`xcode-select --install`).

#### Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Then install the custom plugins:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
```

#### Starship prompt

```bash
curl -sS https://starship.rs/install.sh | sh
```

#### fzf

**Debian/Ubuntu:**

```bash
sudo apt install fzf
```

**macOS:**

```bash
brew install fzf
```

#### nvm (optional)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

### 6. Set up secrets

Create `~/.secrets` (not tracked) with any tokens or keys:

```bash
touch ~/.secrets
chmod 600 ~/.secrets
```

Add secrets as exports, e.g.:

```bash
export NPM_TOKEN_GITHUB="..."
```

### 7. Install tmux plugins

Install tpm (Tmux Plugin Manager), then fetch plugins:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```

### 8. Import Rectangle config (macOS only)

Install Rectangle, then use **Preferences → Import** to load `~/RectangleConfig.json`.
