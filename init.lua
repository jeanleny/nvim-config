local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable()
vim.call('plug#begin')
Plug('catppuccin/nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('preservim/nerdtree')
Plug('mason-org/mason.nvim')
Plug('mason-org/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-lua/plenary.nvim')
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
vim.call('plug#end')

vim.opt.termguicolors = true
vim.cmd('colorscheme catppuccin')
vim.cmd('set shiftwidth=4')
vim.cmd('set tabstop=4')
vim.cmd('set number')
vim.cmd ('set encoding=UTF-8')

require("plugins.treesitter")
require("plugins.mason")
require("plugins.telescope")
require("core.keymaps")
require("core.autocmd")
require("core.lsp")
