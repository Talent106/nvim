return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

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
  end,
}
