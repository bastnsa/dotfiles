return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.HINT] = "󰌶 ",
					[vim.diagnostic.severity.INFO] = "",
				},
			},
			virtual_text = true,
			update_in_insert = false,
			underline = true,
			severity_sort = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = true,
				header = "",
				prefix = "",
			},
		})

		vim.api.nvim_create_autocmd("ColorScheme", {
			callback = function()
				vim.api.nvim_set_hl(0, "LspReferenceTarget", {})
			end,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local map = vim.keymap.set
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "Show documentation for what is under cursor"
				map("n", "K", function()
					vim.lsp.buf.hover({
						border = "rounded",
						focusable = true,
						style = "minimal",
						max_width = 70,
					})
				end, opts)

				opts.desc = "Buffer diagnostics"
				map("n", "<leader>bd", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

				opts.desc = "Code actions"
				map({ "n", "v" }, "ca", vim.lsp.buf.code_action, opts)

				opts.desc = "Go to implementation"
				map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Go to definition"
				map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Go to type definition"
				map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "Grep references"
				map("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Restart LSP"
				map("n", "<leader>rs", ":LspRestart<CR>", opts)

				opts.desc = "Smart rename"
				map("n", "<leader>rn", vim.lsp.buf.rename, opts)
			end,
		})
	end,
}
