return {
	"echasnovski/mini.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>e",
			function()
				MiniFiles.open()
			end,
			desc = "Open MiniFiles",
		},
	},
	version = "*",
	config = function()
		require("mini.files").setup({})
	end,
}
