vim.g.mapleader = " " -- Set leader FIRST
require('lazy-setup') -- Then load plugins

vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.cmd[[colorscheme tokyonight-night]]

vim.opt.splitbelow = true -- New horizontal splits below
vim.opt.splitright = true -- New vertical splits to the right

