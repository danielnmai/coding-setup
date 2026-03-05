-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('t', '<C-/>', '<cmd>close<cr>', { desc = "Hide Terminal" })
vim.keymap.set('t', '<C-_>', '<cmd>close<cr>', { desc = "Hide Terminal" })

vim.keymap.set('n', '<leader>rn', ':set rnu!<CR>', { desc = "Toggle Relative Number" })
