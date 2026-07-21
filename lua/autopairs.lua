local brackets = {
    ['{'] = '}',
    ['('] = ')',
    ['['] = ']',
}

local quotes = {
    ['"'] = '"',
    ["'"] = "'",
}

local joined_pairs = vim.tbl_extend('force', {}, brackets, quotes)

local function smart_backspace()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local line = vim.api.nvim_get_current_line()

    local prev = line:sub(col, col)
    local next = line:sub(col + 1, col + 1)

    if joined_pairs[prev] == next then
        return '<Del><BS>'
    end

    return '<BS>'
end

local function smart_newline()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local line = vim.api.nvim_get_current_line()

    local prev = line:sub(col, col)
    local next = line:sub(col + 1, col + 1)

    if brackets[prev] == next then
        return '<CR><Esc>O'
    end

    return '<CR>'
end

local km_set = vim.keymap.set

for open, close in pairs(joined_pairs) do
    km_set('i', open, open .. close .. '<Left>')
end

km_set('i', '<BS>', smart_backspace, { expr = true })
km_set('i', '<CR>', smart_newline, { expr = true, })
