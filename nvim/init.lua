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
vim.cmd("colorscheme sonokai")
-- vim.cmd("colorscheme kanagawa-dragon")
-- vim.cmd("colorscheme gruvbox-material")
-- vim.api.nvim_set_hl(0, "Normal", {bg="#1c1c1c", fg="#a8a8a8"})
-- vim.api.nvim_set_hl(0, "LineNr", {bg="#1c1c1c", fg="#767676"})
-- vim.api.nvim_set_hl(0, "Comment", {fg="#767676"})
