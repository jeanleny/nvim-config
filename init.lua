local vim = vim.cmd
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
vim.call('plug#end')

vim.opt.termguicolors = true
vim('colorscheme catppuccin')
vim('set shiftwidth=4')
vim('set tabstop=4')
vim('set number')

require("plugins.treesitter")
require("plugins.mason")
require("core.keymaps")
require("core.autocmd")
require("core.lsp")
