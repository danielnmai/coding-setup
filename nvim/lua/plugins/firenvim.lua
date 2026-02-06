return {
  "glacambre/firenvim",
  enabled = false,
  build = ":call firenvim#install(0)",
  config = function()
    vim.g.firenvim_config = {
      localSettings = {
        ["https?://.*\\.atlassian\\.net/"] = { takeover = "never" },
        ["https?://.*\\.google\\.com/"] = { takeover = "never" },
      },
    }
  end,
}
