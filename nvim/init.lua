require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"
spec "user.colorscheme"
-- spec "user.devicons"
spec "user.treesitter"
spec "user.mason"
spec "user.schemastore"
spec "user.lspconfig"
spec "user.cmp"
spec "user.telescope"
-- spec "user.none-ls"
-- spec "user.illuminate"
spec "user.gitsigns"
spec "user.whichkey"
spec "user.nvimtree"
spec "user.comment"
spec "user.lualine"
spec "user.navic"
spec "user.breadcrumbs"
spec "user.harpoon"
-- spec "user.neotest"
spec "user.autopairs"
spec "user.neogit"
spec "user.alpha"
spec "user.project"
-- spec "user.toggleterm"
spec "user.nvim_tmux_navigation"
require "user.lazy"
vim.cmd("colorscheme catppuccin-mocha")
-- vim.cmd("colorscheme catppuccin-frappe")
-- vim.api.nvim_set_hl(0, "Normal", {bg="#2b2b2b"})
-- vim.api.nvim_set_hl(0, "Normal", {fg="#c2c2c2"})
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg="#2b2b2b"})
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", {fg="#c2c2c2"})
-- vim.api.nvim_set_hl(0, "LineNr", {bg="#2b2b2b", fg="#767676"})
-- vim.api.nvim_set_hl(0, "Comment", {fg="#767676"})
