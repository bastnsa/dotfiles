return {
	"gbprod/nord.nvim",
	lazy = false,
	config = function()
		require("nord").setup({
			transparent = true,
			search = { theme = "vscode" },
			styles = {
				keywords = { fg = "#9aaac6" },
				functions = { fg = "#81a1c1" },
				variables = { fg = "#eceff4" },
				bufferline = {
					modified = { italic = false },
				},
			},
		})
		vim.cmd.colorscheme("nord")
		require("bufferline").setup({
			options = {
				separator_style = "thin",
			},
			highlights = require("nord.plugins.bufferline").akinsho(),
		})
	end,
}
