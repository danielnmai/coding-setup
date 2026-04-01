return {
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
    init = function()
      vim.g.VM_maps = {
        ["Add Cursor Down"] = "<A-d>",
        ["Add Cursor Up"] = "<A-u>",
      }
    end,
  },
}
