return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
   dependencies = { 'nvim-lua/plenary.nvim' },
   config = function()
     local telescope = require('telescope')
     local builtin = require('telescope.builtin')
     local actions = require('telescope.actions')

     telescope.setup({
       defaults = {
         mappings = {
           i = {
             ["<C-h>"] = actions.select_horizontal,
             ["<C-v>"] = actions.select_vertical,
             ["<C-n>"] = actions.select_tab,
           },
           n = {
             ["<C-h>"] = actions.select_horizontal,
             ["<C-v>"] = actions.select_vertical,
             ["<C-n>"] = actions.select_tab,
           }
         }
       }
     })

     vim.keymap.set('n', '<leader>fl', builtin.find_files, {})
     vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
     vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
     vim.keymap.set('n', '<leader>ft', ":TodoTelescope<CR>", {})
   end
}
