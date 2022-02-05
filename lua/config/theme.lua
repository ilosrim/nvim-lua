vim.cmd[[colorscheme tokyonight]]

vim.g.tokyonight_style = 'night'
vim.o.background='dark'

require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}
