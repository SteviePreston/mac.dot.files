-- Treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"go", "python", "lua", "javascript", "typescript"}, 
      highlight = { enable = true },
    })
  end,
}
