vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set scrolloff=8")
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.splitright = false
vim.opt.spell = true
vim.opt.spelllang = "en_us"
-- vim.opt.wrap = true
-- vim.opt.linebreak = true
-- vim.opt.textwidth = 80
-- vim.opt.breakindent = true

-- Enable folds
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldenable = false -- start with everything unfolded when you open a file

vim.keymap.set("i", "jh", "<Esc>", { noremap = true })
vim.keymap.set("v", "jh", "<Esc>", { noremap = true })
vim.keymap.set("n", "tt", "$", { noremap = true })

-- Exit terminal mode
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"*y', { noremap = true, desc = "Yank to system clipboard" })

-- Paste from system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>g", '"*p', { noremap = true, desc = "Paste from system clipboard" })

-- Easier split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
-- vim.keymap.set("n", "<leader>vf", ":vsplit ", { desc = "Vertical split with file" })

-- Move splits around (these don't have great defaults to override)
vim.keymap.set("n", "<leader>mh", "<C-w>H", { desc = "Move split to far left" })
vim.keymap.set("n", "<leader>ml", "<C-w>L", { desc = "Move split to far right" })
vim.keymap.set("n", "<leader>mj", "<C-w>J", { desc = "Move split to bottom" })
vim.keymap.set("n", "<leader>mk", "<C-w>K", { desc = "Move split to top" })
vim.keymap.set("n", "<leader>mx", "<C-w>x", { desc = "Swap with next split" })

-- Easier split creation (leader is usually space)
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>sc", ":close<CR>", { desc = "Close split" })
vim.keymap.set("n", "<leader>so", ":only<CR>", { desc = "Close other splits" })

-- Resize with arrow keys
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
