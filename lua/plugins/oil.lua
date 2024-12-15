return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			["q"] = "actions.close",
		},
	},
	config = function(_, opts)
		local oil = require("oil")

		oil.setup(opts)

		vim.keymap.set("n", "<leader>e", oil.toggle_float, { desc = "Explore file tree" })
	end,
}
