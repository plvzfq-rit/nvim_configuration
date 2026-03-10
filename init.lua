require("james.remap")
require("config.lazy")

-- set line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- set color scheme
vim.cmd.colorscheme("rose-pine")

-- Set tab stop
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- set transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- set telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fi', builtin.git_files, {})
vim.keymap.set('n', '<leader>fp', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- set harpoon
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

-- set undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- set vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- set treesitter
require'nvim-treesitter'.install { 'javascript', 'c', 'cpp', 'html', 'java', 'json', 'angular', 'python', 'typescript', 'vue', 'svelte', 'lua'  }
