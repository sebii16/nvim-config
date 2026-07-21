local km_set = vim.keymap.set

require 'autopairs'

km_set('n', '<leader>f', ':Pick files<CR>')

km_set('n', '<leader>g', ':Pick grep_live<CR>')

km_set('n', '<leader>o', ':update<CR> :source<CR>')

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



