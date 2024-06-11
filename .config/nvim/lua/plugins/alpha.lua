return {
	"goolord/alpha-nvim",
	dependencies = "BlakeJC94/alpha-nvim-fortune",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- dashboard.section.header.val = {
		--   "",
		--   "",
		--   "",
		--   "",
		--   "",
		--   "                                                     ",
		--   "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
		--   "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
		--   "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
		--   "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
		--   "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
		--   "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		--   "                                                     ",
		-- }

		-- Set header
		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}
		dashboard.section.header.opts.hl = "DashboardArt"

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  Explore", ":Neotree filesystem reveal left toggle<CR>"),
			dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("n", "  New File", ":ene<CR>"),
			dashboard.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
			dashboard.button("t", "󱎸  Find Text", ":Telescope live_grep<CR>"),
			dashboard.button("l", "  Load Lazy", ":Lazy<CR>"),
			dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
		}
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "DashboardIcons"
		end
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl_shortcut = "DashboardKeys"
		end

		-- Set footer
		local direct = vim.loop.cwd()
		dashboard.section.footer.opts.hl = "DashboardPath"
		dashboard.section.footer.val = {
			"",
			"",
			"~" .. direct,
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
