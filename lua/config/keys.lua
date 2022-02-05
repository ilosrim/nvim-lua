local utils = require('utils')

-- Change Panes
utils.nnoremap('<C-l>', '<C-w>l')
utils.nnoremap('<C-h>', '<C-w>h')
utils.nnoremap('<C-j>', '<C-w>j')
utils.nnoremap('<C-k>', '<C-w>k')

-- BufferLine
utils.nnoremap('<S-l>', ':BufferLineCycleNext<CR>')
utils.nnoremap('<S-h>', ':BufferLineCyclePrev<CR>')

-- Visual mode blockwise indent
utils.vnoremap('>', '>gv')
utils.vnoremap('<', '<gv')

-- ESC
utils.inoremap('jj', '<Esc>')
utils.inoremap('jk', '<Esc>')
utils.inoremap('kk', '<Esc>')
utils.inoremap('kj', '<Esc>')

-- Arrow Keys disabled normal mode
utils.nnoremap('<Up>', '<Nop>')
utils.nnoremap('<Down>', '<Nop>')
utils.nnoremap('<Left>', '<Nop>')
utils.nnoremap('<Right>', '<Nop>')
