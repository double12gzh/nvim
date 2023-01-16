require("leap").opts.highlight_unlabeled_phase_one_targets = true
require("leap").add_default_mappings()

-- set x/X to original function
vim.keymap.del({ "x", "o" }, "x")
vim.keymap.del({ "x", "o" }, "X")
