local g = vim.g
local keymap = vim.keymap

g.mapleader = ' '

-- Telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>');
keymap.set('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>');
keymap.set('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>');
