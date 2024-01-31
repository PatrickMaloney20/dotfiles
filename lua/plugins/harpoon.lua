return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local ui = require('harpoon.ui')
        local mark = require('harpoon.mark')

        vim.keymap.set('n', '<leader>ha', ui.toggle_quick_menu)
        vim.keymap.set('n', '<C-m>', mark.add_file)
        vim.keymap.set('n', '<C-j>', function() ui.nav_file(1) end)
        vim.keymap.set('n', '<C-k>', function() ui.nav_file(2) end)
        vim.keymap.set('n', '<C-l>', function() ui.nav_file(3) end)
        vim.keymap.set('n', '<C-;>', function() ui.nav_file(4) end)
    end
}
