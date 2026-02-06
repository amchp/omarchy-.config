local Plugin = {
	"ThePrimeagen/harpoon",
    lazy = false,
	dependencies = {
		{
            "EdenEast/nightfox.nvim",
            "nvim-lua/plenary.nvim",
        },
	},
    keys = function()
        return require("plugins.harpoon.keys")
    end,
	config = true,
}

return Plugin
