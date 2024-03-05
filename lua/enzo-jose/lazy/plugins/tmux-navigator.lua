return {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    config = function()
        vim.keymap.set("n", "<C-h>", "<Cmd>:TmuxNavigateLeft<CR>")
        vim.keymap.set("n", "<C-l>", "<Cmd>:TmuxNavigateRight<CR>")
        vim.keymap.set("n", "<C-j>", "<Cmd>:TmuxNavigateDown<CR>")
        vim.keymap.set("n", "<C-k>", "<Cmd>:TmuxNavigateUp<CR>")
    end,
}
