return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.keymap.set("n","<C-f>","<CMD>Telescope find_files<CR>")
	end
}
