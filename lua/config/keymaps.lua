-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 아래 개행이 불편해서 맵핑
vim.keymap.set("n", "<C-j>", "o<ESC>")
-- 위로 개행이 불편해서 맵핑
vim.keymap.set("n", "<C-k>", "O<ESC>")
