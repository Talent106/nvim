-- CUSTOM EDITOR CONFIG
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8

vim.opt.colorcolumn = "120"

-- Copilot
vim.g.copilot_assume_mapped = true


-- FORMAT ON SAVE
vim.api.nvim_create_autocmd(
  "BufWritePre",
  {
    pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', '*.html', '*.php' },
    callback = function() vim.lsp.buf.format() end
  }
)

-- CONFIG DOTENV FILES ON SAVE
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufNewFile' }, {
  pattern = '.env*',
  command = 'set filetype=conf',
})

