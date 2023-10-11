vim.g.go_addtags_transform = "snake_case"
-- vim.g.go_metalinter_autosave_enabled = ['vet', 'golint']

vim.g.go_list_type = "quickfix"    -- error lists are of type quickfix
vim.g.go_fmt_command = "goimports" -- automatically format and rewrite imports
vim.g.go_auto_sameids = 1          -- highlight matching identifiers

vim.g.go_auto_type_info = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_operators = 1
vim.g.go_def_mapping_enabled = 0

-- Mapping Keys
local keyset = vim.keymap.set

keyset(
  "n",
  "<leader>ie",
  ":GoIfErr <CR>",
  { noremap = true }
)

keyset(
  "n",
  "<F3>",
  ":GoCoverage -p <CR>",
  { noremap = true }
)
keyset(
  "n",
  "<F4>",
  ":TestNearest<CR>",
  { noremap = true }
)
keyset(
  "n",
  "<C-i>",
  ":GoFillStruct<CR>",
  { noremap = true }
)
