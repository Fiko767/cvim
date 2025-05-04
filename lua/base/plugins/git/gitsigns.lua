return {
	"lewis6991/gitsigns.nvim",
	event = "CmdlineEnter",
	keys = {
		-- Navigation
		{
			"]c",
			function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					vim.cmd("Gitsigns next_hunk")
				end
			end,
			desc = "Next hunk",
			mode = "n",
		},
		{
			"[c",
			function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					vim.cmd("Gitsigns prev_hunk")
				end
			end,
			desc = "Previous hunk",
			mode = "n",
		},

		-- Actions (Normal mode)
		{ "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage hunk" },
		{ "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset hunk" },
		{ "<leader>gS", "<cmd>Gitsigns stage_buffer<CR>", desc = "Stage buffer" },
		{ "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", desc = "Reset buffer" },
		{ "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
		{ "<leader>gi", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Preview hunk inline" },
		{ "<leader>gd", "<cmd>Gitsigns diffthis<CR>", desc = "Diff against index" },
		{ "<leader>gD", "<cmd>Gitsigns diffthis ~<CR>", desc = "Diff against last commit" },
		{ "<leader>gb", "<cmd>Gitsigns blame_line full=true<CR>", desc = "Blame line (full)" },
		{ "<leader>gq", "<cmd>Gitsigns setqflist<CR>", desc = "Quickfix list (current)" },
		{ "<leader>gQ", "<cmd>Gitsigns setqflist all<CR>", desc = "Quickfix list (all)" },

		-- Actions (Visual mode – function benötigt)
		{
			"<leader>gs",
			function()
				require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end,
			desc = "Stage hunk (visual)",
			mode = "v",
		},
		{
			"<leader>gr",
			function()
				require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end,
			desc = "Reset hunk (visual)",
			mode = "v",
		},

		-- Toggles
		{ "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle line blame" },
		{ "<leader>tw", "<cmd>Gitsigns toggle_word_diff<CR>", desc = "Toggle word diff" },

		-- Text object
		{ "ih", ":<C-U>Gitsigns select_hunk<CR>", desc = "Select hunk", mode = { "o", "x" } },
	},
}
