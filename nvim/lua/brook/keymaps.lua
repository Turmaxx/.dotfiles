-- Shorten long function names
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.mark")

------------------------------------------------
--            Leader Key
------------------------------------------------
-- Remap space as leader key
map ("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

------------------------------------------------
--            Plugin Keymaps
------------------------------------------------
-- Telescope
map ("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- map ("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
map ("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Nvim Comment
map ("n", "<leader>c", ":CommentToggle<CR>", opts)       -- Comment One Line
map ("x", "<leader>c", ":'<,'>CommentToggle<CR>", opts)  -- Comment Multiple Lines In Visual Mode
map ("n", "<leader>p", "vip:CommentToggle<CR>", opts)    -- Comment A Paragraph

-- Toggle Alpha Dashboard
map ('n', "<leader>a", ":set laststatus=3<CR> | :Alpha<CR>",opts)

-- Nvimtree
map	("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

------------------------------------------------
-- 			  Normal Mode
------------------------------------------------
-- Better Window Navigation
map ("n", "<C-h>", "<C-w>h", opts)
map ("n", "<C-j>", "<C-w>j", opts)
map ("n", "<C-k>", "<C-w>k", opts)
map ("n", "<C-l>", "<C-w>l", opts)
map ("n", "<C-w>", "<C-w>w", opts)
-- map ("n", "<C-i>", "<C-w>w:startinsert<CR>", opts)

-- Resize Buffers
map ("n", "<C-Up>", ":resize -2<CR>", opts)
map ("n", "<C-Down>", ":resize +2<CR>", opts)
map ("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map ("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate Buffers
map ("n", "<S-l>", "bnext<CR>", opts)
map ("n", "<S-h>", "bprevious<CR>", opts)
map	("n", "<Leader>w", ":bdelete<CR>", opts)

-- Move Text Up And Down
map ("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map ("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

------------------------------------------------
-- 			  Insert Mode
------------------------------------------------

-- Press jk fast to insert mode 
-- keymap("i", "jk", "<ESC>", opts)

------------------------------------------------
-- 			  Visual Mode
------------------------------------------------
--  Better tabbing   
map ("v", "<", "<gv", opts)
map ("v", ">", ">gv", opts)

--  Move Text Up And Down
map ("v", "<A-j>", ":m .+1<CR>==", opts)
map ("v", "<A-k>", ":m .-2<CR>==", opts)
-- map ("v", "p", '"_dP', opts)

------------------------------------------------
-- 			  Visual Block Mode
------------------------------------------------
-- Move text up and down
map ("x", "J", ":move '>+1<CR>gv-gv", opts)
map ("x", "K", ":move '<-2<CR>gv-gv", opts)
map ("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map ("x", "<A-k>", ":move '<-3<CR>gv-gv", opts)

------------------------------------------------
-- 			  Terminal Mode
------------------------------------------------
-- Better terminal navigation
map ("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
map ("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
map ("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
map ("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

------------------------------------------------
-- 			  Harpoon Mode
------------------------------------------------
-- Buffer Control
-- map ("n", "<leader>a", mark.add_file)
-- map ("n", "<C-e>", ui.toggle_quick_menu)
-- 
-- map ("n", "<C-h>", function() ui.nav_file(1), end)
-- map ("n", "<C-t>", function() ui.nav_file(2), end)
-- map ("n", "<C-n>", function() ui.nav_file(3), end)
-- map ("n", "<C-s>", function() ui.nav_file(4), end)
