return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({})
		-- require "mini.animate" .setup { }
		require("mini.comment").setup({})
		require("mini.icons").setup({})
		require("mini.pairs").setup({})
		require("mini.statusline").setup({})
	end,
}
