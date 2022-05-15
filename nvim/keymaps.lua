local g = vim.g
local keymap = vim.keymap

g.mapleader = ' '

-- Telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

