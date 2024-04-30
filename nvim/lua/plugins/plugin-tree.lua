return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			git = {
				enable = false,
				ignore = false,
			},
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 35,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

		vim.opt.termguicolors = true
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local map = vim.keymap.set
		map('n','tt',':NvimTreeToggle<CR>', { silent = true })
		map('n','tf',':NvimTreeFocus<CR>', { silent = true })

		vim.api.nvim_create_autocmd("BufEnter", {
		  nested = true,
		  callback = function()
			if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
			  vim.cmd "quit"
			end
		  end
		})
	end
}
