return {
    {
        "kaicataldo/material.vim",
        lazy = false,
        priority = 1000,
        config = function()
            -- 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
            -- 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
            vim.g.material_theme_style = 'palenight'
            vim.cmd.colorscheme "material"
        end,
    },
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    --         vim.cmd.colorscheme "catppuccin-mocha"
    --     end,
    -- },
    -- {
    --     "dracula/vim",
    --     lazy = false,
    --     priority = 1000,
    --     name = "dracula",
    --     opts = {},
    --     config = function()
    --         vim.cmd.colorscheme "dracula"
    --     end,
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         -- tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon
    --         vim.cmd.colorscheme "tokyonight"
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
    -- {
    --     'AlexvZyl/nordic.nvim',
    --     lazy = false,
    --     priority = 1000,
    --     config = function() vim.cmd.colorscheme 'nordic' end
    -- },
}
