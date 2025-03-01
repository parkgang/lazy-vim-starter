-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- [매크로 툴이 설치되지 않은 환경에서 fallback으로 사용될 한/영 전환문제 대응 설정](https://johngrib.github.io/blog/2017/05/04/input-source/#langmap%EC%9D%84-%EC%82%AC%EC%9A%A9%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95)
vim.opt.langmap =
  "ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz"

--
--
-- 레지스터
-- <C-a> 단축키를 희생했음으로 편하게 전체 선택을 위한 메크로
vim.fn.setreg("a", "ggVG")

--
--
-- VSCode
if vim.g.vscode then
  print("LazyVim이 VSCode에서 실행 중 입니다 💤")

  -- [폴더 접기 명령 수행시 VSCode 단축키 호출](https://github.com/vscode-neovim/vscode-neovim/issues/58#issuecomment-989481648)
  vim.keymap.set("n", "zM", "<Cmd>call VSCodeNotify('editor.foldAll')<CR>")
  vim.keymap.set("n", "zR", "<Cmd>call VSCodeNotify('editor.unfoldAll')<CR>")
  vim.keymap.set("n", "zc", "<Cmd>call VSCodeNotify('editor.fold')<CR>")
  vim.keymap.set("n", "zC", "<Cmd>call VSCodeNotify('editor.foldRecursively')<CR>")
  vim.keymap.set("n", "zo", "<Cmd>call VSCodeNotify('editor.unfold')<CR>")
  vim.keymap.set("n", "zO", "<Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>")
  vim.keymap.set("n", "za", "<Cmd>call VSCodeNotify('editor.toggleFold')<CR>")
end

--
--
-- Neovide
if vim.g.neovide then
  -- 기본적으로 Nerd Font 찾아서 적용해줌
  -- vim.o.guifont = "MesloLGS Nerd Font:h14"

  -- [cmd+s, cmd+c, cmd+v 복붙 단축키](https://neovide.dev/faq.html#how-can-i-use-cmd-ccmd-v-to-copy-and-paste)
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

  -- [확대/축소 단축키](https://neovide.dev/faq.html#how-can-i-dynamically-change-the-scale-at-runtime)
  vim.g.neovide_scale_factor = 1.2
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end)
end
