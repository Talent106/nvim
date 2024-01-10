return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    local t = require("trouble");
    local opt = { skip_groups = true, jump = true };

    vim.keymap.set("n", "<leader>tt", function() t.toggle() end, { desc = 'Execute [T]rouble [T]oggle' })
    vim.keymap.set("n", "<leader>tq", function() t.toggle("quickfix") end, { desc = 'Open [T]rouble [Q]uickfix list' })

    vim.keymap.set("n", "<leader>tn", function() t.next(opt) end, { desc = 'Open [T]rouble [N]ext list' })
    vim.keymap.set("n", "<leader>tp", function() t.previous(opt) end, { desc = 'Open [T]rouble [P]revious' })

    vim.keymap.set("n", "<leader>td", function() t.toggle("document_diagnostics") end, { desc = 'Open [T]rouble [D]iagnostics list' })
    vim.keymap.set("n", "<leader>tw", function() t.toggle("workspace_diagnostics") end, { desc = 'Open [T]rouble [W]orkspace diagnostics list' })
  end
}
