local g = vim.g
local keymap = vim.keymap

g.mapleader = " "

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
keymap.set("n", "<leader>r", "<cmd>NvimTreeRefresh<cr>")
keymap.set("n", "<leader>n", "<cmd>NvimTreeFindFile<cr>")

keymap.set("n", "<esc>", "<cmd>noh<cr>")
keymap.set("n", "<leader>lm", "<cmd>colorscheme onehalflight<cr>")
keymap.set("n", "<leader>dm", "<cmd>colorscheme onehalfdark<cr>")
