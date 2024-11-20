require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>X", function ()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close all buffers" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
