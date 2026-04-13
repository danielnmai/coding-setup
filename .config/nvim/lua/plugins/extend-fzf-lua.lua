return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.defaults = opts.defaults or {}
      opts.defaults.formatter = { "path.filename_first", 2 }

      opts.keymap = opts.keymap or {}
      opts.keymap.builtin = opts.keymap.builtin or {}
      opts.keymap.builtin["<C-d>"] = "preview-page-down"
      opts.keymap.builtin["<C-u>"] = "preview-page-up"
      opts.keymap.builtin["<C-S-d>"] = "preview-half-page-down"
      opts.keymap.builtin["<C-S-u>"] = "preview-half-page-up"
    end,
  },
}
