require("config.lazy")
require("config.set")
require("config.remap")

vim.g.python3_host_prog = '/usr/bin/python3'

local augroup = vim.api.nvim_create_augroup
local fcb = augroup('fcb', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

vim.cmd("colorscheme default")
vim.api.nvim_set_hl(0, "Normal", { bg = "Black" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "Black" })
