return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fo', '<cmd> Telescope oldfiles <CR>', {})
			vim.keymap.set('n', '<leader>fa', '<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>', {})
			vim.keymap.set('n', '<leader>fb', '<cmd> Telescope buffers <CR>', {})
		end
	}
}
