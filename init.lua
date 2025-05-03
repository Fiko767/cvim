vim.g.mapleader = " "
vim.g.maplocalleader = " "

_G.map = vim.api.nvim_set_keymap
_G.opts = { noremap = true, silent = true }

require("base")
require("user")
