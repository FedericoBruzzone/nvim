-- vim.cmd('set background=dark')
vim.cmd('colorscheme github_light')
vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
vim.api.nvim_set_hl(0, 'NormalFloat', { link = "Normal" })
vim.api.nvim_set_hl(0, 'Pmenu', { link = "Normal" })

vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "None", fg = "green" })
vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "None", fg = "yellow" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "None", fg = "red" })
vim.api.nvim_set_hl(0, "GitSignsChangeDelete", { bg = "None", fg = "purple" })
