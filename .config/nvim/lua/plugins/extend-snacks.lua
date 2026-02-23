return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local entry = {
      action = 'lua require("persistence").select()',
      desc = " Select Session",
      icon = "S",
      key = "S",
    }
    entry.desc = entry.desc .. string.rep(" ", 43 - #entry.desc)
    entry.key_format = "  %s"
    table.insert(opts.config.center, 7, entry)
  end,
}
