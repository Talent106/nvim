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

--------------------------------------
-- PLUGGINS REMAPS
--
-- TREESITTER CONTEXT
vim.keymap.set("n", "<leader>ct", function()
  require("treesitter-context").go_to_context()
end, { silent = true })

-- FUGITIVE (GIT)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = 'Open [G]it [S]tatus panel' })
vim.keymap.set("n", "<leader>gb", "<Cmd>:Git blame<CR>", { desc = 'Execute [G]it [B]lame command' })
vim.keymap.set("n", "<leader>gp", "<Cmd>:Git pull<CR>", { desc = 'Execute [G]it [P]ull command' })
vim.keymap.set("n", "<leader>gP", "<Cmd>:Git push<CR>", { desc = 'Execute [G]it [P]ush command' })

vim.keymap.set("n", "<leader>gH", "<Cmd>:diffget //2<CR>", { desc = 'Execute ":diffget" to LEFT option' })
vim.keymap.set("n", "<leader>gL", "<Cmd>:diffget //3<CR>", { desc = 'Execute ":diffget" to RIGHT option' })

vim.keymap.set("n", "<leader>gt", ":Git push --set-upstream origin ", { desc = 'Start [G]it push with [T]racking' })
vim.keymap.set("n", "<leader>gc", ":Git checkout ", { desc = 'Start [G]it [C]heckout command' })
vim.keymap.set("n", "<leader>gC", ":Git checkout -b ", { desc = 'Start [G]it [C]heckout -b command' })

-- OIL.NVIM
vim.keymap.set("n", "<leader>e", "<CMD>:Explore<CR>", { desc = "Execute [E]xplore command (Netrw)" })

-- COPILOT
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- TMUX
vim.keymap.set("n", "<C-h>", "<Cmd>:TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>:TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<Cmd>:TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>:TmuxNavigateUp<CR>")

-- HARPOON SETUP
local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>A", function() harpoon:list():remove() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>al", function() harpoon:list():clear() end)

vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<leader>H", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>J", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<leader>K", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<leader>L", function() harpoon:list():select(8) end)
