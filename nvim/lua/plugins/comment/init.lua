local Plugin = {
	"numToStr/Comment.nvim",
	dependencies = { { "EdenEast/nightfox.nvim" } },
	opts = function()
		return require("plugins.comment.opts")
	end,
	config = true,
}

return Plugin
