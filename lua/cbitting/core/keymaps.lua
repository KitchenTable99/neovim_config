vim.g.mapleader = " "

local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":qa<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sc", "<cmd>close<CR>")

keymap.set("n", "<leader>to", "<CMD>tabnew<CR>")
keymap.set("n", "<leader>tc", "<CMD>tabclose<CR>")
keymap.set("n", "<leader>tn", "<CMD>tabn<CR>")
keymap.set("n", "<leader>tp", "<CMD>tabp<CR>")

-- plugins

-- Comment
keymap.set("n", "<leader>/", "<CMD>lua require('Comment.api').toggle.linewise.current()<CR>")
keymap.set("v", "<leader>/", "<esc><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
keymap.set("n", "<leader>o", ":Neotree focus<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<CMD>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<CMD>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<cr>") -- list available help tags

-- harpoon
keymap.set("n", "<leader>ht", "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap.set("n", "<leader>hm", "<CMD>lua require('harpoon.mark').add_file()<CR>")
keymap.set("n", "<leader>ha", "<CMD>lua require('harpoon.ui').nav_file(1)<CR>")
keymap.set("n", "<leader>hs", "<CMD>lua require('harpoon.ui').nav_file(2)<CR>")
keymap.set("n", "<leader>hd", "<CMD>lua require('harpoon.ui').nav_file(3)<CR>")
keymap.set("n", "<leader>hf", "<CMD>lua require('harpoon.ui').nav_file(4)<CR>")
