-- Activate numbers and relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tabs to four spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Line wrap
vim.opt.wrap = true

-- Undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile = true

-- Personalized search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Good colors?
vim.opt.termguicolors = true

-- Keep the limit of lines while scrolling at 8
vim.opt.scrolloff = 9
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Updatetime and colorcolumns
vim.opt.updatetime = 50
--vim.opt.colorcolumns = 80

-- Leader key
vim.g.mapleader = " "
