map("n", "<leader>q", "<cmd>q!<CR>", opts)
map("n", "<leader>w", "<cmd>w!<CR>", opts)
map("n", "<leader>x", "<cmd>wqa!<CR>", opts)

-- Navigation in insert mode
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("i", "jk", "<Esc>", opts)

map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
