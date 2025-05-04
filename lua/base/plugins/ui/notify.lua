return {
	"rcarriga/nvim-notify",
	lazy = false,
	config = function()
		vim.notify = require("notify")
		require("notify").setup({
			background_colour = "NormalFloat",
		})
	end,
}
