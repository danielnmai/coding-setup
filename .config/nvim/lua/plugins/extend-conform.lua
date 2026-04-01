local web_filetypes = {
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "css",
  "html",
  "json",
  "jsonc",
  "yaml",
  "markdown",
  "graphql",
  "prisma",
}

local function web_formatter(bufnr)
  -- Use oxfmt if available, otherwise fall back to prettier/biome
  if require("conform").get_formatter_info("oxfmt", bufnr).available then
    return { "oxfmt" }
  end
  if require("conform").get_formatter_info("prettier", bufnr).available then
    return { "prettier" }
  end
  return { "biome" }
end

local formatters_by_ft = {}
for _, ft in ipairs(web_filetypes) do
  formatters_by_ft[ft] = web_formatter
end

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = formatters_by_ft,
    },
  },
}
