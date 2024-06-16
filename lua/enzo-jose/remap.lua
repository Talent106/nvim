-- DEFAULT
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- NAVIGATION
--------------------------------------
--
-- MOVE LINES
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ON NAVIGATE HALF PAGE KEEP CURSOR CENTERED
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-b>", "<C-u>zz")

-- ON SEARCH KEEP CURSOR CENTERED
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- PASTE WHITOUT LOOSE BUFFER
vim.keymap.set("x", "<leader>p", [["_dP]])

--  SAVE ALL FILES
vim.keymap.set("n", "<leader>w", "<Cmd>:wa<CR>")
vim.keymap.set("n", "<C-s>", "<Cmd>:wa<CR>")

-- CLOSE TAG
vim.keymap.set("n", "<leader>Ct", "<Cmd>:tabclose<CR>", { desc = "[T]ab [C]lose" })

-- FORMAT CODE
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ formatting_options = { tabSize = 4 } }) end)

-- REMOVE Q KEYMAP
vim.keymap.set("n", "Q", "<nop>")

-- QUIT INSERT AND VISUAL MODE
vim.keymap.set({ "i", "v" }, "<C-c>", "<ESC>")
vim.keymap.set({ "i" }, "jj", "<ESC>")

-- OPEN NETRW ON CURRENT FILE DIRECTORY
vim.keymap.set("n", "<leader>-", "<CMD>:Explore<CR>", { desc = "Execute [E]xplore command (NETRW)" })
