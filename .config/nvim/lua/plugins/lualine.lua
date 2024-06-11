return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local c = {
			nord0 = "#2E3440",
			nord1 = "#3B4252",
			nord2 = "#434C5E",
			nord3 = "#4C566A",
			nord4 = "#D8DEE9",
			nord5 = "#E5E9F0",
			nord6 = "#ECEFF4",
			nord7 = "#8FBCBB",
			nord8 = "#88C0D0",
			nord9 = "#81A1C1",
			nord10 = "#5E81AC",
			green = "#A3BE8C",
			grey = "#9AAAC6",
			grey2 = "#808FA9",
			orange = "#D08770",
			purple = "#B48EAD",
			red = "#BF616A",
			white = "#FFFFFF",
			yellow = "#EBCB8B",
		}

		local custom_nord = {
			normal = {
				a = { fg = c.nord1, bg = c.nord9, gui = "bold" },
				b = { fg = c.nord9, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord0 },
			},
			command = {
				a = { fg = c.nord1, bg = c.purple, gui = "bold" },
				b = { fg = c.purple, bg = c.nord1 },
				c = { fg = c.nord4, bg = c.nord0 },
			},
			insert = { a = { fg = c.nord1, bg = c.nord6, gui = "bold" } },
			visual = { a = { fg = c.nord1, bg = c.nord7, gui = "bold" } },
			replace = { a = { fg = c.nord1, bg = c.red, gui = "bold" } },
			inactive = {
				c = { fg = c.nord9, bg = c.nord0 },
			},
		}

		lualine.setup({
			options = {
				icons_enabled = true,
				ignore_focus = { "neo-tree" },
				theme = custom_nord,
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
