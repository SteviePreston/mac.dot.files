-- CMP.lua

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",       -- LSP source for nvim-cmp
    "L3MON4D3/LuaSnip",           -- Snippet engine
    "saadparwaiz1/cmp_luasnip"    -- Snippet completion source for nvim-cmp
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
      },
    })
  end,
}
