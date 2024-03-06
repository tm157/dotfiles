require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"
spec "user.colorscheme"
-- spec "user.devicons"
spec "user.treesitter"
-- spec "user.mason"
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
spec "user.neotest"
spec "user.autopairs"
spec "user.neogit"
spec "user.alpha"
spec "user.project"
-- spec "user.toggleterm"
spec "user.nvim_tmux_navigation"
require "user.lazy"
-- vim.cmd("colorscheme sonokai")
vim.cmd("colorscheme kanagawa-dragon")
-- vim.api.nvim_set_hl(0, "Normal", {bg="#1c1c1c", fg="#bcbcbc"})
vim.api.nvim_set_hl(0, "LineNr", {bg="#1c1c1c", fg="#bcbcbc"})
-- vim.api.nvim_set_hl(0, "Normal", {bg="#1c1c1c", fg="#bcbcbc"})

-- -- Default options:
-- require('kanagawa').setup{
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "wave",              -- Load "wave" theme when 'background' option is not set
--     background = {               -- map the value of 'background' option to a theme
--         dark = "wave",           -- try "dragon" !
--         light = "lotus"
--     },
-- }
--
