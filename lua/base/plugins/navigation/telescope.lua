return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		-- Telescope extensions
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-ui-select.nvim",

		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Word" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Find Old Files" },
		{ "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Find Marks" },
		{ "<leader>fr", "<cmd>Telescope registers<cr>", desc = "Find Registers" },

		-- Telescope Git
		{ "<leader>fgs", "<cmd>Telescope git_status<cr>", desc = "Git Status" },
		{ "<leader>fgc", "<cmd>Telescope git_commits<cr>", desc = "Git Commits" },
		{ "<leader>fgb", "<cmd>Telescope git_branches<cr>", desc = "Git Branches" },
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
			defaults = {
				file_ignore_patterns = { ".git/", ".cache/" },
			},
			pickers = {
				find_files = {
					hidden = true,
					no_ignore = true,
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
	end,
}
