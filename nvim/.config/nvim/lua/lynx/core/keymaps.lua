-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Center search results
keymap.set("n", "n", "nzz", opts)
keymap.set("n", "N", "Nzz", opts)
keymap.set("n", "*", "*zz", opts)
keymap.set("n", "#", "#zz", opts)
keymap.set("n", "g*", "g*zz", opts)
keymap.set("n", "g#", "g#zz", opts)

-- keymap.set("n", "<C-e>", "4<C-e>", opts)
-- keymap.set("n", "<C-y>", "4<C-y>", opts)

keymap.set("n", "<A-j>", "4<C-e>", opts)
keymap.set("n", "<A-k>", "4<C-y>", opts)

keymap.set("n", "<leader>n", ":nohl<CR>", { desc = "Clear search highlights" })

-- Normal --
-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<S-l>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-h>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap.set("n", "<S-l>", ":bnext<CR>", opts)
-- keymap.set("n", "<S-h>", ":bprevious<CR>", opts)
keymap.set("n", "<leader>bd", ":bd!<CR>", { desc = "Close current buffer" })
keymap.set("n", "<S-q>", ":bd!<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Switch to next buffer" })
keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Switch to previous buffer" })
keymap.set("n", "<leader>bb", ":b#<CR>", { desc = "Last buffer visited" })
keymap.set("n", "<leader>bl", "<cmd>Telescope buffers<CR>", { desc = "Show all buffers" })

-- Move text up and down
-- keymap.set("n", "<A-j>", ":m+<CR>==", opts)
-- keymap.set("n", "<A-k>", ":m-2<CR>==", opts)

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down
keymap.set("v", "<A-j>", ":m+<CR>==", opts)
keymap.set("v", "<A-k>", ":m-2<CR>==", opts)
-- keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Keymaps for better default experience
-- See `:help keymap.set.set()`
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Comments
keymap.set("n", "<leader>kc", "gcc", { desc = "Toggle comment", remap = true })
keymap.set("n", "<C-#>", "gcc", { desc = "Toggle comment", remap = true })
keymap.set("v", "<leader>kc", "gc", { desc = "Toggle comment", remap = true })
keymap.set("v", "<C-#>", "gc", { desc = "Toggle comment", remap = true })
