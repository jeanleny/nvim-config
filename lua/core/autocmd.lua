vim.cmd('autocmd VimEnter * let g:NERDTreeWinSize=20')
vim.cmd('autocmd VimEnter * NERDTree')
vim.cmd('set shell=bash')
vim.cmd([[
  autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]])
