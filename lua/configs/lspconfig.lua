-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local inlayHints = {
  includeInlayParameterNameHints = "literals", -- 'none' | 'literals' | 'all'
  includeInlayParameterNameHintsWhenArgumentMatchesName = false,
  includeInlayFunctionParameterTypeHints = true,
  includeInlayVariableTypeHints = true,
  includeInlayVariableTypeHintsWhenTypeMatchesName = false,
  includeInlayPropertyDeclarationTypeHints = false,
  includeInlayFunctionLikeReturnTypeHints = true,
  includeInlayEnumMemberValueHints = true,
}

-- EXAMPLE
local servers = { "html", "cssls", "gopls", "pyright", "ts_ls", "tailwindcss" }
local settings = {
  ts_ls = {
    typescript = {
      inlayHints = inlayHints
    },
    javascript = {
      inlayHints = inlayHints
    }
  },
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = settings[lsp],
  }
end

vim.lsp.inlay_hint.enable(true)
