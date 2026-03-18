--[[require'nvim-treesitter'.setup
{
	ensure_installed = {"c", "lua"},
	auto_install = true,
	highlight = {enable = true},
}--]]

--vim.opt.runtimepath:append("/home/lperis/.local/share/nvim/site")

vim.opt.runtimepath:append("/home/lperis/.local/share/nvim/site/")

-- v1.x API: highlighting is enabled via vim.treesitter directly
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- Still call setup for ensure_installed / auto_install
require('nvim-treesitter').setup({
  ensure_installed = { "c", "lua" },
  auto_install = true,
})

require('nvim-treesitter').setup({
  ensure_installed = { "c", "lua" },
  auto_install = true,
  highlight = { enable = true },
})
