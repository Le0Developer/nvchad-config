-- Rebind copilot to S-Enter (shift enter) instead of tthe default tab/enter.

vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

vim.keymap.set("i", "<S-Enter>", "copilot#Accept(\"\")", {
  silent = true,
  expr = true,
  desc = "Autocomplete using Github Copilot"
})

-- Allow completion in additional filetypes:
vim.g.copilot_filetypes = {
  markdown = true,
  yaml = true,
}

