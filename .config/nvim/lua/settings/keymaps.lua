-- For conciseness
local map = vim.keymap.set

-- Buffers
map("n", "<leader>ce", ":NoNeckPain<CR>", { desc = "Toggle centered buffer", silent = true })
map("n", "<leader>bc", ":bdelete<CR>", { desc = "Close the current buffer", silent = true })
map("n", "<leader>l", ":bnext<CR>", { desc = "Go to next buffer", silent = true })
map("n", "<leader>h", ":bprevious<CR>", { desc = "Go to previous buffer", silent = true })

-- Code
map("n", "<leader>ru", RunCode, { desc = "Run the code of the current file", silent = true })
map("n", "<leader>ff", ":SnipRun<CR>", { desc = "Run the code of the current line", silent = true })
map("v", "f", ":'<,'>SnipRun<CR>", { desc = "Run the code of the highlighted lines", silent = true })
map(
	"n",
	"<leader>fu",
	":let b:caret=winsaveview()<CR> | :%SnipRun <CR>| :call winrestview (b:caret) <CR>",
	{ desc = "Run the code of the current file", silent = true }
)

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

-- Tabs
map("n", "<leader>to", ":tabnew<CR>", { desc = "Open a new tab", silent = true })
map("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab", silent = true })
map("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab", silent = true })
map("n", "<leader>tb", ":tabnew %<CR>", { desc = "Open the current buffer in a new tab", silent = true })

-- Terminal
map("n", "<leader>tt", ToggleTerminal, { desc = "Toggle terminal as floating window", silent = true })
map("n", "<leader>mo", ":bot 10 new | terminal<CR>A", { desc = "Open terminal in lower split", silent = true })
map("n", "<leader>mn", ":terminal<CR>A", { desc = "Open terminal in a new window", silent = true })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode", silent = true })
map("n", "<leader>mc", ":bdelete!<CR>", { desc = "Close the current terminal buffer", silent = true })
