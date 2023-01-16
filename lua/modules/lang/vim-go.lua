vim.g.go_doc_keywordprg_enabled = 0
vim.g.go_def_mapping_enabled = 0
vim.g.go_code_completion_enabled = 0

-- {{ use vim-go's highlight
-- if you want to use treesitter's highlight, just remove 'go' from lua/modules/editor/treesitter.lua
vim.g.go_fillstruct_mode = "gopls"
vim.g.go_version_warning = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_generate_tags = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_textobj_include_function_doc = 1

vim.g.go_highlight_extra_types = 0
vim.g.go_highlight_function_parameters = 0
vim.g.go_highlight_variable_assignments = 0
vim.g.go_highlight_variable_declarations = 0
-- use vim-go's highlight }}
