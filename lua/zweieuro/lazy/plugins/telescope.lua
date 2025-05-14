return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },

    config = function()
        require('telescope').setup({  extensions = {
            ['ui-select'] = {
                require('telescope.themes').get_dropdown(),
            },
        },})

      pcall(require('telescope').load_extension, 'ui-select')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- project files
        vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- all git files, respects git ignore

        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set('n', '<leader>ps', function() -- project search with grep
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)

        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        extensions = {
            ['ui-select'] = {
                require('telescope.themes').get_dropdown(),
            },
        }
        end
}

