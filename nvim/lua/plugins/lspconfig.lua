-- LSPConfig.lua

return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    -- Python
    lspconfig.pyright.setup({})

    -- Go
    lspconfig.gopls.setup({})

    -- JavaScript and TypeScript
    lspconfig.ts_ls.setup({})

  end,
}
