return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = 'Open [G]it [S]tatus panel' })
        vim.keymap.set("n", "<leader>gb", "<Cmd>:Git blame<CR>", { desc = 'Execute [G]it [B]lame command' })
        vim.keymap.set("n", "<leader>gp", "<Cmd>:Git pull<CR>", { desc = 'Execute [G]it [P]ull command' })
        vim.keymap.set("n", "<leader>gP", "<Cmd>:Git push<CR>", { desc = 'Execute [G]it [P]ush command' })

        vim.keymap.set("n", "<leader>gH", "<Cmd>:diffget //2<CR>", { desc = 'Execute ":diffget" to LEFT option' })
        vim.keymap.set("n", "<leader>gL", "<Cmd>:diffget //3<CR>", { desc = 'Execute ":diffget" to RIGHT option' })

        vim.keymap.set("n", "<leader>gt", ":Git push --set-upstream origin ", { desc = 'Start [G]it push with [T]racking' })
        vim.keymap.set("n", "<leader>gc", ":Git checkout ", { desc = 'Start [G]it [C]heckout command' })
        vim.keymap.set("n", "<leader>gC", ":Git checkout -b ", { desc = 'Start [G]it [C]heckout -b command' })
    end
}
