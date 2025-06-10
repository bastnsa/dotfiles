return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local custom_signs = {
        add = { text = "+" },
        change = { text = "|" },
        delete = { text = "_" },
      }
      require("gitsigns").setup({
        signs = custom_signs,
        signs_staged = custom_signs,
        preview_config = {
          border = "rounded",
        },
      })
    end,
  },
  {
    "tpope/vim-fugitive",
  },
}
