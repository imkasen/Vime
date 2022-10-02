-- 快捷键映射

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


local opts = { noremap = true, silent = true }

-- 缩短函数名
local keymap = vim.api.nvim_set_keymap

-- 把空格键作为 leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<Space>", "<NOP>", opts)

------------------------------------------------------------------
-- NORMAL
------------------------------------------------------------------

keymap("n", "<C-s>", ":w<CR>", opts)

-- 光标单行跳转
keymap("n", "<S-h>", "^", opts) -- 跳转到行首
keymap("n", "<S-l>", "$", opts) -- 跳转到行尾

-- 分屏
keymap("n", "<leader>v", "<C-w>v", opts) -- 垂直分割窗口到右侧
keymap("n", "<leader>s", "<C-w>s", opts) -- 横向分割窗口到下侧

-- 光标在分屏间跳转
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 分屏比例控制
keymap("n", "<C-Left>", "<C-w><", opts)
keymap("n", "<C-Right>", "<C-w>>", opts)
keymap("n", "<C-Up>", "<C-w>-", opts)
keymap("n", "<C-Down>", "<C-w>+", opts)
keymap("n", "<leader>=", "<C-w>=", opts) -- 相等比例

-- Buffer 之间跳转
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

-- very magic 搜索
keymap("n", "/", "/\\v", { noremap = true, silent = false })

------------------------------------------------------------------
-- INSERT
------------------------------------------------------------------

-- 返回 normal 模式
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- 光标跳转
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)

keymap("i", "<C-b>", "<ESC>^i", opts) -- 跳转到行首
keymap("i", "<C-e>", "<End>", opts) --   跳转到行尾

------------------------------------------------------------------
-- VISUAL
------------------------------------------------------------------

-- 光标单行跳转
keymap("v", "<S-h>", "^", opts) -- 跳转到行首
keymap("v", "<S-l>", "$", opts) -- 跳转到行尾

-- ">" "<" 调整缩进
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- 删除
keymap("v", "<Backspace>", "x", opts)

-- 上下移动选中文本
-- https://vim.fandom.com/wiki/Moving_lines_up_or_down
keymap("v", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("v", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- 只粘贴不复制
-- keymap("v", "p", '"_dP', opts)

------------------------------------------------------------------
-- TERMINAL
------------------------------------------------------------------

-- 退出终端
keymap("t", "<C-x>", "<C-\\><C-N>", opts)
keymap("t", "<ESC>", "<C-\\><C-N>", opts)

------------------------------------------------------------------
-- 插件快捷键
------------------------------------------------------------------
