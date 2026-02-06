vim.g.mapleader = " "
vim.g.maplocalleader = " "

local set = vim.keymap.set
set({"n", "v"}, "<Space>", "<Nop>", { silent = true })
set("n", "<up>", "<nop>")
set("n", "<down>", "<nop>")
set("n", "<left>", "<nop>")
set("n", "<right>", "<nop>")


set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")


set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("x", "<leader>p", "\"_dp")
set({ "n", "v" }, "<leader>y", [["+y]])
set({"n", "v"}, "<leader>d", "\"_d")


set("n", "Q", "<nop>")
set({"n", "i", "v", "x"}, "<C-c>", "<Esc>")
set("n", "<C-f>", "<cmd>~/.config/tmux/commands/tmux_fzf_open_session.sh <cr>")

set("n", "<leader>k", "<cmd>lnext<CR>zz")
set("n", "<leader>j", "<cmd>lprev<CR>zz")

set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

set("n", "<leader>w", "<cmd>wa<cr>")
set("n", "<leader>q", "<cmd>q<cr>")
set("n", "<leader>x", "<cmd>wqa<cr>")

set('n', '<leader>yp', function()
  local filepath = vim.fn.expand('%:.')
  vim.fn.setreg('+', filepath)
  print("Copied: " .. filepath)
end, { noremap = true, silent = true, desc = "Copy current file path" })
