local opt = vim.opt
local g = vim.g

-- Disable legacy providers
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

-- file
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Basic
opt.mouse = "a"
opt.clipboard = ""
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.updatetime = 300
opt.timeoutlen = 300

-- Show
opt.termguicolors = true
opt.background = "dark"
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.colorcolumn = '80'
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.list = true
opt.listchars = {
  tab = '>-',
  space = '.',
  trail = '~',
  nbsp = '_',
  extends = '>',
  precedes = '<'
}

-- Indentation
opt.tabstop = 8
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = false
opt.smartindent = false

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Match
opt.showmatch = true
