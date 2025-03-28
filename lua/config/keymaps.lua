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
set("n", "<leader>M", "<cmd>Mason<cr>", { desc = "Mason" })
set("n", "+", "<C-a>", {desc = "Increment"})
set("n", "-", "<C-x>", {desc = "Decrement"})
set("n", "gl", function() vim.diagnostic.open_float() end, {desc = "Open diagnostic in float"})
set("n","<leader>in", "ma<S-g><S-v>gg0='a", {desc = "Indent whole file" ,silent=true} )
set("n","<leader>sa", "<S-g><S-v>gg0", {desc = "Select all",silent=true} )

-- better up/down
set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- better indenting
set("v", "<", "<gv")
set("v", ">", ">gv")

