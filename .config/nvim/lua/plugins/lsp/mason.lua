return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				border = "rounded",
				width = 0.8,
				height = 0.8,
				icons = {
					package_installed = "●",
					package_pending = "",
					package_uninstalled = "○",
				},
			},
		})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"cssls",
				"emmet_ls",
				"html",
				"jsonls",
				"lua_ls",
				"marksman",
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
