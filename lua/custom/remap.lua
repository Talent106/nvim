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

-- TREESITTER CONTEXT
vim.keymap.set("n", "<leader>ct", function()
  require("treesitter-context").go_to_context()
end, { silent = true })

--  SAVE ALL FILES
vim.keymap.set("n", "<leader>W", "<Cmd>:wa<CR>")

-- NEOTREE
vim.keymap.set("n", "<leader>e", '<Cmd>Neotree toggle<CR>')

-- COPILOT
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
