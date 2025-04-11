return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local c = require("settings.colors")
		local nord = {
			normal = {
				a = { fg = c.nord1, bg = c.nord9 },
				b = { fg = c.nord9, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord2 },
			},
			command = {
				a = { fg = c.nord1, bg = c.purple },
				b = { fg = c.purple, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord2 },
			},
			insert = {
				a = { fg = c.nord1, bg = c.nord4 },
				b = { fg = c.nord4, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord2 },
			},
			visual = {
				a = { fg = c.nord1, bg = c.nord7 },
				b = { fg = c.nord7, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord2 },
			},
			replace = {
				a = { fg = c.nord1, bg = c.red },
				b = { fg = c.red, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord2 },
			},
			inactive = {
				c = { fg = c.nord1, bg = c.nord2 },
			},
		}

		require("lualine").setup({
			options = {
				icons_enabled = true,
				ignore_focus = { "neo-tree" },
				theme = nord,
			},
			sections = {
				lualine_c = { { "filename", symbols = { unnamed = "[Untitled]" } } },
				lualine_x = {
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
						color = { fg = c.nord8 },
					},
					{ "filetype" },
				},
				lualine_y = { "%L" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_x = {},
			},
		})
	end,
}
