return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  ---@module "ibl"
	---@type ibl.config
  opts = {
		indent = { char = "┊" },
	},
	config = function ()
		local highlight = {
		"Gray",
    "RainbowGreen",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowViolet",
    "RainbowCyan",}

		local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    	vim.api.nvim_set_hl(0, "Gray", { fg = "#808080" })
    	vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#d7ba7d" })
    	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#569CD6" })
    	vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#CE9178" })
    	vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#6A9955" })
    	vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C586C0" })
    	vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#4EC9B0" })
		end)

		require("ibl").setup { indent = { highlight = highlight,char = "┊" ,} }
	end,
}


