local icons = { ui = require("modules.ui.icons").get("ui", true) }
local actions = require("telescope.actions.set")
local fixfolds = {
	hidden = true,
	attach_mappings = function(_)
		actions.select:enhance({
			post = function()
				vim.api.nvim_command(":normal! zx")
			end,
		})
		return true
	end,
}
local lga_actions = require("telescope-live-grep-args.actions")

require("telescope").setup({
	defaults = {
		initial_mode = "insert",
		prompt_prefix = " " .. icons.ui.Telescope,
		selection_caret = icons.ui.ChevronRight,
		entry_prefix = " ",
		scroll_strategy = "limit",
		results_title = false,
		layout_strategy = "horizontal",
		path_display = { "smart" }, -- absolute
		dynamic_preview_title = true,
		file_ignore_patterns = {
			".git/",
			".cache",
			"%.class",
			"%.pdf",
			"%.mkv",
			"%.mp4",
			"%.zip",
			"node_modules/",
			"target/",
			"docs/",
			".settings/",
		},
		layout_config = {
			-- prompt_position = "bottom",
			horizontal = {
				preview_width = 0.5,
			},
		},
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		mappings = {
			i = {
				["<C-x>"] = false,
				["<C-u>"] = false,
				["<C-d>"] = false,
				["<Esc>"] = require("telescope.actions").close,
				["<C-c>"] = require("telescope.actions").close,
				["<C-s>"] = require("telescope.actions").select_horizontal,
				["<C-v>"] = require("telescope.actions").select_vertical,
				["<C-t>"] = require("telescope.actions").select_tab,
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<C-/>"] = "which_key",
			},
			n = {
				["<Esc>"] = require("telescope.actions").close,
				["j"] = require("telescope.actions").move_selection_next,
				["k"] = require("telescope.actions").move_selection_previous,
				["H"] = require("telescope.actions").move_to_top,
				["M"] = require("telescope.actions").move_to_middle,
				["L"] = require("telescope.actions").move_to_bottom,
				["?"] = require("telescope.actions").which_key,
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		frecency = {
			show_scores = true,
			show_unindexed = true,
			ignore_patterns = { "*.git/*", "*/tmp/*" },
			disable_devicons = false,
			workspaces = {
				-- ["conf"] = "/home/my_username/.config",
				-- ["data"] = "/home/my_username/.local/share",
				-- ["project"] = "/home/my_username/projects",
				-- ["wiki"] = "/home/my_username/wiki"
			},
		},
		live_grep_args = {
			auto_quoting = true, -- enable/disable auto-quoting
			-- define mappings, e.g.
			mappings = { -- extend mappings
				i = {
					["<C-k>"] = lga_actions.quote_prompt(),
					["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
				},
			},
		},
		undo = {
			use_delta = true,
			side_by_side = true,
			layout_strategy = "vertical",
			layout_config = {
				preview_height = 0.7,
			},
			mappings = {
				i = {
					["<cr>"] = require("telescope-undo.actions").yank_additions,
					["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
					["<C-cr>"] = require("telescope-undo.actions").restore,
				},
			},
		},
	},
	pickers = {
		buffers = fixfolds,
		find_files = fixfolds,
		git_files = fixfolds,
		grep_string = fixfolds,
		live_grep = fixfolds,
		oldfiles = fixfolds,
	},
})

-- plugins should load after setup function
-- require("telescope").load_extension("dap")
require("telescope").load_extension("env")
require("telescope").load_extension("frecency")
require("telescope").load_extension("fzf")
require("telescope").load_extension("projects")
require("telescope").load_extension("notify")
require("telescope").load_extension("neoclip")
-- require("telescope").load_extension("git_worktree")
require("telescope").load_extension("live_grep_args")
require("telescope").load_extension("undo")
