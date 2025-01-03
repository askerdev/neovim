return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		{ "fredrikaverpil/neotest-golang" },
		{ "marilari88/neotest-vitest" },
	},
	opts = function()
		return {
			adapters = {
				require("neotest-golang"),
				require("neotest-vitest"),
			},
		}
	end,
	keys = function()
		local nt = require("neotest")
    -- stylua: ignore
    return {
      {"<leader>t", "", desc = "+test"},
      { "<leader>tr", function() nt.run.run() end, desc = "Run Nearest (Neotest)" },
      { "<leader>tl", function() nt.run.run_last() end, desc = "Run Last (Neotest)" },
      { "<leader>ts", function() nt.summary.toggle() end, desc = "Toggle Summary (Neotest)" },
      { "<leader>tO", function() nt.output_panel.toggle() end, desc = "Toggle Output Panel (Neotest)" },
      { "<leader>tS", function() nt.run.stop() end, desc = "Stop (Neotest)" },
      { "<leader>tt", function() nt.run.run(vim.fn.expand("%")) end, desc = "Run File (Neotest)" },
      { "<leader>tT", function() nt.run.run(vim.uv.cwd()) end, desc = "Run All Test Files (Neotest)" },
      { "<leader>to", function() nt.output.open({ enter = true, auto_close = true }) end, desc = "Show Output (Neotest)" },
      { "<leader>tw", function() nt.watch.toggle(vim.fn.expand("%")) end, desc = "Toggle Watch (Neotest)" },
    }
	end,
}
