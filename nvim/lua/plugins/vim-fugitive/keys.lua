local Keys = {
	{ "<leader>ga", "<cmd>Git add .<cr>", noremap = true, desc = "add to git" },
	{ "<leader>gs", "<cmd>Git<cr>", noremap = true, desc = "git status" },
	{ "<leader>gc", "<cmd>Git commit<cr>", noremap = true, desc = "commit to git" },
	{ "<leader>gn", "<cmd>Git commit --no-verify<cr>", noremap = true, desc = "commit to git no verify" },
	{
		"<leader>gp",
		function()
			local branch = vim.fn.system("git branch --show-current"):gsub("%s+", "")
			vim.cmd("Git push -u origin " .. branch)
		end,
		noremap = true,
		desc = "push to remote repository with branch",
	},
}
return Keys
