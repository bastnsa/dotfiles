local autocmd = vim.api.nvim_create_autocmd
local core = vim.api.nvim_create_augroup("Core", { clear = true })
local map = vim.keymap.set
local opts = { buffer = true, silent = true }

autocmd("VimEnter", {
	desc = "Set single-key shortcuts on startup and empty buffers",
	group = core,
	callback = function()
		if vim.fn.argc() == 0 and vim.bo.buftype == "" then
			map("n", "e", ":Neotree filesystem reveal_force_cwd float toggle<CR>", opts)
			map("n", "l", ":Lazy<CR>", opts)
			map("n", "f", ":FindFiles<CR>", opts)
			map("n", "r", ":FindRecent<CR>", opts)
			map("n", "s", ":GrepSearch<CR>", opts)
			map("n", "q", ":qa<CR>", opts)
		end
	end,
})

autocmd("BufReadPre", {
	desc = "Enable better wrapping and navigation for md and txt files",
	pattern = "*.md,*.txt",
	group = core,
	callback = function()
		vim.wo.wrap = true
		vim.wo.linebreak = true
		vim.wo.breakindent = true

		map("n", "I", "g0i", opts)
		map("n", "A", "g$a", opts)
		map("n", "j", "gj", opts)
		map("n", "k", "gk", opts)
		map("n", "0", "g0", opts)
		map("n", "$", "g$", opts)
		map("v", "j", "gj", opts)
		map("v", "k", "gk", opts)
		map("v", "0", "g0", opts)
		map("v", "$", "g$", opts)
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
