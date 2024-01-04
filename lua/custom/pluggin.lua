-- HARPOON
require("harpoon"):setup()

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

-- PHPACTOR
require('lspconfig').phpactor.setup{
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

