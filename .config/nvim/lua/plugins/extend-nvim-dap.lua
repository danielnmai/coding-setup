return {
  "mfussenegger/nvim-dap",
  opts = function(_, opts)
    local dap = require("dap")

    -- Register pwa-node adapter (Mason's js-debug-adapter)
    dap.adapters["pwa-node"] = {
      type = "server",
      host = "::1",
      port = "${port}",
      executable = {
        command = vim.fn.expand("~/.local/share/nvim/mason/bin/js-debug-adapter"),
        args = { "${port}" },
      },
    }

    local js_filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" }

    for _, language in ipairs(js_filetypes) do
      dap.configurations[language] = {
        {
          name = "Launch TS file (tsx)",
          type = "pwa-node",
          request = "launch",
          cwd = "${workspaceFolder}",
          runtimeExecutable = "node",
          runtimeArgs = { "--import", "tsx/esm" },
          args = { "${file}" },
          sourceMaps = true,
          protocol = "inspector",
          skipFiles = { "<node_internals>/**", "node_modules/**" },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
        },
        {
          name = "Debug Vitest (current file)",
          type = "pwa-node",
          request = "launch",
          cwd = "${workspaceFolder}",
          runtimeExecutable = "node",
          runtimeArgs = { "--import", "tsx/esm" },
          args = { "./node_modules/vitest/vitest.mjs", "run", "--no-file-parallelism", "${file}" },
          sourceMaps = true,
          protocol = "inspector",
          skipFiles = { "<node_internals>/**", "node_modules/**" },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          console = "integratedTerminal",
        },
        {
          name = "Launch JS file",
          type = "pwa-node",
          request = "launch",
          program = "${file}",
          cwd = "${workspaceFolder}",
          console = "integratedTerminal",
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach",
          processId = require("dap.utils").pick_process,
          cwd = "${workspaceFolder}",
          sourceMaps = true,
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
        },
      }
    end
  end,
}
