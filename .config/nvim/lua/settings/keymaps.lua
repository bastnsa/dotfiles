local map = vim.keymap.set

-- Buffers
map("n", "<leader>ce", ":NoNeckPain<CR>", { desc = "Toggle centered buffer", silent = true })
map("n", "<leader>bc", ":bdelete<CR>", { desc = "Close the current buffer", silent = true })
map("n", "<leader>l", ":bnext<CR>", { desc = "Go to next buffer", silent = true })
map("n", "<leader>h", ":bprevious<CR>", { desc = "Go to previous buffer", silent = true })

-- Code
map("n", "<leader>ru", RunCode, { desc = "Run the current file", silent = true })

-- Neotree
map("n", "<leader>n", ":Neotree filesystem reveal_force_cwd float toggle<CR>", { silent = true })
map("n", "<leader>g", ":Neotree git_status float toggle<CR>", { silent = true })

-- Search
map("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlights", silent = true })
map(
	"n",
	"<leader>sr",
	":%s/\\<<C-r><C-w>\\>//g<Left><Left>",
	{ desc = "Search and replace word under cursor", noremap = true }
)

-- Splits
map("n", "<leader>sc", ":close<CR>", { desc = "Close the current split", silent = true })
map("n", "<leader>sv", "<C-w>v", { desc = "Split vertically", silent = true })
map("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally", silent = true })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal in size", silent = true })
map("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left split", silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right split", silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower split", silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper split", silent = true })

-- Telescope
map("n", "<leader>fd", ":TodoTelescope<CR>", { silent = true })
map("n", "<leader>ff", ":FindFiles<CR>", { silent = true })
map("n", "<leader>fr", ":FindRecent<CR>", { silent = true })
map("n", "<leader>fs", ":GrepSearch<CR>", { silent = true })

-- Terminal
map("n", "<leader>tt", ToggleTerminal, { desc = "Toggle terminal as floating window", silent = true })
map("n", "<leader>mo", ":bot 10 new | terminal<CR>A", { desc = "Open terminal in lower split", silent = true })
map("n", "<leader>mn", ":terminal<CR>A", { desc = "Open terminal in a new window", silent = true })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode", silent = true })
map("n", "<leader>mc", ":bdelete!<CR>", { desc = "Close the current terminal buffer", silent = true })
