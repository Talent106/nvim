require('lazy').setup({
  'tpope/vim-rhubarb',
  'tpope/vim-sleuth',
  'nvim-lua/plenary.nvim',

  { 'folke/which-key.nvim',  opts = {} },
  { 'numToStr/Comment.nvim', opts = {} },

  {
    'github/copilot.vim',
    config = function()
      vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end
  },

  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  { import = 'enzo-jose.lazy.plugins' }
}, {})
