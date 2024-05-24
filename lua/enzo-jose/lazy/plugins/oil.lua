return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup()

        -- OPEN NETRW ON CURRENT FILE DIRECTORY
        vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Execute [E]xplore command (OIL)" })
    end
};
