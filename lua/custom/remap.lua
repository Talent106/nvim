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
vim.keymap.set("n", "<leader>gp", "<Cmd>:Git pull<CR>", { desc = 'Execute [G]it [P]ull command' })
vim.keymap.set("n", "<leader>gP", "<Cmd>:Git push<CR>", { desc = 'Execute [G]it [P]ush command' })
vim.keymap.set("n", "<leader>gt", ":Git push --set-upstream origin ", { desc = 'Start [G]it push with [T]racking' })
vim.keymap.set("n", "<leader>gc", ":Git checkout ", { desc = 'Start [G]it [C]heckout command' })
vim.keymap.set("n", "<leader>gC", ":Git checkout -b ", { desc = 'Start [G]it [C]heckout -b command' })

-- OIL.NVIM
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory on OIL" })

-- NEOTREE
vim.keymap.set("n", "<leader>e", '<Cmd>Neotree toggle<CR>')

-- COPILOT
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- TMUX
vim.keymap.set("n", "<C-h>", "<Cmd>:TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>:TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<Cmd>:TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>:TmuxNavigateUp<CR>")

-- HARPOON SETUP
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>A", mark.rm_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>al", mark.clear_all)

vim.keymap.set("n", "<leader>h", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>j", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>k", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>l", function() ui.nav_file(4) end)

vim.keymap.set("n", "<leader>H", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>J", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>K", function() ui.nav_file(7) end)
vim.keymap.set("n", "<leader>L", function() ui.nav_file(8) end)
