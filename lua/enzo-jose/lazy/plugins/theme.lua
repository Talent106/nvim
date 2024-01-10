-- TOKYO NIGHT
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- " There are also colorschemes for the different styles.
    -- colorscheme tokyonight-night
    -- colorscheme tokyonight-storm
    -- colorscheme tokyonight-day
    -- colorscheme tokyonight-moon
    vim.cmd.colorscheme "tokyonight-moon"
  end,
}

-- CATPPUCCIN
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme "catppuccin-macchiato" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
--   end,
--
-- }

-- ONE DARK
-- return {
--   'navarasu/onedark.nvim',
--   priority = 1000,
--   config = function() vim.cmd.colorscheme 'onedark' end,
-- }
