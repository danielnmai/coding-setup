-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<leader>rn", ":set rnu!<CR>", { desc = "Toggle Relative Number" })
vim.keymap.set("n", "<A-S-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-S-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.schedule(function()
  vim.keymap.set("n", "<c-/>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
  vim.keymap.set("t", "<c-/>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
  vim.keymap.set("n", "<c-_>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
  vim.keymap.set("t", "<c-_>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
end)
