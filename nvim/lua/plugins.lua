return require("packer").startup(function()
	-- TODO: custom theme
	use({
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	})

	use({
		"kyazdani42/nvim-tree.lua",
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
	})

	use({ "tpope/vim-fugitive" })
	use({ "mhartington/formatter.nvim" })
	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			vim.cmd([[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
    ]])
		end,
	})

	use({ "neoclide/coc.nvim", branch = "release" })
	-- use({
	-- 	"VonHeikemen/lsp-zero.nvim",
	-- 	requires = {
	-- 		-- LSP Support
	-- 		{ "neovim/nvim-lspconfig" },
	-- 		{ "williamboman/nvim-lsp-installer" },
	--
	-- 		-- Autocompletion
	-- 		{ "hrsh7th/nvim-cmp" },
	-- 		{ "hrsh7th/cmp-buffer" },
	-- 		{ "hrsh7th/cmp-path" },
	-- 		{ "saadparwaiz1/cmp_luasnip" },
	-- 		{ "hrsh7th/cmp-nvim-lsp" },
	-- 		{ "hrsh7th/cmp-nvim-lua" },
	--
	-- 		-- Snippets
	-- 		{ "L3MON4D3/LuaSnip" },
	-- 		{ "rafamadriz/friendly-snippets" },
	-- 	},
	-- })

	use({
		"sonph/onehalf",
		rtp = "vim",
		config = function()
			vim.cmd([[ colorscheme onehalfdark ]])
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				pre_hook = function(ctx)
					local U = require("Comment.utils")

					local location = nil
					if ctx.ctype == U.ctype.block then
						location = require("ts_context_commentstring.utils").get_cursor_location()
					elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
						location = require("ts_context_commentstring.utils").get_visual_start_location()
					end

					return require("ts_context_commentstring.internal").calculate_commentstring({
						key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
						location = location,
					})
				end,
			})
		end,
		requires = { "JoosepAlviste/nvim-ts-context-commentstring" },
	})
end)
