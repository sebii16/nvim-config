vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/scottmckendry/cyberdream.nvim',
	'https://github.com/echasnovski/mini.pick',
	'https://github.com/echasnovski/mini.completion',
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
require 'cyberdream'.setup({
    transparent = vim.uv.os_uname().sysname == 'Linux'
})
require 'mini.pick'.setup()
require 'mini.completion'.setup()
require 'mason'.setup()
require 'mason-lspconfig'.setup()


