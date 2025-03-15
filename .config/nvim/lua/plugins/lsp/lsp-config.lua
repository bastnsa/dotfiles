return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local map = vim.keymap.set

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
			title = "Documentation",
			width = math.floor(vim.o.columns * 0.5),
			height = math.floor(vim.o.lines * 0.3),
		})

		vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
			border = "rounded",
			title = "Signature Help",
		})

		-- After the LSP attaches to the current buffer
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				-- LSP keymappings with descriptions (`:help vim.lsp.*`)
				opts.desc = "Show documentation for what is under cursor"
				map("n", "K", vim.lsp.buf.hover, opts)

				opts.desc = "See available code actions"
				map({ "n", "v" }, "<leader>ct", vim.lsp.buf.code_action, opts)

				opts.desc = "Go to implementation"
				map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Show references"
				map("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Show definition"
				map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Show type definition"
				map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "Go to declaration"
				map("n", "gD", vim.lsp.buf.declaration, opts)

				opts.desc = "Smart rename"
				map("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Show buffer diagnostics"
				map("n", "<leader>bd", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

				opts.desc = "Restart LSP"
				map("n", "<leader>rs", ":LspRestart<CR>", opts)
			end,
		})

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		-- Setup LSP config for installed servers
		mason_lspconfig.setup_handlers({
			-- Default config
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
			-- Emmet config
			["emmet_ls"] = function()
				lspconfig["emmet_ls"].setup({
					capabilities = capabilities,
					filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss" },
				})
			end,
			-- Explicitly disable Deno for non-Deno projects
			["denols"] = function()
				lspconfig["denols"].setup({
					root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
					init_options = {
						enable = false,
						lint = false,
					},
				})
			end,
		})
	end,
}
