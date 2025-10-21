local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable()
vim.call('plug#begin')
Plug('catppuccin/nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('preservim/nerdtree')
vim.call('plug#end')

vim.opt.termguicolors = true
vim.cmd('colorscheme catppuccin')
vim.cmd('set shiftwidth=4')
vim.cmd('set tabstop=4')
vim.cmd('set number')
vim.lsp.enable('ccls')

require("plugins.treesitter")
require("core.keymaps")
require("core.autocmd")
