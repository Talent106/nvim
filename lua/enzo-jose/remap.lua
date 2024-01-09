-- NAVIGATION
--------------------------------------
--
-- MOVE LINES
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ON NAVIGATE HALF PAGE KEEP CURSOR CENTERED
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- ON SEARCH KEEP CURSOR CENTERED
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- PASTE WHITOUT LOOSE BUFFER
vim.keymap.set("x", "<leader>p", [["_dP]])

--  SAVE ALL FILES
vim.keymap.set("n", "<leader>W", "<Cmd>:wa<CR>")

-- REMOVE Q KEYMAP
vim.keymap.set("n", "Q", "<nop>")

-- OPEN NETRW ON CURRENT FILE DIRECTORY
vim.keymap.set("n", "<leader>e", "<CMD>:Explore<CR>", { desc = "Execute [E]xplore command (Netrw)" })
