return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
		local ignore = {
			"%.git/",
			"%.git\\",
			"node_modules/",
			"node_modules\\",
		}

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = actions.select_horizontal,
						["<C-v>"] = actions.select_vertical,
						["<C-n>"] = actions.select_tab,
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
					n = {
						["<C-h>"] = actions.select_horizontal,
						["<C-v>"] = actions.select_vertical,
						["<C-n>"] = actions.select_tab,
						["j"] = actions.move_selection_next,
						["k"] = actions.move_selection_previous,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>fl", function()
			builtin.find_files({
				hidden = true,
				file_ignore_patterns = ignore,
			})
		end, {})

		vim.keymap.set("n", "<leader>fs", function()
			builtin.live_grep({
				hidden = true,
				file_ignore_patterns = ignore,
				additional_args = function()
					return { "--hidden" }
				end,
			})
		end, {})

		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", {})

		vim.api.nvim_create_user_command("DashboardFindFile", function()
			builtin.find_files({
				hidden = true,
				file_ignore_patterns = ignore,
			})
		end, {})

		vim.api.nvim_create_user_command("DashboardFindText", function()
			builtin.live_grep({
				hidden = true,
				file_ignore_patterns = ignore,
				additional_args = function()
					return { "--hidden" }
				end,
			})
		end, {})
	end,
}
