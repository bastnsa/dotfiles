return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = actions.select_horizontal,
						["<C-v>"] = actions.select_vertical,
						["<C-n>"] = actions.select_tab,
					},
					n = {
						["<C-h>"] = actions.select_horizontal,
						["<C-v>"] = actions.select_vertical,
						["<C-n>"] = actions.select_tab,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>fl", function()
			builtin.find_files({ hidden = true })
		end, {})
		vim.keymap.set("n", "<leader>fs", function()
			builtin.live_grep({
				hidden = true,
				additional_args = function()
					return { "--hidden" }
				end,
			})
		end, {})
		vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", {})
	end,
}
