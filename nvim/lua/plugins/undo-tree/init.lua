local Plugin = {
    'mbbill/undotree',
    cmd = {"UndotreeToggle"},
    keys = function()
        return require("plugins.undo-tree.keys")
    end,
    config= true,
}

return Plugin
