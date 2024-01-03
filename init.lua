--load basic settings
require 'core.lazy'
require 'core.mappings'
require 'core.options'

-- load plugins settings
require 'core.plugins.treesitter'
require 'core.plugins.telescope'
require 'core.plugins.colorscheme'
require 'core.plugins.harpoon'
require 'core.plugins.neogit'
require 'core.plugins.oil'

-- load graphical settings (only for neovide or nvim-qt) enable if you want
-- require 'core.gui.ginit'

-- lsp seems to work only when required last
require 'core.plugins.lsp'
