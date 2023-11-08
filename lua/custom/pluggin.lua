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

-- NEOTREE
require("neo-tree").setup({
  close_if_last_window = true,
  buffers = {
    follow_current_file = { enabled = true },
  },
  filesystem = {
    follow_current_file = { enabled = true },
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_by_name = {
        "node_modules"
      },
      never_show = {
        ".DS_Store",
        "thumbs.db"
      },
    },
  },
})

