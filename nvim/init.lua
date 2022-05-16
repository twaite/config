require("plugins")
require("options")
require("keymaps")
require("format")

require("nvim-lsp-installer").setup({})

require("nvim-tree").setup({})

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = { "lua", "rust", "javascript", "json", "typescript", "tsx" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})

-- TODO: completion - https://github.com/hrsh7th/nvim-cmp/
-- TODO: saga? - https://github.com/glepnir/lspsaga.nvim

require("lualine").setup()

local lsp = require("lsp-zero")

lsp.nvim_workspace()
lsp.preset("recommended")
lsp.setup()

-- Autocommands
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
