return {
	'numToStr/Comment.nvim',
	opts = {
		-- add any options here
	},
	lazy = false,
	config = function()
		--local comment = require('Comment.api')

		--vim.keymap.set('n', '<leader>/', comment.toggle.linewise.current, {})
		--vim.keymap.set('v', '<leader>/', '<ESC><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>', {})

		require('Comment').setup({
			toggler = {
				line = '<leader>/'
			},
			opleader = {
				line = '<leader>/'
			}
		})
	end
}
