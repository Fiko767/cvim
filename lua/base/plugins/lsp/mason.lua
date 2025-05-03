return {
	"williamboman/mason.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"ts_ls",
				"html",
				"cssls",
				"clangd",
				"yamlls",
				"gopls",
				"marksman",
				"jsonls",
			},
		})
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				local lspconfig = require("lspconfig")
				local capabilities = require("cmp_nvim_lsp").default_capabilities()

				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- Formatters
				"stylua",
				"isort",
				"black",
				"rustfmt",
				"prettierd",
				"prettier",
				"gofumpt",
				"goimports",
				"rustfmt",

				-- Linters
				"luacheck",
				"pylint",
				-- "clippy", install it manually
				"eslint_d",
				"stylelint",
				"cpplint",
				"actionlint",
				"golangci-lint",
				"markdownlint",
				"jsonlint",
			},
		})
	end,
}
