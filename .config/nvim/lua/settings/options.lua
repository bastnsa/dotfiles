-- For consiceness
local opt = vim.opt

-- General UI
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.wrap = false
opt.signcolumn = "yes"
opt.showmode = false
opt.fillchars = { eob = " " }
opt.guicursor = "n-v-c-i:block-Cursor"
opt.termguicolors = true
opt.listchars:append({ eol = "¬" })

-- General UX
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.splitright = true
opt.splitbelow = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Integrate with system clipboard
opt.clipboard:append("unnamedplus")

-- Netrw directory (cascading lines)
vim.cmd("let g:netrw_liststyle = 3")

-- Notifications
local notify = require("notify")
vim.notify = notify

-- Search
opt.ignorecase = true
opt.smartcase = true
