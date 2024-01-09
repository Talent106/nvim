-- CATPPUCCIN
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin-macchiato" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  end,

}

-- ONE DARK
-- return {
--   'navarasu/onedark.nvim',
--   priority = 1000,
--   config = function() vim.cmd.colorscheme 'onedark' end,
-- }
