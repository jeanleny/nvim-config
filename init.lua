local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable()
vim.call('plug#begin')
Plug('catppuccin/nvim')
Plug('preservim/nerdtree')
Plug('mason-org/mason.nvim')
Plug('mason-org/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-lua/plenary.nvim')
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug('nvim-treesitter/nvim-treesitter')

Plug('saghen/blink.cmp', { ['tag'] = 'v1.*' })

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'ray-x/lsp_signature.nvim'
vim.call('plug#end')

vim.opt.termguicolors = true
vim.cmd('colorscheme catppuccin')
vim.cmd('set shiftwidth=4')
vim.cmd('set tabstop=4')
vim.cmd('set number')
vim.cmd('set encoding=UTF-8')

require("plugins.mason")
require("plugins.telescope")
require("plugins.lsp_signature")
require("core.keymaps")
require("core.autocmd")
require("core.lsp")
require("plugins.treesitter")
require("plugins.blink")
vim.o.shell = "/usr/bin/zsh"

