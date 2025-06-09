return {
	"gbprod/nord.nvim",
	lazy = false,
	config = function()
		local c = require("settings.colors")

		require("nord").setup({
			transparent = true,
			search = { theme = "vscode" },
			styles = {
				keywords = { fg = c.gray },
				functions = { fg = c.nord9 },
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
