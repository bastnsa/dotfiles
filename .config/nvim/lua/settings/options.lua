local opt = vim.opt

-- Display
opt.cursorline = true
opt.guicursor = "n-v-c-i:block-Cursor"
opt.number = true
opt.relativenumber = true
opt.ruler = false
opt.signcolumn = "yes"
opt.showcmd = false
opt.showmode = false
opt.termguicolors = true

-- Behavior
opt.fillchars = { eob = " " }
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.splitbelow = true
opt.splitright = true
opt.wrap = false

-- Indentation
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2

-- Integrate with system clipboard
opt.clipboard:append("unnamedplus")

-- Netrw directory (cascading lines)
vim.cmd("let g:netrw_liststyle = 3")

-- Search
opt.ignorecase = true
opt.smartcase = true
