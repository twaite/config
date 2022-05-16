-- Utilities for creating configurations
local util = require("formatter.util")

local prettier = {
	function()
		return {
			exe = "prettier",
			args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
			stdin = true,
		}
	end,
}

-- Provides the Format and FormatWrite commands
require("formatter").setup({
	-- All formatter configurations are opt-in
	filetype = {
		lua = {
			-- Pick from defaults:
			require("formatter.filetypes.lua").stylua,
		},
		javascript = prettier,
		javascriptreact = prettier,
		typescript = prettier,
		typescriptreact = prettier,
		markdown = prettier,
		css = prettier,
		json = prettier,
	},
})

vim.cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])
