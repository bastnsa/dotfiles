local autocmd = vim.api.nvim_create_autocmd
local core = vim.api.nvim_create_augroup("Core", { clear = true })
local map = vim.keymap.set

autocmd("VimEnter", {
	desc = "Set single-key shortcuts on startup screen and empty buffers",
	group = core,
	callback = function()
		if vim.fn.argc() == 0 and vim.bo.buftype == "" and vim.fn.line("$") == 1 and vim.fn.getline(1) == "" then
			map("n", "e", ":Neotree filesystem reveal_force_cwd float toggle<CR>", { buffer = true, silent = true })
			map("n", "l", ":Lazy<CR>", { buffer = true, silent = true })
			map("n", "f", ":FindFiles<CR>", { buffer = true, silent = true })
			map("n", "r", ":FindRecent<CR>", { buffer = true, silent = true })
			map("n", "s", ":GrepSearch<CR>", { buffer = true, silent = true })
			map("n", "q", ":qa<CR>", { buffer = true, silent = true })
		end
	end,
})

autocmd("BufReadPre", {
	desc = "Enable better wrapping and navigation for markdown and text files",
	pattern = "*.md,*.txt",
	group = core,
	callback = function()
		vim.wo.wrap = true
		vim.wo.linebreak = true
		vim.wo.breakindent = true

		map("n", "I", "g0i", { buffer = true })
		map("n", "A", "g$a", { buffer = true })
		map("n", "j", "gj", { buffer = true })
		map("n", "k", "gk", { buffer = true })
		map("n", "0", "g0", { buffer = true })
		map("n", "$", "g$", { buffer = true })
		map("v", "j", "gj", { buffer = true })
		map("v", "k", "gk", { buffer = true })
		map("v", "0", "g0", { buffer = true })
		map("v", "$", "g$", { buffer = true })
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
