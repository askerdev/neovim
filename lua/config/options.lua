local opt = vim.opt

opt.tabstop = 3
opt.shiftwidth = 3
opt.softtabstop = 3
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

-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.diagnostic.config({
	virtual_text = false,
	float = {
		border = "rounded",
	},
})

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
