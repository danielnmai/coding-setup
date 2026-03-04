vim.bo.omnifunc = ""
pcall(vim.keymap.del, "i", "<Left>", { buffer = true })
pcall(vim.keymap.del, "i", "<Right>", { buffer = true })
