local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, nowait = true }

-- Plugin keymaps

--- DAP
keymap("n", "<F8>", "<cmd>lua require('dap').continue()<cr>", opts) -- Launching debug sessions and resuming execution
keymap("n", "<leader>dr", "<cmd>lua require('dap').continue()<cr>", opts)
keymap("n", "<leader>dd", "<cmd>lua require('dap').terminate()<cr>", opts)
keymap("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dB", "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", opts)
keymap("n", "<leader>dbl", "<cmd>lua require('dap').list_breakpoints()<cr>", opts)
keymap("n", "<leader>drc", "<cmd>lua require('dap').run_to_cursor()<cr>", opts)
keymap("n", "<leader>drl", "<cmd>lua require('dap').run_last()<cr>", opts)
keymap("n", "<F9>", "<cmd>lua require('dap').step_over()<cr>", opts)
keymap("n", "<leader>dv", "<cmd>lua require('dap').step_over()<cr>", opts)
keymap("n", "<F10>", "<cmd>lua require('dap').step_into()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require('dap').step_into()<cr>", opts)
keymap("n", "<F11>", "<cmd>lua require('dap').step_out()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require('dap').step_out()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require('dap').repl.open()<cr>", opts)

--- Telescope
keymap("n", "<leader>fu", "<cmd>lua require('telescope').extensions.undo.undo()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects{}<cr>", opts)
keymap("n", "<leader>fr", "<cmd>lua require('telescope').extensions.frecency.frecency{}<cr>", opts)
keymap("n", "<leader>fw", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args{}<cr>", opts)
keymap("n", "<F5>", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<F6>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<F7>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fe", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fn", "<cmd>enew<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<leader>fz", "<cmd>Telescope zoxide list<cr>", opts)

--- bufdelete.nvim
keymap("n", "<leader>bq", "<cmd>BufDel<cr>", opts)
keymap("n", "<leader>bp", "<cmd>BufferLinePick<cr>", opts)

--- BufferLine
keymap("n", "<A-l>", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "<A-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "<A-S-l>", "<cmd>BufferLineMoveNext", opts)
keymap("n", "<A-S-h>", "<cmd>BufferLineMovePrev", opts)
keymap("n", "<A-1>", "<cmd>ufferLineGoToBuff 1", opts)
keymap("n", "<A-2>", "<cmd>ufferLineGoToBuff 2", opts)
keymap("n", "<A-3>", "<cmd>ufferLineGoToBuff 3", opts)
keymap("n", "<A-4>", "<cmd>ufferLineGoToBuff 4", opts)
keymap("n", "<A-5>", "<cmd>ufferLineGoToBuff 5", opts)
keymap("n", "<A-6>", "<cmd>ufferLineGoToBuff 6", opts)
keymap("n", "<A-7>", "<cmd>ufferLineGoToBuff 7", opts)
keymap("n", "<A-8>", "<cmd>ufferLineGoToBuff 8", opts)
keymap("n", "<A-9>", "<cmd>ufferLineGoToBuff 9", opts)

--- Lsp mapping work when event:InsertEnter & event:LspStart
--keymap("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
--keymap("n", "<leader>lr", "<cmd>LspRestart<cr>", opts)
--keymap("n", "<F3>", "<cmd>Lspsaga outline<cr>", opts)
keymap("n", "<F3>", "<cmd>SymbolsOutline<cr>", opts)
-- Diagnostic jump can use `<c-o>` to jump back
keymap("n", "e[", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
keymap("n", "e]", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
keymap("n", "gr", "<cmd>Lspsaga rename<cr>", opts)
keymap("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
keymap("n", "ga", "<cmd>Lspsaga code_action<cr>", opts)
keymap("v", "ga", "<cmd>Lspsaga code_action<cr>", opts)
keymap("n", "gD", "<cmd>Lspsaga peek_definition<cr>", opts)
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", opts)
keymap("n", "gl", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
keymap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts) -- go to definition
keymap("n", "gm", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
keymap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
-- keymap("n", "gDL", "<cmd>lua vim.diagnostic.setloclist()<cr>", opts) -- use trouble.nvim instead
-- keymap("n", "gQL", "<cmd>lua vim.diagnostic.setqflist()<cr>", opts) -- use trouble.nvim instead

-- install lazygit: https://github.com/jesseduffield/lazygit#keybindings
keymap("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<cr>", opts)

-- Toggleterm
-- "Ctrl+ \" to open toggleterm
keymap("n", "<C-\\>", "<cmd>ToggleTerm direction=horizontal<cr>", opts)
keymap("i", "<C-\\>", "<Esc><Cmd>ToggleTerm direction=horizontal<CR>", opts)
keymap("t", "<C-\\>", "<Esc><Cmd>ToggleTerm<CR>", opts)
keymap("n", "<F4>", "<cmd>ToggleTerm direction=vertical<CR>", opts)
keymap("i", "<F4>", "<Esc><Cmd>ToggleTerm direction=vertical<CR>", opts)
keymap("t", "<F4>", "<Esc><Cmd>ToggleTerm<CR>", opts)
keymap("n", "<A-d>", "<cmd>ToggleTerm direction=float<CR>", opts)
keymap("i", "<A-d>", "<Esc><Cmd>ToggleTerm direction=float<CR>", opts)
keymap("t", "<A-d>", "<Esc><Cmd>ToggleTerm<CR>", opts)
keymap("n", "<S-A-d>", "<cmd>ToggleTerm direction=horizontal<CR>", opts)
keymap("i", "<S-A-d>", "<Esc><Cmd>ToggleTerm direction=horizontal<CR>", opts)
keymap("t", "<S-A-d>", "<Esc><cmd>ToggleTerm<CR>", opts)

--- Tmux.nvim
-- Move from Nvim windows to tmux panes
--keymap("n", "<C-j>", '<cmd>lua require("tmux").move_bottom()<cr>', opts)
--keymap("n", "<C-k>", '<cmd>lua require("tmux").move_top()<cr>', opts)
--keymap("n", "<C-h>", '<cmd>lua require("tmux").move_left()<cr>', opts)
--keymap("n", "<C-l>", '<cmd>lua require("tmux").move_right()<cr>', opts)

-- Neovim windos/Tmux panes resize
--keymap("n", "<M-j>", '<cmd>lua require("tmux").resize_bottom()<cr>', opts)
--keymap("n", "<M-k>", '<cmd>lua require("tmux").resize_top()<cr>', opts)
--keymap("n", "<M-h>", '<cmd>lua require("tmux").resize_left()<cr>', opts)
--keymap("n", "<M-l>", '<cmd>lua require("tmux").resize_right()<cr>', opts)

--- Trouble.nvim
keymap("n", "<leader>tt", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>tr", "<cmd>TroubleToggle lsp_references<cr>", opts)
keymap("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>", opts)

--- NvimTree
keymap("n", "<F2>", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>nf", "<cmd>NvimTreeFindFile<cr>", opts)
keymap("n", "<leader>nr", "<cmd>NvimTreeRefresh<cr>", opts)

--- accelerate-jk
keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})

--- comment-frame
keymap("n", "<leader>cf", "<cmd>lua require('nvim-comment-frame').add_comment()<cr>", {})
keymap("n", "<leader>cF", "<cmd>lua require('nvim-comment-frame').add_multiline_comment()<cr>", {})

--- MarkdownPreview
keymap("n", "<F12>", "<cmd>MarkdownPreviewToggle<cr>", opts)

--- SnipRun
keymap("n", "<leader>R", "<cmd>SnipRun<cr>", opts)
keymap("v", "<leader>R", "<cmd>%SnipRun<cr>", opts)

--- Diffview
keymap("n", "<leader>dv", "<cmd>DiffviewOpen<cr>", opts)
keymap("n", "<leader><leader>dv", "<cmd>DiffviewClose<cr>", opts)

--- Legendary
keymap("n", "<A-p>", "<cmd>Legendary<cr>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)

--- Packer
--keymap("n", "<leader>pc", "<cmd>PackerCompile<cr>", opts)
--keymap("n", "<leader>ps", "<cmd>PackerSync<cr>", opts)
--keymap("n", "<leader>pt", "<cmd>PackerStatus<cr>", opts)

--- comment-frame
-- "<leader>cf" to use comment-frame

--- ssr.nvim, structural search and replace
--- search-replace.nvim
-- SearchReplaceSingleBuffer
keymap("n", "<leader>rs", "<cmd>SearchReplaceSingleBufferSelections<cr>", opts)
keymap("n", "<leader>ro", "<cmd>SearchReplaceSingleBufferOpen<cr>", opts)
keymap("n", "<leader>rw", "<cmd>SearchReplaceSingleBufferCWord<cr>", opts)
keymap("n", "<leader>rW", "<cmd>SearchReplaceSingleBufferCWORD<cr>", opts)
keymap("n", "<leader>re", "<cmd>SearchReplaceSingleBufferCExpr<cr>", opts)
keymap("n", "<leader>rf", "<cmd>SearchReplaceSingleBufferCFile<cr>", opts)
-- SearchReplaceMultiBuffer
keymap("n", "<leader>rbs", "<cmd>SearchReplaceMultiBufferSelections<cr>", opts)
keymap("n", "<leader>rbo", "<cmd>SearchReplaceMultiBufferOpen<cr>", opts)
keymap("n", "<leader>rbw", "<cmd>SearchReplaceMultiBufferCWord<cr>", opts)
keymap("n", "<leader>rbW", "<cmd>SearchReplaceMultiBufferCWORD<cr>", opts)
keymap("n", "<leader>rbe", "<cmd>SearchReplaceMultiBufferCExpr<cr>", opts)
keymap("n", "<leader>rbf", "<cmd>SearchReplaceMultiBufferCFile<cr>", opts)
-- Visual Mode
keymap("v", "<C-r>", "<cmd>SearchReplaceSingleBufferVisualSelection<cr>", opts)
keymap("v", "<C-w>", "<cmd>SearchReplaceWithinVisualSelectionCWord<cr>", opts)

--- nvim-surround
-- keymaps = {
--     insert = "<C-g>z",
--     insert_line = "<C-g>Z",
--     normal = "gz",
--     normal_cur = "gZ",
--     normal_line = "gzz",
--     normal_cur_line = "gZZ",
--     visual = "gz",
--     visual_line = "gZ",
--     delete = "gzd",
--     change = "gzc",
-- },

--- treesj
-- "<Space>m" to toggle split/join

--- autolist.nvim
-- <C-t> to indent.
-- <C-d> to dedent.
-- <C-r> to change from `ol`->`ul`/`ul`->`ol`
-- <CR> on an empty list marker to end the list.

--- dial
keymap("n", "<leader>=", "<Plug>(dial-increment)", { noremap = true })
keymap("v", "<leader>=", "<Plug>(dial-increment)", { noremap = true })
keymap("n", "<leader>-", "<Plug>(dial-decrement)", { noremap = true })
keymap("v", "<leader>-", "<Plug>(dial-decrement)", { noremap = true })

--- regexplainer
-- "<leader>gR" to toggle regexplainer

--- leap.nvim
-- "s/S", "f/F", "t/T" to use leap

--- nabla
keymap("n", "<leader>mp", "<cmd>lua require('nabla').popup('rounded')<cr>", opts)

-- Visual Selection from Normal Mode
keymap("n", "vx", "<cmd>STSSelectMasterNode<cr>", opts)
keymap("n", "vn", "<cmd>STSSelectCurrentNode<cr>", opts)

-- Select Nodes in Visual Mode
keymap("x", "[", "<cmd>STSSelectPrevSiblingNode<cr>", opts)
keymap("x", "]", "<cmd>STSSelectNextSiblingNode<cr>", opts)
keymap("x", "=", "<cmd>STSSelectParentNode<cr>", opts)
keymap("x", "-", "<cmd>STSSelectChildNode<cr>", opts)

-- Targeted Jump with virtual_text, placed in tree-surfer.lua
-- "gv", jump to variable_declarations(only within visible window)
-- "gfu", jump to functions
-- "gif", jump to if-statements
-- "gfo", jump to for-statements
-- "gj", jump to certain nodes
