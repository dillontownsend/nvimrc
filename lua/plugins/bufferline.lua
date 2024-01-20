return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require 'bufferline'.setup({
			options = {
				separator_style = 'slant',
				-- indicator = {
				-- 	style = 'underline'
				-- }
				diagnostics = 'nvim_lsp'
			},
		})
		vim.keymap.set('n', '<leader>x', '<cmd> bd <CR>', {})
		vim.keymap.set('n', '<tab>', '<cmd> BufferLineCycleNext <CR>', {})
		vim.keymap.set('n', '<S-tab>', '<cmd> BufferLineCyclePrev <CR>', {})
	end
}
