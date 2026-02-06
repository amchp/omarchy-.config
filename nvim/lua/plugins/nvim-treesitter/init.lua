local Plugin = {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        { "EdenEast/nightfox.nvim" },
        { "nvim-treesitter/nvim-treesitter-context" },
    },
    opts = function()
        return require("plugins.nvim-treesitter.opts")
    end,

    config = function(_, opts)
        require("nvim-treesitter").setup(opts)
    end,

    build = ":TSUpdate",
}

return Plugin