return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function() return vim.fn.executable 'make' == 1 end,
        },
    },
    config = function()
        -- cursor,  dropdown, ivy
        local dropdownTheme = 'ivy'

        require('telescope').setup {
            defaults = {
                path_display = {
                    -- "smart"
                    -- "shorten"
                    "truncate"
                },
                vimgrep_arguments = {
                    "rg",
                    "--follow",        -- Follow symbolic links
                    "--hidden",        -- Search for hidden files
                    "--no-heading",    -- Don't group matches by each file
                    "--with-filename", -- Print the file path with the matched lines
                    "--line-number",   -- Show line numbers
                    "--column",        -- Show column numbers
                    "--smart-case",    -- Smart case search
                    "--no-ignore",

                    -- Exclude some patterns from search
                    "--glob=!**/.git/*",
                    "--glob=!**/.idea/*",
                    "--glob=!**/.angular/*",
                    "--glob=!**/.vscode/*",
                    "--glob=!**/build/*",
                    "--glob=!**/dist/*",
                    "--glob=!**/yarn.lock",
                    "--glob=!**/package-lock.json",
                    "--glob=!**/vendor/*",
                    "--glob=!**/.github/*",
                    "--glob=!**.cache",
                    "--glob=!**/node_modules/*",
                    "--glob=!**/public/*",
                    "--glob=!**/storage/api-docs",
                    "--glob=!**/storage/app",
                    "--glob=!**/storage/framework",
                    "--glob=!**/storage/docs",
                },
                mappings = {
                    i = {
                        ['<C-u>'] = false,
                        ['<C-d>'] = false,
                    },
                },
            },
            pickers = {
                git_files = { theme = dropdownTheme, },
                oldfiles = { theme = dropdownTheme, },
                buffers = { theme = dropdownTheme, },
                help_tags = { theme = dropdownTheme, },
                grep_string = { theme = dropdownTheme, },
                live_grep = { theme = dropdownTheme, },
                diagnostics = { theme = dropdownTheme, },
                resume = { theme = dropdownTheme, },
                find_files = {
                    theme = dropdownTheme,
                    hidden = true,
                    find_command = {
                        "rg",
                        "--files",
                        "--hidden",
                        "--no-ignore",

                        "--glob=!**/.git/*",
                        "--glob=!**/.idea/*",
                        "--glob=!**/.vscode/*",
                        "--glob=!**/build/*",
                        "--glob=!**/dist/*",
                        "--glob=!**/yarn.lock",
                        "--glob=!**/package-lock.json",
                        "--glob=!**/.angular/*",
                        "--glob=!**/node_modules/*",
                        "--glob=!**/.github/*",
                        "--glob=!**.cache",
                        "--glob=!**/vendor/*",
                        "--glob=!**/public/*",
                        "--glob=!**/storage/api-docs",
                        "--glob=!**/storage/app",
                        "--glob=!**/storage/framework",
                        "--glob=!**/storage/docs",
                    },
                },
            },
        }

        -- Enable telescope fzf native, if installed
        pcall(require('telescope').load_extension, 'fzf')

        vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
        vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
        vim.keymap.set('n', '<leader>/', function()
            require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = '[/] Fuzzily search in current buffer' })

        vim.keymap.set('n', '<C-P>', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
        vim.keymap.set('n', '<leader>pf', require('telescope.builtin').find_files, { desc = '[P]ick [F]iles' })
        vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
        vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
        vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
        vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]resume' })
    end,
}
