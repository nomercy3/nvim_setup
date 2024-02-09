return {


	{
		-- NvimTree Plugin
		'nvim-tree/nvim-tree.lua',
		lazy=false,
		version = '*',
		dependencies = {
		  'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require('nvim-tree').setup {
				view = {
					adaptive_size = true,
					side = "left",
				}
			}
		end,
		keys = {
			{'<leader>e', '<cmd>NvimTreeToggle<cr>', 'NvimTree [E]xplorer'},
		},
	},
}
