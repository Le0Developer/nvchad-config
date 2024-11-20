-- Rebind copilot to S-Enter (shift enter) instead of tthe default tab/enter.

vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

-- if someone knows a way to do this using the regular keymap API, please let me know
vim.cmd[[inoremap <silent><expr> <S-Enter> copilot#Accept("")]]

-- Allow completion in additional filetypes:
vim.g.copilot_filetypes = {
  markdown = true,
  yaml = true,
}

