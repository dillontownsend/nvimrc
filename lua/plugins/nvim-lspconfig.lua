return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		local lspconfig = require('lspconfig')
		lspconfig.lua_ls.setup({
			capabilities = capabilities
		})

		local opts = {}

		vim.keymap.set('n', '<leader>fd', vim.diagnostic.open_float, opts)
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
	end
}
