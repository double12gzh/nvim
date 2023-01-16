local dashboard = require("alpha.themes.dashboard")
local icons = {
	documents = require("modules.ui.icons").get("documents"),
	git = require("modules.ui.icons").get("git"),
	ui = require("modules.ui.icons").get("ui"),
}

-- Header
dashboard.section.header.val = {
	[[   ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀    ]],
	[[ ⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ]],
	[[ ⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ]],
	[[ ⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ]],
	[[ ⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ]],
	[[ ⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ]],
	[[ ⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ]],
	[[ ⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ]],
	[[ ⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ]],
	[[ ⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    ]],
}
dashboard.section.header.opts.hl = "Boolean"
--dashboard.section.header.opts.hl = "Include"

-- Buttons
dashboard.section.buttons.val = {
	dashboard.button("f", icons.ui.List .. " Find file", "<cmd>Telescope find_files<cr>"),
	dashboard.button("w", icons.ui.Telescope .. " Find text", "<cmd>Telescope live_grep<cr>"),
	dashboard.button("o", icons.ui.History .. " Recent files", "<cmd>Telescope oldfiles<cr>"),
	dashboard.button("r", icons.ui.Sort .. " File frecency", "<cmd>Telescope frecency<cr>"),
	dashboard.button("e", icons.ui.NewFile .. " New file", "<cmd>enew<cr>"),
	dashboard.button("c", icons.ui.Gear .. " Config", "<cmd>e ~/.config/nvim/init.lua <cr>"),
	dashboard.button("q", icons.ui.SignOut .. " Quit", "<cmd>qa<cr>"),
	--dashboard.button("y", icons.ui.Sort .. " File frecency", "<cmd>Telescope frecency<cr>"),
	--dashboard.button("p", icons.git.Repo .. " Find project", "<cmd>Telescope project<cr>"),
	--dashboard.button("r", icons.ui.History .. " Recent files", "<cmd>Telescope oldfiles<cr>"),
}
dashboard.section.buttons.opts.hl = "Keyword"

-- Footer
local function footer()
	-- Number of plugins
	local total_plugins = #vim.tbl_keys(packer_plugins)
	local datetime = os.date("%Y-%m-%d %H:%M:%S")
	local plugins_text = "    "
		.. total_plugins
		.. " plugins"
		--.. "   v"
		--.. vim.version().major
		--.. "."
		--.. vim.version().minor
		--.. "."
		--.. vim.version().patch
		.. "   "
		.. datetime

	return plugins_text
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Function"

local head_butt_padding = 1
local occu_height = #dashboard.section.header.val + 2 * #dashboard.section.buttons.val + head_butt_padding
local header_padding = math.max(0, math.ceil((vim.fn.winheight("$") - occu_height) * 0.25))
local foot_butt_padding = 0

dashboard.config.layout = {
	{ type = "padding", val = header_padding },
	dashboard.section.header,
	{ type = "padding", val = head_butt_padding },
	dashboard.section.buttons,
	{ type = "padding", val = foot_butt_padding },
	dashboard.section.footer,
}

dashboard.opts.opts.noautocmd = true
require("alpha").setup(dashboard.opts)
