-- Highlight groups ":h treesitter-highlight-groups"
local c = require("settings.colors")
local hl = vim.api.nvim_set_hl

-- General
hl(0, "Cursor", { fg = c.nord0, bg = c.nord4 })
hl(0, "CursorLine", { bg = "none" })
hl(0, "CursorLineNr", { fg = c.nord4, bold = false })
hl(0, "IlluminatedWordText", { bg = c.nord1 })
hl(0, "IlluminatedWordRead", { bg = c.nord1 })
hl(0, "IlluminatedWordWrite", { bg = c.nord1 })
hl(0, "MatchParen", { fg = c.nord0, bg = c.nord3 })

-- Documentation
hl(0, "@comment", { fg = c.nord3 })
hl(0, "@string.documentation", { fg = c.nord3 })

-- Functions
hl(0, "@function.builtin", { fg = c.nord9 })
hl(0, "@function.call", { fg = c.nord9 })
hl(0, "@function.method", { fg = c.nord9 })
hl(0, "@function.method.call", { fg = c.nord9 })
hl(0, "@constructor", { fg = c.nord9 })

-- Git
hl(0, "DiffAdd", { bg = "#313d3a" })
hl(0, "DiffChange", { bg = "#3d3a31" })
hl(0, "DiffDelete", { bg = "#3d3135" })

-- Keywords
hl(0, "@keyword", { fg = c.gray })
hl(0, "@keyword.conditional", { fg = c.gray })
hl(0, "@keyword.conditional.ternary", { fg = c.gray_muted })
hl(0, "@keyword.coroutine", { fg = c.gray })
hl(0, "@keyword.directive", { fg = c.red })
hl(0, "@keyword.function", { fg = c.gray })
hl(0, "@keyword.modifier", { fg = c.red })
hl(0, "@keyword.operator", { fg = c.gray })
hl(0, "@keyword.repeat", { fg = c.gray })
hl(0, "@keyword.return", { fg = c.gray })

-- Markup
hl(0, "@markup.heading", { fg = c.nord4 })
hl(0, "@markup.link", { fg = c.nord4 })
hl(0, "@markup.link.label", { fg = c.nord4 })
hl(0, "@markup.link.url", { fg = c.nord8 })
hl(0, "@markup.list", { fg = c.gray_muted })
hl(0, "@markup.quote", { fg = c.gray })

-- Neotree
hl(0, "NeoTreeDirectoryName", { fg = c.nord9 })
hl(0, "NeoTreeGitUnstaged", { fg = c.yellow })
hl(0, "NeoTreeGitUntracked", { fg = c.red })
hl(0, "NeoTreeRootName", { fg = c.nord9 })

-- Primitives
hl(0, "@boolean", { fg = c.purple })
hl(0, "@number", { fg = c.purple })
hl(0, "@number.float", { fg = c.purple })
hl(0, "@string", { fg = c.nord7 })
hl(0, "@string.regexp", { fg = c.yellow })
hl(0, "@string.escape", { fg = c.yellow })
hl(0, "@string.special", { fg = c.nord4 })
hl(0, "@character.special", { fg = c.yellow })

-- Punctuation
hl(0, "@operator", { fg = c.gray_muted })
hl(0, "@punctuation.delimiter", { fg = c.gray_muted })
hl(0, "@punctuation.bracket", { fg = c.nord4 })
hl(0, "@punctuation.special", { fg = c.gray })

-- Tags
hl(0, "@tag", { fg = c.red })
hl(0, "@tag.builtin", { fg = c.red })
hl(0, "@tag.attribute", { fg = c.gray })
hl(0, "@tag.delimiter", { fg = c.gray_muted })

--Terminal
vim.api.nvim_set_var("terminal_color_0", c.gray)

-- Types
hl(0, "@type", { fg = c.nord8 })
hl(0, "@type.builtin", { fg = c.nord8 })
hl(0, "@lsp.type.class", { fg = c.nord9 })

-- Variables
hl(0, "@variable.builtin", { fg = c.gray })
hl(0, "@variable.parameter", { fg = c.nord4 })
hl(0, "@variable.parameter.builtin", { fg = c.gray })

-- YAML
hl(0, "@property.yaml", { fg = c.nord4 })
