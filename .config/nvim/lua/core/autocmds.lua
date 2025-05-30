local autocmd = vim.api.nvim_create_autocmd
local core = vim.api.nvim_create_augroup("Core", { clear = true })

autocmd("VimEnter", {
	desc = "Set single-key shortcuts on startup screen and empty buffers",
	group = core,
	callback = function()
		if vim.fn.argc() == 0 and vim.bo.buftype == "" and vim.fn.line("$") == 1 and vim.fn.getline(1) == "" then
			local map = vim.keymap.set
			map("n", "e", ":Neotree filesystem reveal left toggle<CR>", { buffer = true, silent = true })
			map("n", "l", ":Lazy<CR>", { buffer = true, silent = true })
			map("n", "f", ":FindFiles<CR>", { buffer = true, silent = true })
			map("n", "r", ":FindRecent<CR>", { buffer = true, silent = true })
			map("n", "s", ":GrepSearch<CR>", { buffer = true, silent = true })
			map("n", "q", ":qa<CR>", { buffer = true, silent = true })
		end
	end,
})

autocmd("BufReadPre", {
	desc = "Enable text wrapping for markdown and text files",
	pattern = "*.md,*.txt",
	group = core,
	callback = function()
		vim.wo.wrap = true
	end,
})

autocmd("TermOpen", {
	desc = "Set local options for terminal",
	group = core,
	callback = function()
		vim.cmd("setlocal nonumber norelativenumber")
	end,
})

autocmd("TextYankPost", {
	desc = "Highlight yanked text",
	group = core,
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})
