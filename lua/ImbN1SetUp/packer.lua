-- This file can be loaded by calling `lua require('plugins')` from your init.vim
require("cmp_nvim_lsp")

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope, a fuzzyfinder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Theme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- UndoTree for watch previous changes
	use ('mbbill/undotree')

	-- VimFugitive for git manipulation
	use('tpope/vim-fugitive')

	-- Cmp and mason installation
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	},

    -- Icons for tree view
    use 'nvim-tree/nvim-web-devicons',

    -- Treeview of archives
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
}
end)


