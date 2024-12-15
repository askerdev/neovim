local setup_theme = function(opts, list, theme)
	if theme == nil then
		theme = "ivy"
	end

	for _, value in pairs(list) do
		opts.pickers[value] = {
			theme = theme,
		}
	end
end

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"folke/todo-comments.nvim",
	},
	config = function()
		local t = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		local opts = {
			pickers = {},
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					".idea",
					".vscode",
					"coverage",
					"public",
					"reports",
					"scripts",
					"__mocks__",
					"ci",
					"configs",
					"e2e",
					"%.css",
					"%.scss",
				},
				preview = {
					treesitter = false,
				},
				mappings = {
					n = {
						["q"] = actions.close,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		}

		setup_theme(opts, {
			"find_files",
			"lsp_references",
			"lsp_definitions",
			"lsp_implementations",
			"lsp_type_defintions",
			"diagnostics",
		})

		t.setup(opts)

		t.load_extension("fzf")

		vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Fuzzy find files in cwd" })
	end,
}
