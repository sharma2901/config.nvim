local set = vim.keymap.set
-- Clear search and stop snippet on escape
set("n", "<Esc>", ":nohl<CR>", {silent = true})
set("n", "\\", "<cmd>Oil --float<CR>", {desc = "Open Oil in float"})
set("i", "jk", "<Esc>", {desc = "Go out of insert mode" })
set("n", "<space><space>x", "<cmd>source %<CR>", {desc = "Reload current file"})
set("n", "<space>x", ":.lua<CR>", {desc = "Reload current line"})
set("v", "<space>x", ":lua<CR>", {desc = "Reload current selection"})
set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
-- commenting
set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })
-- lazy
set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })
set("n", "<leader>M", "<cmd>Mason<cr>", { desc = "Lazy" })
set("n", "+", "<C-a>", {desc = "Increment"})
set("n", "-", "<C-x>", {desc = "Decrement"})
set("n", "gl", function() vim.diagnostic.open_float() end, {desc = "Open diagnostic in float"})
set("n","<leader>in", "G$vgg0=2<C-o>", {silent=true} )
set("n","<leader>sa", "G$vgg0", {silent=true} )
set("n", "<leader?lg", "<cmd>LazyGit<CR>", {desc = "Open LazyGit"})
