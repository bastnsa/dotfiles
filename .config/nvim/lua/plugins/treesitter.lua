return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
        custom_captures = {
          ["tag.delimiter"] = "Delimiter",
          ["tag.name"] = "Keyword",
        },
      },
      indent = { enable = true },
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "css",
        "comment",
        "html",
        "json",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>is",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
