return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
		local themes = require("telescope.themes")
		local cmd = vim.api.nvim_create_user_command

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

		require("telescope").load_extension("fzf")

		local default = {
			hidden = true,
			file_ignore_patterns = {
				"%.git/",
				"%.git\\",
				"node_modules/",
				"node_modules\\",
			},
		}

		local function get_opts(opts)
			if vim.o.columns < 120 then
				opts = themes.get_dropdown(opts)
			end
			return opts
		end

		cmd("FindDiagnostics", function()
			builtin.diagnostics(get_opts(default))
		end, {})

		cmd("FindDotfiles", function()
			local opts = vim.tbl_extend("force", default, {
				cwd = vim.fn.expand("~/dotfiles"),
			})
			builtin.find_files(opts)
		end, {})

		cmd("FindFiles", function()
			builtin.find_files(default)
		end, {})

		cmd("FindGitStatus", function()
			builtin.git_status(get_opts(default))
		end, {})

		cmd("FindHelp", function()
			builtin.help_tags(get_opts())
		end, {})

		cmd("FindImplementations", function()
			builtin.lsp_implementations(get_opts(default))
		end, {})

		cmd("FindRecent", function()
			builtin.oldfiles(default)
		end, {})

		cmd("FindReferences", function()
			builtin.lsp_references(get_opts(default))
		end, {})

		cmd("GrepSearch", function()
			local opts = vim.tbl_extend("force", default, {
				additional_args = { "--hidden" },
			})
			builtin.live_grep(get_opts(opts))
		end, {})
	end,
}
