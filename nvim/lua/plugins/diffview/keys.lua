local Keys = {
	{ "<leader>gd", "<cmd>DiffviewOpen<cr>", noremap = true, desc = "git diff" },
	{ "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", noremap = true, desc = "git file history" },
	{ "<leader>gq", "<cmd>DiffviewClose<cr>", noremap = true, desc = "close diffview" },
}
return Keys
