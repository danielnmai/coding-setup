return {
  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPre",
    opts = {
      render = "virtual", -- colored square ■ next to the value
      -- other options: "background", "foreground"
      enable_tailwind = true,
    },
  },
}
