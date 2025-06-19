local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>ft', builtin.help_tags, { desc = 'Telescope help tags' })

local neotree_cmd = ":Neotree "
vim.keymap.set("n", "<C-n>", neotree_cmd .. "filesystem reveal right<CR>")


