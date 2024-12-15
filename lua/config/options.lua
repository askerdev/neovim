local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.number = true
opt.relativenumber = true

opt.showmode = false
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true

opt.backspace = "indent,eol,start"

opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

-- Disable in-line LSP Diagnostics. Shows Diagonostics only on hover
-- Disabling diagnostics to avoid LSP_Lines duplication
vim.diagnostic.config {
  virtual_text = false,
  float = {
    border = 'None',
  },
}
