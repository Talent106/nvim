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
    pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', '*.html', '*.php', '*.lua' },
    callback = function() vim.lsp.buf.format() end
  }
)

-- CONFIG DOTENV FILES ON SAVE
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufNewFile' }, {
  pattern = '.env*',
  command = 'set filetype=conf',
})

-- DOTENV FILES SETUP
vim.filetype.add({
  -- Detect and assign filetype based on the extension of the filename
  extension = {
    mdx = "mdx",
    log = "log",
    conf = "conf",
    env = "dotenv",
  },
  -- Detect and apply filetypes based on the entire filename
  filename = {
    [".env"] = "dotenv",
    ["env"] = "dotenv",
    ["tsconfig.json"] = "jsonc",
  },
  -- Detect and apply filetypes based on certain patterns of the filenames
  pattern = {
    -- INFO: Match filenames like - ".env.example", ".env.local" and so on
    ["%.env%.[%w_.-]+"] = "dotenv",
  },
})
