return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")
    local fontSize = 1.2;
    local paddingRadio = vim.api.nvim_list_uis()[1].width > 175 and 0.50 or 0.90

    harpoon:setup({
      default = {
        display = function(list_item)
          local strLen = string.len(list_item.value)
          local maxLen = math.floor((vim.api.nvim_list_uis()[1].width * paddingRadio) / fontSize)

          return strLen > maxLen
              and '...' .. string.sub(list_item.value, strLen - maxLen, strLen)
              or list_item.value
        end
      }
    })

    local openQuickMenu = function() harpoon.ui:toggle_quick_menu(harpoon:list(), { ui_width_ratio = paddingRadio }) end

    vim.keymap.set("n", "<C-e>", openQuickMenu, { desc = 'Open Harpoon Window' })
    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = 'Add to Harpoon list' })

    vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end, { desc = 'Go to Harpoon mark 1' })
    vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end, { desc = 'Go to Harpoon mark 2' })
    vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end, { desc = 'Go to Harpoon mark 3' })
    vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end, { desc = 'Go to Harpoon mark 4' })

    vim.keymap.set("n", "<leader>H", function() harpoon:list():select(5) end, { desc = 'Go to Harpoon mark 5' })
    vim.keymap.set("n", "<leader>J", function() harpoon:list():select(6) end, { desc = 'Go to Harpoon mark 6' })
    vim.keymap.set("n", "<leader>K", function() harpoon:list():select(7) end, { desc = 'Go to Harpoon mark 7' })
    vim.keymap.set("n", "<leader>L", function() harpoon:list():select(8) end, { desc = 'Go to Harpoon mark 8' })
  end,
}
