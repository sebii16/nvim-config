local o = vim.o
local g = vim.g

o.relativenumber = true
o.number = true
o.clipboard = 'unnamedplus'
o.wrap = false
o.swapfile = false
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
g.mapleader = ' '
o.winborder = 'rounded'
o.lazyredraw = true
o.mouse = ''

vim.cmd('colorscheme cyberdream')
