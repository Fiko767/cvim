return {
	"nvim-lualine/lualine.nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		extensions = { "fugitive", "lazy", "man", "mason", "neo-tree", "nvim-dap-ui", "trouble" },
	},
}
