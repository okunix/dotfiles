local actions = require("telescope.actions")

require("telescope").setup({
    pickers = {
        find_files = {
            find_command = {
                "rg",
                "--files",
                "--follow",
                "--no-ignore-vcs",
                "--hidden",
                "-g",
                "!{**/node_modules/*,**/.git/*,**/.wine/*,**/.vscode/*,**/.venv/*,**/venv/*,**/.terraform/*}",
            },
        },
    },
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-l>"] = actions.select_default,
                ["<esc>"] = actions.close,
            },
        },
    },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("grep > ") })
end)
