return {
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         -- tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon
    --         vim.cmd.colorscheme "tokyonight-moon"
    --     end,
    -- },
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    --         vim.cmd.colorscheme "catppuccin-macchiato"
    --     end,
    -- },
    -- {
    --     'navarasu/onedark.nvim',
    --     priority = 1000,
    --     config = function() vim.cmd.colorscheme 'onedark' end,
    -- },
    -- {
    --     "oxfist/night-owl.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- load the colorscheme here
    --         vim.cmd.colorscheme "night-owl"
    --     end,
    -- },
    -- {
    --     "JoosepAlviste/palenightfall.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- load the colorscheme here
    --         vim.cmd.colorscheme "palenightfall"
    --     end,
    -- },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function() vim.cmd.colorscheme 'nordic' end
    }
}
