local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'tpope/vim-rhubarb',
    'tpope/vim-sleuth',
    'nvim-lua/plenary.nvim',

    { 'folke/which-key.nvim',           opts = {} },
    {
        'numToStr/Comment.nvim',
        opts = {},
        config = function()
            require('Comment.config'):get()
            vim.keymap.set({'n', 'v'}, '<C-/>', require('Comment.api').toggle.linewise.current)
        end,
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {},
    },

    {
        'github/copilot.vim',
        config = function()
            vim.api.nvim_set_keymap("i", "<C-b>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
        end
    },

    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = false,
                theme = vim.g.colors_name,
                component_separators = '|',
                section_separators = '',
            },
        },
    },

    { import = 'enzo-jose.lazy.plugins' },
}, {})
