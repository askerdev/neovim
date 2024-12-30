return {
	"folke/noice.nvim",
	event = "VeryLazy",
	---@module 'noice'
	---@class NoiceConfig
	opts = {
		messages = {
			enabled = false,
		},
		presets = {
			lsp_doc_border = true,
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
