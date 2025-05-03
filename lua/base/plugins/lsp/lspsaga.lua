return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		-- LSP navigation
		{ "K", "<cmd>Lspsaga hover_doc<CR>", desc = "Hover Documentation" },
		{ "gd", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek Definition" },
		{ "gi", "<cmd>Lspsaga finder<CR>", desc = "LSP Finder" },
		{ "gr", "<cmd>Lspsaga finder<CR>", desc = "LSP Finder" },
		{ "gT", "<cmd>Lspsaga peek_type_definition<CR>", desc = "Peek Type Definition" },

		-- Code actions and renaming
		{ "<leader>la", "<cmd>Lspsaga code_action<CR>", desc = "Code Action" },
		{ "<leader>lr", "<cmd>Lspsaga rename<CR>", desc = "Rename Symbol" },

		-- Diagnostics
		{ "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Previous Diagnostic" },
		{ "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Next Diagnostic" },
		{ "<leader>le", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Show Line Diagnostics" },
		{ "<leader>lq", "<cmd>Lspsaga show_buf_diagnostics<CR>", desc = "Show Buffer Diagnostics" },

		-- Other
		{ "<leader>lo", "<cmd>Lspsaga outline<CR>", desc = "Outline" },
	},
	opts = {
		ui = {
			border = "rounded",
			code_action_icon = "💡",
		},
		lightbulb = {
			enable = false,
		},
	},
}
