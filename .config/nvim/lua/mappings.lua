require "nvchad.mappings"

-- keymaps
local map = vim.keymap.set

-- command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- conform
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- comment lines 
map("n", "gcc", "<leader>/", { desc = "Comment on line" })
map("n", "gcc", "<cmd>//", { desc = "Comment on line" })
map("v", "gc", "<leader>/", { desc = "Comment on visual selection" })


-- save
map("n", "<leader>qq", "<cmd>wqall<cr>", { desc = "Save and quit all" })
map("n", "<leader><leader>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Move selected line / block of text in visual mode
map("v", "J", ":m '>+1<CR>gv=gv") -- Shift visual selected line down
map("v", "K", ":m '<-2<CR>gv=gv") -- Shift visual selected line up 

-- Move text up and down
map("n", "j", "gj")
map("n", "k", "gk")

