
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- telescope keybinds
local telescope = require("telescope.builtin")
--vim.keymap.set("n", "<C-p>", telescope.git_files, { desc = "Search git tracked files." }) 
vim.keymap.set("n", "<C-p>", telescope.find_files, { desc = "Search in ALL files." })
vim.keymap.set("n", "<leader>F", function()
    telescope.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Search for a string" })

