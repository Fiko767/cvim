return {
	"folke/todo-comments.nvim",
	event = "BufReadPre",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ft", "<cmd>TodoTelescope<CR>", desc = "Opes Todo Telescope" },
	},
	opts = {},
}
