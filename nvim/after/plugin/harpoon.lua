local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>+', mark.add_file)
vim.keymap.set('n', '<leader><BS>', ui.toggle_quick_menu)
