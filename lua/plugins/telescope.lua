return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"folke/todo-comments.nvim",
	},
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{ "<leader><leader>", mode = "n", builtin.find_files, desc = "Find git files" },
			{ "<leader>sb", mode = "n", builtin.buffers, desc = "Find buffer" },
			{ "<leader>sh", mode = "n", builtin.help_tags, desc = "Find help tags" },
			{ "<leader>sg", mode = "n", builtin.live_grep, desc = "Find grep string" },
		}
	end,
	opts = function()
		local actions, builtin = require("telescope.actions"), require("telescope.builtin")
		local pickers = {
			find_files = { preview = false, theme = "ivy" },
		}

		for picker, _ in pairs(builtin) do
			if pickers[picker] == nil then
				pickers[picker] = {
					preview = true,
					theme = "ivy",
				}
			end
		end

		return {
			pickers = pickers,
			defaults = {
				preview = false,
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
				mappings = {
					n = {
						["q"] = actions.close,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = false, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "ignore_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		}
	end,

	config = function(_, opts)
		local t = require("telescope")
		t.setup(opts)
		t.load_extension("fzf")
	end,
}
