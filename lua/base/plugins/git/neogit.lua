return {
	"NeogitOrg/neogit",
	event = "CmdlineEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>gg", "<cmd>Neogit<CR>", desc = "Open Neogit" },
		{ "<leader>gc", "<cmd>NeogitCommit<CR>", desc = "Neogit commit" },
		{ "<leader>gl", "<cmd>NeogitLogCurrent<CR>", desc = "Neogit log (current)" },
		{ "<leader>gx", "<cmd>NeogitResetState<CR>", desc = "Reset Neogit internal state" },
	},
}
