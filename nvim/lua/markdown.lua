vim.g['mkdp_auto_start'] = 0
vim.keymap.set('n','mm',':MarkdownPreviewToggle<CR>')
vim.keymap.set('n','tm',':TableModeToggle<CR>')

vim.keymap.set('i', ',f', '<Esc>/<++><CR>:nohlsearch<CR>c4l')
vim.keymap.set('i', ',p', '![](<++>)<++><Esc>F[a')
vim.keymap.set('i', ',l', '[](<++>)<++><Esc>F[a')
vim.keymap.set('i', ',b', '****<++><Esc>F*hi')

vim.keymap.set('i', ',1', "#<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',2', "##<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',3', "###<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',4', "####<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',5', "#####<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',6', "######<Space><CR><++><Esc>kA")

vim.keymap.set('n', 'ff', ':RemoveEmptyLines<CR>:nohlsearch<CR>')

