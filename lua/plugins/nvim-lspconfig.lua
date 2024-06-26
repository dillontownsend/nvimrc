return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		local lspconfig = require('lspconfig')
		lspconfig.lua_ls.setup({
			capabilities = capabilities
		})
		lspconfig.hls.setup({
			capabilities = capabilities,
			haskell = {
				-- cabalFormattingProvider = "cabalfmt",
				formattingProvider = "fourmolu"
			}
		})

		local opts = {}

		vim.keymap.set('n', '<leader>fd', vim.diagnostic.open_float, opts)
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<leader>ra', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
	end
}
