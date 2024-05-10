return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'williamboman/mason.nvim', config = true },
        'williamboman/mason-lspconfig.nvim',
        { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },
        'folke/neodev.nvim',
    },
    opts = {
        inlay_hints = { enabled = true },
    },
    config = function()
        local on_attach = function(_, bufnr)
            local nmap = function(keys, func, desc)
                if desc then
                    desc = 'LSP: ' .. desc
                end

                vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
            end

            nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
            nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

            nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
            nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
            nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
            nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
            nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
            nmap('<leader>Ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

            -- See `:help K` for why this keymap
            nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
            nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

            -- Lesser used LSP functionality
            nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
            nmap('<leader>Wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
            nmap('<leader>Wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
            nmap('<leader>Wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
                '[W]orkspace [L]ist Folders')

            vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_) vim.lsp.buf.format() end,
                { desc = 'Format current buffer with LSP' })
        end

        local servers = {
            angularls = {},
            jsonls = {},
            phpactor = {},
            tailwindcss = {},
            tsserver = {},
            html = { filetypes = { 'html', 'twig', 'hbs' } },
            lua_ls = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    telemetry = { enable = false },
                },
            },
        }

        require('neodev').setup()

        -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        -- Ensure the servers above are installed
        local mason_lspconfig = require 'mason-lspconfig'
        mason_lspconfig.setup { ensure_installed = vim.tbl_keys(servers) }

        mason_lspconfig.setup_handlers {
            function(server_name)
                require('lspconfig')[server_name].setup {
                    capabilities = capabilities,
                    on_attach = on_attach,
                    settings = servers[server_name],
                    filetypes = (servers[server_name] or {}).filetypes,
                }
            end
        }

        -- ESLINT
        require('lspconfig').eslint.setup({
            pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
            on_attach = function(client, bufnr)
                vim.api.nvim_create_autocmd("BufWritePre", {
                    buffer = bufnr,
                    command = ":EslintFixAll",
                })
            end,
        })

        -- TSSERVER
        require('lspconfig').tsserver.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            default_config = {
                cmd = { 'typescript-language-server', '--stdio' },
                filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
            }
        }

        -- ANGULARLS
        require('lspconfig').angularls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            default_config = {
                cmd = { 'angular-language-server', '--stdio' },
                filetypes = { 'typescript', 'html' },
            }
        }

        -- PHPACTOR
        require('lspconfig').phpactor.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            default_config = {
                cmd = { 'phpactor', 'language-server', '-vvv' },
                filetypes = { 'php' },
                root_dir = function()
                    return vim.fn.expand('%:p:h')
                end,
            },
            init_options = {
                ["language_server_phpstan.enabled"] = true,
                ["language_server_php_cs_fixer.enabled"] = true,
                ["language_server.diagnostics_on_update"] = false,
                ["indexer.exclude_patterns"] = {
                    "/vendor/**/Tests/**/*",
                    "/vendor/**/tests/**/*",
                    "/var/cache/**/*",
                    "/vendor/composer/**/*"
                },
            }
        }
    end
}
