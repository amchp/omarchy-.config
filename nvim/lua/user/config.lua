local opt = vim.opt
local wo = vim.wo
local o = vim.o
opt.guicursor = ""
opt.cursorline = true

opt.number = true
wo.relativenumber = true


opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4

opt.hlsearch = false
opt.incsearch = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hidden = true
opt.wrap = false
opt.termguicolors = true
opt.scrolloff = 8
opt.cmdheight = 2
opt.colorcolumn = "100"
wo.signcolumn = "yes"
o.pumheight = 10
o.foldmethod = "indent"
o.foldenable = true
o.foldlevel = 0

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
