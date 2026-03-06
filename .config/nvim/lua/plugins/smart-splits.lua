return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    keys = {
      {
        "<C-h>",
        function()
          require("smart-splits").move_cursor_left()
        end,
        mode = { "n", "t" },
        desc = "Move to left pane",
      },
      {
        "<C-j>",
        function()
          require("smart-splits").move_cursor_down()
        end,
        mode = { "n", "t" },
        desc = "Move to below pane",
      },
      {
        "<C-k>",
        function()
          require("smart-splits").move_cursor_up()
        end,
        mode = { "n", "t" },
        desc = "Move to above pane",
      },
      {
        "<C-l>",
        function()
          require("smart-splits").move_cursor_right()
        end,
        mode = { "n", "t" },
        desc = "Move to right pane",
      },
      {
        "<M-h>",
        function()
          require("smart-splits").resize_left()
        end,
        mode = { "n", "t" },
        desc = "Resize left",
      },
      {
        "<M-j>",
        function()
          require("smart-splits").resize_down()
        end,
        mode = { "n", "t" },
        desc = "Resize down",
      },
      {
        "<M-k>",
        function()
          require("smart-splits").resize_up()
        end,
        mode = { "n", "t" },
        desc = "Resize up",
      },
      {
        "<M-l>",
        function()
          require("smart-splits").resize_right()
        end,
        mode = { "n", "t" },
        desc = "Resize right",
      },
    },
  },
}
