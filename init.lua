require('core.set')

-- [[ Install `lazy.nvim` plugin manager ]]
require('core.lazy')
-- require('lazy').setup("plugins", {})

require('core.remap')

-- [[ Highlight on yank ]]
require('config.yank_highlight')

-- [[ Configure Telescope ]]
require('config.telescope')

-- [[ Configure Treesitter ]]
require('config.treesitter')

-- [[ Configure LSP ]]
require('config.lsp')

-- [[ Configure nvim-cmp ]]
require('config.nvim-cmp')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
