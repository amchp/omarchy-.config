local Plugin = {
	"sindrets/diffview.nvim",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	keys = function()
		return require("plugins.diffview.keys")
	end,
}

return Plugin
