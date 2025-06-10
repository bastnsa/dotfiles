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
        -- "cssls",
        -- "emmet_ls",
        -- "html",
        -- "jsonls",
        "lua_ls",
        "marksman",
        -- "rust_analyzer",
      },
    })
    require("mason-tool-installer").setup({
      ensure_installed = {
        -- "black",
        -- "eslint_d",
        -- "isort",
        -- "prettier",
        -- "pylint",
        "stylua",
      },
    })
  end,
}
