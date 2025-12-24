-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "basedpyright" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    root_markers = vim.lsp.config[lsp].root_markers or {},
  })
  
  vim.lsp.enable(lsp)
end

