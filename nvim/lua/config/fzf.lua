return function ()
	require("fzf-lua").setup({})
	vim.keymap.set('n', '<C-f>', "<CMD>lua require('fzf-lua').files()<CR>", { silent = true })
end
