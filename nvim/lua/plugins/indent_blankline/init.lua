local Plugin = {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = { { "EdenEast/nightfox.nvim" } },
    main = "ibl",
    opts = function()
        return require("ibl").setup()
    end,
}
return Plugin
