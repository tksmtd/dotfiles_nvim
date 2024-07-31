-- LazySetup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({

  -- ここに追加したいプラグインを書く。
  -- GitHubに公開されているプラグインなら、"ユーザー名/リポジトリ名"のフォーマットで記載する。
  -- "folke/noice.nvim",
  -- nightfox テーマ
  "EdenEast/nightfox.nvim",  
  -- nerdtree ファイルエクスプローラー
  "preservim/nerdtree",

})

require("keymaps")

local opt = vim.opt

-- マウス有効化
opt.mouse = 'a'
opt.title = true
-- 全角文字表示設定
opt.ambiwidth = 'double'

opt.swapfile = false
opt.backup = false
opt.hidden = true
opt.clipboard:append({unnamedplus = true})

opt.number = true
opt.list = true
opt.listchars = 'tab:>-', 'trail:*', 'nbsp:+'
opt.smartindent = true
opt.visualbell = true

opt.showmatch = true

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

opt.ignorecase = true
opt.smartcase = true
opt.wrapscan = true

opt.whichwrap = 'b', 's', 'h', 'l', '<', '>', '[', ']'
opt.backspace = 'start', 'eol', 'indent'
-- Windows環境なのでdosが最初
opt.fileformats = 'dos', 'unix', 'mac'

opt.helplang = 'ja', 'en'

opt.updatetime = 300

opt.showtabline = 2

vim.cmd[[colorscheme carbonfox]]
