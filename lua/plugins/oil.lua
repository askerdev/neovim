return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			["q"] = "actions.close",
		},
	},
	keys = function()
		local oil = require("oil")
		return {
			{ "<leader>e", mode = "n", oil.toggle_float, desc = "Explore file tree" },
		}
	end,
}
