---@diagnostic disable: missing-fields
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				custom_captures = {
					["tag.delimiter"] = "Delimiter",
					["tag.name"] = "Keyword",
				},
			},
			indent = { enable = true },
			ensure_installed = {
				"c",
				"css",
				"html",
				"json",
				"javascript",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"vim",
				"vimdoc",
			},
			auto_install = true,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader>is",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
