return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal_force_cwd left toggle<CR>", { silent = true })
		vim.keymap.set("n", "<leader>g", ":Neotree git_status bottom toggle<CR>", { silent = true })

		require("neo-tree").setup({
			default_component_configs = {
				icon = {
					folder_closed = "",
					folder_open = "󰉖",
					folder_empty = "󰜌",
					highlight = "NeoTreeFileIcon",
				},
				git_status = {
					symbols = {
						-- Change type
						added = "[A]",
						modified = "[M]",
						deleted = "[D]",
						renamed = "[R]",
						-- Status type
						untracked = "!",
						ignored = "",
						unstaged = "U",
						staged = "S",
						conflict = "",
					},
				},
			},
			window = {
				mappings = {
					["v"] = "open_vsplit",
					["h"] = "open_split",
					["x"] = "close_all_nodes",
				},
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_pattern = { "*.git" },
					never_show = { ".DS_Store" },
				},
			},
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
	end,
}
