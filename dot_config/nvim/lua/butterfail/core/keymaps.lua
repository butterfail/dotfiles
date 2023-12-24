local keymap = vim.keymap

-- LEADER KEY FIRST
vim.g.mapleader = " "

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Remove macro key since I don't use it
keymap.set("n", "q", "<nop>", { silent = true })

keymap.set("n", "<C-S>", "<CMD>w<CR>", { silent = true, desc = "Save file" })
-- Clear search with <esc>
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })

-- WINDOWS MANAGEMENT
-- Move to window
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", silent = true })

-- Resize window
keymap.set("n", "<S-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height", silent = true })
keymap.set("n", "<S-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height", silent = true })
keymap.set("n", "<S-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
keymap.set("n", "<S-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width", silent = true })

-- Others
keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", silent = true })
keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", silent = true })
keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below", silent = true })
keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", silent = true })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", silent = true })
keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", silent = true })
-- END WINDOWS MANAGEMENT

--
-- TAB MANAGEMENT
keymap.set("n", "<leader>tt", "<CMD>tabnew<CR>", { desc = "New Tab", silent = true })
keymap.set("n", "<leader>td", "<CMD>tabclose<CR>", { desc = "Close Tab", silent = true }) -- Check the Bufremove configuration

keymap.set("n", "<S-h>", "<cmd>tabprevious<cr>", { desc = "Prev buffer", silent = true })
keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next buffer", silent = true })
keymap.set("n", "<S-<", "<cmd>-tabmove<cr>", { desc = "Move tab to left", silent = true, noremap = true })
keymap.set("n", "<S->", "<cmd>+tabmove<cr>", { desc = "Move tab to right", silent = true })
keymap.set("n", "<leader>tf", "<CMD>tabfirst<CR>", { desc = "First Tab", silent = true })
keymap.set("n", "<leader>tl", "<CMD>tablast<CR>", { desc = "Last Tab", silent = true })
-- TAB MANAGEMENT

-- MOVE CODE
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up", silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down", silent = true })
-- END MOVE CODE

keymap.set("n", "<leader>cf", "<CMD>let @+=expand('%:.')<CR>", { desc = "Copy relative file name", silent = true })
