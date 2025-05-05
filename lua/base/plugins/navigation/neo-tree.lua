return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	lazy = false,
	---@module "neo-tree"
	---@type neotree.Config?
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Neo-tree Toggle" },
		{ "<leader>ee", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree and float view" }, -- Faster

		{ "<leader>ef", "<cmd>Neotree float toggle<CR>", desc = "Neo-tree Float" },
		{ "<leader>eo", "<cmd>Neotree reveal<CR>", desc = "Neo-tree Reveal Current File" },
		{ "<leader>eb", "<cmd>Neotree buffers toggle<CR>", desc = "Neo-tree Buffers" },
		{ "<leader>eg", "<cmd>Neotree git_status toggle<CR>", desc = "Neo-tree Git Status" },
	},
	opts = {
		filesystem = {
			bind_to_cwd = true,
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
			filtered_items = {
				visible = false,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = {
					".DS_Store",
					"thumbs.db",
				},
			},
		},
		window = {
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
			},
		},
	},
}
