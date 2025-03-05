-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.gopls.setup({
  on_init = nvlsp.on_init,
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  cmd = {
    "gopls"
  },
  filetypes = {
    "go",
    "gomod",
    "gowork",
    "gotmpl",
  },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
        shadow = true,
        unusedwrite = true,
        unusedvariable = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})
