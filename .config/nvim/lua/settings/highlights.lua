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
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.purple, bold = false })
vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = c.nord1 })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = c.nord1 })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = c.nord1 })

-- Dashboard
vim.api.nvim_set_hl(0, "DashboardArt", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "DashboardIcons", { fg = c.grey })
vim.api.nvim_set_hl(0, "DashboardKeys", { fg = c.purple })
vim.api.nvim_set_hl(0, "DashboardPath", { fg = c.nord9, italic = true })

-- Documentation
vim.api.nvim_set_hl(0, "@comment", { fg = c.nord3 })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = c.green })

-- Functions
vim.api.nvim_set_hl(0, "@function.builtin", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@function.call", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@function.method", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@constructor", { fg = c.nord9 })

-- Keywords
vim.api.nvim_set_hl(0, "@keyword", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = c.purple })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.grey, italic = true })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.grey })
vim.api.nvim_set_hl(0, "@type", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.nord9 })

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

-- Primitives
vim.api.nvim_set_hl(0, "@boolean", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@number", { fg = c.purple })
vim.api.nvim_set_hl(0, "@number.float", { fg = c.purple })
vim.api.nvim_set_hl(0, "@string", { fg = c.nord7 })

-- Punctuation
vim.api.nvim_set_hl(0, "@operator", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = c.nord4 })

-- Tags
vim.api.nvim_set_hl(0, "@tag", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = c.grey })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = c.grey2 })

-- Variables
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = c.nord4 })
