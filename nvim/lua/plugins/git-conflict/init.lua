local Plugin = {
    'akinsho/git-conflict.nvim',
    lazy= false,
    opts = function ()
        return require('plugins.git-conflict.opts')
    end,
    config = function(_, opts)
        return require("git-conflict").setup(opts)
    end,
}

return Plugin
