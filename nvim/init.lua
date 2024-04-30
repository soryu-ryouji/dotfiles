vim.opt.enc = 'utf-8'			-- 编码格式
vim.opt.number = true			-- 绝对行号
-- opt.relativenumber = true	-- 相对行号
-- 更新频率
vim.opt.updatetime = 100
vim.opt.timeoutlen = 300
vim.opt.tabstop = 4 			-- tab的空格间隔
vim.opt.autoindent = true		-- 自动缩进
vim.opt.shiftwidth = 4			-- 自动缩进空白字符的个数
vim.opt.ignorecase = true		-- 忽略大小写
-- vim.opt.scrolloff = 12
-- vim.opt.sidescrolloff = 12

vim.keymap.set('n','fw',[[:w<CR>:echo "save"<CR>]], {silent = true})
vim.keymap.set('n','fq',':q<CR>')
vim.keymap.set('n','<C-j>','10j')
vim.keymap.set('n','<C-k>','10k')
vim.keymap.set('n','<A-z>',':set wrap!<CR>', { silent = true })
vim.keymap.set('v','ys','"+y')

require("lazy-init")
require("config.ccount")
vim.cmd.colorscheme('zenwritten')
