-- Set laststatus to 2
vim.opt.laststatus = 0
-- Set number
vim.opt.nu = true
-- Set relativenumber
vim.opt.relativenumber = true
-- Set wrap to true
-- vim.opt.wrap = true
-- The tabstop option will make the number of spaces to insert when you press the tab key
vim.opt.tabstop = 4
-- The softtabstop option will make the number of spaces to insert when you press the tab key
vim.opt.softtabstop = 4
-- The shiftwidth option will make the number of spaces to insert when you press the tab key
vim.opt.shiftwidth = 4
-- The expandtab option will make the tab key insert spaces
vim.opt.expandtab = true
-- Enable autoindent
vim.opt.smartindent = true
-- Disable swap files
vim.opt.swapfile = false
-- Disable backup files
vim.opt.backup = false
-- Enable persistent undo
vim.opt.undofile = true
-- Set the directory where the undo files will be stored
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Separate vim plugins from neovim in case vim still in use
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
-- Enable highlighting search results
vim.opt.hlsearch = true
-- Enable incremental search
vim.opt.incsearch = true
-- Show the signcolumn
vim.opt.signcolumn = "yes"
-- Highlight current line
vim.opt.cursorline = true
-- Disable the orizontal scroll
vim.opt.sidescrolloff = 0 -- vim.opt.mousescroll = "ver:1,hor:0"
-- Set splitbelow (new split window is below the current)
vim.opt.splitbelow = true
-- Set splitright (new split window is to the right of the current)
vim.opt.splitright = true
-- Enable termguicolors
vim.opt.termguicolors = true
-- Set the foldmethod to indentation
vim.opt.foldmethod = "indent"
-- Set the foldlevel to 99
vim.opt.foldlevel = 99
-- Set the foldnestmax to 10
vim.opt.foldnestmax = 10
-- Update the screen every 50ms (used also to highlight the occurrency of the word under the cursor)
vim.opt.updatetime = 50
