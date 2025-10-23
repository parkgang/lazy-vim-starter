-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 아래 개행이 불편해서 맵핑
vim.keymap.set("n", "<C-j>", "o<ESC>")
-- 위로 개행이 불편해서 맵핑
vim.keymap.set("n", "<C-k>", "O<ESC>")

--
--
-- 명시적인 호출 시에만 삭제 레지스터로 이동
-- 삭제를 하더라도 OS 클립보드 값을 보호하기 위함
-- 기본적으로 삭제는 블랙홀 레지스터 사용
-- 2025-10-23 계속 헷갈리고 Vim 기본 동작과 너무 달라서 비활성화
-- vim.keymap.set("n", "d", '"_d')
-- vim.keymap.set("v", "d", '"_d')

-- vim.keymap.set("n", "D", '"_D')
-- vim.keymap.set("v", "D", '"_D')

-- vim.keymap.set("n", "dd", '"_dd')
-- vim.keymap.set("v", "dd", '"_dd')

-- vim.keymap.set("n", "x", '"_x')
-- vim.keymap.set("v", "x", '"_x')

-- vim.keymap.set("n", "X", '"_X')
-- vim.keymap.set("v", "X", '"_X')

-- LazyVim에서 미리 정의된 단축키 있음
-- vim.keymap.set("n", "s", '"_s')
-- vim.keymap.set("v", "s", '"_s')

-- vim.keymap.set("n", "S", '"_S')
-- vim.keymap.set("v", "S", '"_S')

-- vim.keymap.set("n", "c", '"_c')
-- vim.keymap.set("v", "c", '"_c')

-- vim.keymap.set("n", "C", '"_C')
-- vim.keymap.set("v", "C", '"_C')

-- Space + 삭제 입력 시 원래 동작(클립보드 사용) 유지: 잘라내기 동작
-- vim.keymap.set("n", "<Space>d", "d")
-- vim.keymap.set("v", "<Space>d", "d")

-- vim.keymap.set("n", "<Space>D", "D")
-- vim.keymap.set("v", "<Space>D", "D")

-- vim.keymap.set("n", "<Space>dd", "dd")
-- vim.keymap.set("v", "<Space>dd", "dd")

-- vim.keymap.set("n", "<Space>x", "x")
-- vim.keymap.set("v", "<Space>x", "x")

-- vim.keymap.set("n", "<Space>X", "X")
-- vim.keymap.set("v", "<Space>X", "X")

-- LazyVim에서 미리 정의된 단축키 있음
-- vim.keymap.set("n", "<Space>s", "s")
-- vim.keymap.set("v", "<Space>s", "s")

-- vim.keymap.set("n", "<Space>S", "S")
-- vim.keymap.set("v", "<Space>S", "S")

-- vim.keymap.set("n", "<Space>c", "c")
-- vim.keymap.set("v", "<Space>c", "c")

-- vim.keymap.set("n", "<Space>C", "C")
-- vim.keymap.set("v", "<Space>C", "C")
