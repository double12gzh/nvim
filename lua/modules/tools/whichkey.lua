local icons = {
	ui = require("modules.ui.icons").get("ui"),
	misc = require("modules.ui.icons").get("misc"),
}

require("which-key").setup({
	plugins = {
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = false,
			nav = false,
			z = true,
			g = true,
		},
	},

	icons = {
		breadcrumb = icons.ui.SeparatorDouble,
		separator = " " .. icons.ui.SeparatorDouble .. " ",
		group = icons.misc.Add,
	},

	window = {
		border = "none",
		position = "bottom",
		margin = { 1, 0, 1, 0 },
		padding = { 1, 1, 1, 1 },
		winblend = 0,
	},
})
