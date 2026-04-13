# VSCode Neovim Keymaps

Custom keybindings for the VSCode Neovim extension. Leader key is `<Space>`.

## Clipboard

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>y` | n, v | Yank to system clipboard |
| `<leader>p` | n, v | Paste from system clipboard |

## Visual Mode Helpers

| Keymap | Mode | Action |
|--------|------|--------|
| `<` | v | Indent left and keep selection |
| `>` | v | Indent right and keep selection |
| `J` | v, x | Move selected lines down |
| `K` | v, x | Move selected lines up |
| `p` | v | Paste without overwriting yank register |

## General

| Keymap | Mode | Action |
|--------|------|--------|
| `<Esc>` | n | Clear search highlighting |

## VSCode Commands

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>t` | n, v | Toggle terminal |
| `<leader>b` | n, v | Toggle breakpoint |
| `<leader>d` | n, v | Show hover (documentation) |
| `<leader>a` | n, v | Quick fix menu |
| `<leader>sp` | n, v | Show problems panel |
| `<leader>cn` | n, v | Clear all notifications |
| `<leader>ff` | n, v | Quick open (find files) |
| `<leader>cp` | n, v | Command palette |
| `<leader>pr` | n, v | Run code (code-runner) |
| `<leader>fd` | n, v | Format document |

## Harpoon

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>ha` | n, v | Add current editor to harpoon |
| `<leader>ho` | n, v | Open harpoon quick pick |
| `<leader>he` | n, v | Edit harpoon editors list |
| `<leader>h1` | n, v | Go to harpoon editor 1 |
| `<leader>h2` | n, v | Go to harpoon editor 2 |
| `<leader>h3` | n, v | Go to harpoon editor 3 |
| `<leader>h4` | n, v | Go to harpoon editor 4 |
| `<leader>h5` | n, v | Go to harpoon editor 5 |
| `<leader>h6` | n, v | Go to harpoon editor 6 |
| `<leader>h7` | n, v | Go to harpoon editor 7 |
| `<leader>h8` | n, v | Go to harpoon editor 8 |
| `<leader>h9` | n, v | Go to harpoon editor 9 |

## Project Manager

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>pa` | n, v | Save project |
| `<leader>po` | n, v | List projects (new window) |
| `<leader>pe` | n, v | Edit projects |

## Folding

| Keymap | Mode | Action |
|--------|------|--------|
| `zM` | n | Fold all |
| `zR` | n | Unfold all |
| `zc` | n | Fold |
| `zC` | n | Fold recursively |
| `zo` | n | Unfold |
| `zO` | n | Unfold recursively |
| `za` | n | Toggle fold |
