return {
    'folke/which-key.nvim',
    event = "VeryLazy",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local wk = require "which-key"

        wk.setup {
            show_help = true,
            plugins = { spelling = true },
            key_labels = { ["<leader>"] = "SPC" },
            triggers = "auto",
            icons = {
                breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
                separator = "➜ ", -- symbol used between a key and it's label
                group = "+", -- symbol prepended to a group
            },
        }

        wk.register({
            mode = { "n", "v" },
            w = { "<cmd>update!<CR>", "Save" },
            b = { name = "+Buffer" },
            d = { name = "+Debug" },
            f = { name = "+File" },
            h = { name = "+Help" },
            g = { name = "+Git" },
            p = { name = "+Project" },
            t = { name = "+Test" },
            v = { name = "+View" },
            z = { name = "+System" },
            -- stylua: ignore
            s = { name = "+Search" },
            c = { name = "+Code" },
        }, { prefix = "<leader>" })
    end
}
