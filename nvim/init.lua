-- StevieP Init.Lua 

-- Lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", opts)

-- Enable syntax
vim.cmd("syntax enable")

-- File settings
vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.undofile=true
vim.opt.scrolloff=8

-- Incrementally highlight search
vim.opt.hlsearch=false
vim.opt.incsearch=true

-- Set tab size to 4 and convert tabs into spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Text rendering
vim.opt.encoding = "utf-8"
vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.number = true

-- Interface
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.termguicolors = true
vim.opt.updatetime=50
vim.opt.colorcolumn="100"
vim.opt.signcolumn="yes"
vim.opt.background="dark"

-- System Clipboard
vim.opt.clipboard="unnamedplus"
