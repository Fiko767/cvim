return {
	"catppuccin/nvim",
	event = "VimEnter",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "auto",
			background = {
				light = "frappe",
				dark = "mocha",
			},
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
