require("config.lazy")

vim.opt.clipboard = "unnamedplus"

if vim.g.vscode then
  -- VSCode Neovim
  require "user.vscode_keymaps"
else
  -- Ordinary Neovim
end