-- For conciseness
local autocmd = vim.api.nvim_create_autocmd
local core = vim.api.nvim_create_augroup("Core", { clear = true })

-- Terminal
autocmd("TermOpen", {
	desc = "Set local options for terminal",
	group = core,
	callback = function()
		vim.cmd("setlocal nonumber norelativenumber")
	end,
})

-- Text
autocmd("BufReadPre", {
	desc = "Enable text wrapping for markdown and text files",
	pattern = "*.md,*.txt",
	group = core,
	callback = function()
		vim.wo.wrap = true
	end,
})

autocmd("TextYankPost", {
	desc = "Highlight yanked text",
	group = core,
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})
