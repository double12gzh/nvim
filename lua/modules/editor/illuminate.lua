require("illuminate").configure({
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
	delay = 100,
	filetypes_denylist = {
		"DoomInfo",
		"DressingSelect",
		"NvimTree",
		"Outline",
		"TelescopePrompt",
		"Trouble",
		"alpha",
		"dashboard",
		"dirvish",
		"fugitive",
		"help",
		"lir",
		"neogitstatus",
		"norg",
		"packer",
		"spectre_panel",
		"toggleterm",
	},
	under_cursor = true,
	large_file_cutoff = 2000,
})

-- illuminate setting
-- disable the followings inorder to support grey highlight for word under cursor
--vim.api.nvim_set_hl(0, "IlluminatedWordText", { underline = true })
--vim.api.nvim_set_hl(0, "IlluminatedWordRead", { underline = true })
--vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { underline = true })
