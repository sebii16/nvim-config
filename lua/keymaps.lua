require 'autopairs'

local km_set = vim.keymap.set

km_set('n', '<leader>f', ':Pick files<CR>', { silent = true })

km_set('n', '<leader>g', ':Pick grep_live<CR>', { silent = true })

km_set('n', '<leader>o', ':update<CR> :source<CR>', { silent = true })

km_set('i', '<Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-n>'
	end
	return '<Tab>'
end, { expr = true })

km_set('i', '<S-Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-p>'
	end
	return '<S-Tab>'
end, { expr = true })
