return {
  {
    "joryeugene/dadbod-grip.nvim",
    enabled = true,
    version = "*",
    keys = {
      { "<leader>Ds", "<cmd>GripStart<cr>", desc = "Grip Start" },
      { "<leader>Dc", "<cmd>GripConnect<cr>", desc = "Grip Connect" },
    },
    dependencies = {
      {
        "folke/which-key.nvim",
        opts = {
          spec = {
            { "<leader>D", group = "database", icon = "" },
          },
        },
      },
    },
  },
}
