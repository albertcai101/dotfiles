vim.g.mapleader = "\\"

-- switch projects easily
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- close all windows except current
vim.keymap.set("n", "<leader>rd", "<cmd>only<CR>")

-- jump to most recent file (and back)
vim.keymap.set("n", "<leader><leader>", "<c-^>")

-- easily move blocks of code up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- view stability so cursor doesn't jump crazily
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep p intact with leader
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy into system with leader
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- avoid pain
vim.keymap.set("n", "Q", "<nop>")

-- replace all occurences of current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file a bash executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
