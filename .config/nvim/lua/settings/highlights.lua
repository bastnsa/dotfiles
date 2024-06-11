-- Highlight groups ":h treesitter-highlight-groups"

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

-- General
vim.api.nvim_set_hl(0, "CursorLine", { bg = c.nord0 })
vim.api.nvim_set_hl(0, "DashboardArt", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "DashboardIcons", { fg = c.grey })
vim.api.nvim_set_hl(0, "DashboardKeys", { fg = c.purple })
vim.api.nvim_set_hl(0, "DashboardPath", { fg = c.nord9, italic = true })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = c.nord0 })

-- Comments
vim.api.nvim_set_hl(0, "@comment", { fg = c.nord3 })

-- Keywords
vim.api.nvim_set_hl(0, "@keyword", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = c.purple })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { fg = c.red })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = c.purple })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = c.purple }) --
vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.grey, italic = true })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.red })
vim.api.nvim_set_hl(0, "@type", { fg = c.nord8 })

-- Markup
vim.api.nvim_set_hl(0, "@markup.heading", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@markup.link", { fg = c.white })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = c.grey })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "@markup.quote", { fg = c.grey })

-- Neotree
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = c.yellow })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = c.red })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = c.nord9 })

-- Punctuation
vim.api.nvim_set_hl(0, "BracketA", { fg = c.white })
vim.api.nvim_set_hl(0, "BracketB", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "BracketC", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "BracketD", { fg = c.purple })
vim.api.nvim_set_hl(0, "@operator", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.white })

-- Strings
vim.api.nvim_set_hl(0, "@string", { fg = c.nord7 })

-- Tags
vim.api.nvim_set_hl(0, "@tag", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = c.grey })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = c.nord4 })

-- Variables
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.grey })
vim.api.nvim_set_hl(0, "@variable.parameter", { link = "variable" })
