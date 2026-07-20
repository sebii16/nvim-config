-- plugins
vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/scottmckendry/cyberdream.nvim',
	'https://github.com/echasnovski/mini.pick',
	'https://github.com/echasnovski/mini.completion',
	'https://github.com/windwp/nvim-autopairs',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/mason-org/mason-lspconfig.nvim',
}, {
	confirm = false,
})

require 'nvim-treesitter'.setup({
	ensure_installed = { 'c', 'lua', 'zig', 'cpp', 'vim', },
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
require 'cyberdream'.setup()
require 'mini.pick'.setup()
require 'mini.completion'.setup()
require 'nvim-autopairs'.setup()
require 'mason'.setup()
require 'mason-lspconfig'.setup({ ensure_installed = { 'lua_ls', 'zls', 'clangd' }, automatic_enable = true, })

-- settings
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

vim.cmd('colorscheme cyberdream')

-- keymaps
local km = vim.keymap

km.set('n', '<leader>f', ':Pick files<CR>')
km.set('n', '<leader>g', ':Pick grep_live<CR>')
km.set('n', '<leader>o', ':update<CR> :source<CR>')
km.set('i', '<Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-n>'
	end
	return '<Tab>'
end, { expr = true })
km.set('i', '<S-Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-p>'
	end
	return '<S-Tab>'
end, { expr = true })
