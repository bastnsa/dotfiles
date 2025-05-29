-- Highlight groups ":h treesitter-highlight-groups"
local c = require("settings.colors")

-- General
vim.api.nvim_set_hl(0, "Cursor", { fg = c.nord0, bg = c.nord4 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.nord4, bold = false })
vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = c.nord1 })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = c.nord1 })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = c.nord1 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = c.nord0, bg = c.nord3 })

-- Dashboard
vim.api.nvim_set_hl(0, "DashboardArt", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "DashboardIcons", { fg = c.grey })
vim.api.nvim_set_hl(0, "DashboardKeys", { fg = c.purple })

-- Documentation
vim.api.nvim_set_hl(0, "@comment", { fg = c.nord3 })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = c.nord3 })

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
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = c.red })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = c.red })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = c.grey })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.grey })

-- Markup
vim.api.nvim_set_hl(0, "@markup.heading", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@markup.link", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "@markup.list", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@markup.quote", { fg = c.grey })

-- Neotree
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = c.nord9 })
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = c.yellow })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = c.red })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = c.nord9 })

-- Primitives
vim.api.nvim_set_hl(0, "@boolean", { fg = c.purple })
vim.api.nvim_set_hl(0, "@number", { fg = c.purple })
vim.api.nvim_set_hl(0, "@number.float", { fg = c.purple })
vim.api.nvim_set_hl(0, "@string", { fg = c.nord7 })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = c.yellow })
vim.api.nvim_set_hl(0, "@string.escape", { fg = c.yellow })
vim.api.nvim_set_hl(0, "@string.special", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@character.special", { fg = c.yellow })

-- Punctuation
vim.api.nvim_set_hl(0, "@operator", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.grey2 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = c.grey })

-- Tags
vim.api.nvim_set_hl(0, "@tag", { fg = c.red })
vim.api.nvim_set_hl(0, "@tag.builtin", { fg = c.red })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = c.grey })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = c.grey2 })

-- Types
vim.api.nvim_set_hl(0, "@type", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.nord8 })
vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = c.nord9 })

-- Variables
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.grey })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = c.nord4 })
vim.api.nvim_set_hl(0, "@variable.parameter.builtin", { fg = c.grey })

-- YAML
vim.api.nvim_set_hl(0, "@property.yaml", { fg = c.nord4 })
