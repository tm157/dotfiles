-- https://dotfyle.com/neovim/colorscheme/top
--------------------------------------------------------------------------------

-- INFO only the first theme will be used
local lightThemes = {
	{ "EdenEast/nightfox.nvim", name = "dawnfox" },
	-- { "folke/tokyonight.nvim", opts = { style = "day" } },
	-- "sainnhe/everforest",
	-- {
	-- 	"marko-cerovac/material.nvim",
	-- 	init = function() vim.g.material_style = "lighter" end,
	-- 	opts = { lualine_style = "stealth", high_visibility = { lighter = false } },
	-- },
}

local darkThemes = {
	-- { "EdenEast/nightfox.nvim", name = "duskfox" },
	{ "sainnhe/sonokai", init = function() vim.g.sonokai_style = "shusia" end },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"catppuccin/nvim",
		enabled = true,
		name = "catppuccin",
		priority = 150,
		config = function()
			require("catppuccin").setup({
				background = {
					light = "latte",
					dark = "mocha",
				},
				color_overrides = {
					mocha = {
						rosewater = "#EA6962",
						flamingo = "#EA6962",
						pink = "#D3869B",
						mauve = "#D3869B",
						red = "#EA6962",
						maroon = "#EA6962",
						peach = "#BD6F3E",
						yellow = "#D8A657",
						green = "#A9B665",
						teal = "#89B482",
						sky = "#89B482",
						sapphire = "#89B482",
						blue = "#7DAEA3",
						lavender = "#7DAEA3",
						-- text = "#D4BE98",
						text = "#C2C2C2",
						subtext1 = "#BDAE8B",
						subtext1 = "#BDAE8B",
						subtext0 = "#A69372",
						-- overlay2 = "#8C7A58",
						overlay2 = "#808080",
						-- overlay1 = "#735F3F",
						overlay1 = "#767676",
						-- overlay0 = "#958272",
						overlay0 = "#949494",
						-- surface2 = "#4B4F51",
						surface2 = "#444444",
						-- surface1 = "#2A2D2E",
						surface1 = "#3a3a3a",
						-- surface0 = "#232728",
						surface0 = "#303030",
						-- base = "#1D2021",
						base = "#262626",
						-- mantle = "#191C1D",
						mantle = "#1c1c1c",
						-- crust = "#151819",
						crust = "#303030",
					},
				},
				styles = {
					comments = { "italic" },
					conditionals = {},
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				transparent_background = false,
				show_end_of_buffer = false,
				custom_highlights = function(colors)
					return {
						NormalFloat = { bg = colors.crust },
						FloatBorder = { bg = colors.crust, fg = colors.crust },
						VertSplit = { bg = colors.base, fg = colors.surface0 },
						CursorLineNr = { fg = colors.surface2 },
						Pmenu = { bg = colors.crust, fg = "" },
						PmenuSel = { bg = colors.surface0, fg = "" },
						IndentBlanklineChar = { fg = colors.surface0 },
						IndentBlanklineContextChar = { fg = colors.surface2 },
						GitSignsChange = { fg = colors.peach },
						NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
						NvimTreeExecFile = { fg = colors.text },
						IlluminatedWordText = { bg = colors.surface1, fg = "" },
						IlluminatedWordRead = { bg = colors.surface1, fg = "" },
						IlluminatedWordWrite = { bg = colors.surface1, fg = "" },
					}
				end,
			})
		end,
	},

	{"rebelot/kanagawa.nvim"},
	{"mellow-theme/mellow.nvim"},
	{ "navarasu/onedark.nvim", opts ={style = "warm"}},
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      -- vim.g.gruvbox_material_foreground = "mix"
      -- vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      -- vim.api.nvim_set_hl(0, "Normal", {bg="#2b2b2b"})
      -- vim.api.nvim_set_hl(0, "Normal", {fg="#c2c2c2"})
      -- vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg="#2b2b2b"})

			vim.o.background = "dark"
			vim.g.gruvbox_material_background = "hard"

			vim.cmd.colorscheme("gruvbox-material")

			-- Change the background color of floating windows and borders.
			vim.cmd("highlight NormalFloat guibg=none guifg=none")
			vim.cmd("highlight FloatBorder guibg=none guifg=#76787d")
			vim.cmd("highlight Normal guibg=none guifg=#76787d")
			-- vim.cmd("highlight NormalNC guibg=none guifg=none")

			-- Change neotree background colors
			vim.cmd("highlight NeoTreeNormal guibg=none guifg=none")
			vim.cmd("highlight NeoTreeFloatNormal guibg=none guifg=none")
			vim.cmd("highlight NeoTreeFloatBorder guibg=none guifg=none")
			vim.cmd("highlight NeoTreeEndOfBuffer guibg=none guifg=none") -- 1d2021
      
    end,
  },
	{"sainnhe/everforest"},
  {
    "LunarVim/darkplus.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function() 
      vim.cmd.colorscheme "darkplus"
    end

  }
}



--------------------------------------------------------------------------------

-- INFO The purpose of this is not having to manage two lists, one with themes
-- to install and one for determining light/dark theme

---convert lazy.nvim-plugin-spec or github-repo into theme name
---@param repo string|table either github-repo or plugin-spec with github-repo as first item
---@nodiscard
---@return string name of the color scheme
local function getName(repo)
	if type(repo) == "table" then repo = repo.name or repo[1] end
	local name = repo:gsub(".*/", ""):gsub("[.%-]?nvim$", ""):gsub("neovim%-?", "")
	return name
end

vim.g.lightTheme = getName(lightThemes[1])
vim.g.darkTheme = getName(darkThemes[1])

--------------------------------------------------------------------------------

-- merge tables
local allThemes = vim.list_extend(darkThemes, lightThemes)

-- ensure themes are never lazy-loaded https://github.com/folke/lazy.nvim#-colorschemes
allThemes = vim.tbl_map(function(theme)
	local themeObj = type(theme) == "string" and { theme } or theme
	themeObj.lazy = false
	themeObj.priority = 1000
	return themeObj
end, allThemes)

-- return for lazy.nvim
return allThemes

