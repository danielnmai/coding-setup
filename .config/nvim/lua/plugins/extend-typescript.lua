return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = {
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
            },
            typescript = {
              tsserver = {
                maxTsServerMemory = 8192,
              },
              preferences = {
                includePackageJsonAutoImports = "off",
              },
            },
            javascript = {
              preferences = {
                includePackageJsonAutoImports = "off",
              },
            },
          },
        },
      },
    },
  },
}
