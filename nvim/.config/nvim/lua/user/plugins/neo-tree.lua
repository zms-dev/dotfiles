return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
            "<leader>fe",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    dir = vim.loop.cwd()
                })
            end,
            desc = "Explorer NeoTree (root dir)",
        },
        {
            "<leader>fE",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    dir = vim.loop.cwd()
                })
            end,
            desc = "Explorer NeoTree (cwd)",
        },
        { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
        { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)",      remap = true },
    },
    deactivate = function()
        vim.cmd([[Neotree close]])
    end,
    init = function()
        vim.g.neo_tree_remove_legacy_commands = 1
        if vim.fn.argc() == 1 then
            local stat = vim.loop.fs_stat(vim.fn.argv(0))
            if stat and stat.type == "directory" then
                require("neo-tree")
            end
        end
    end,
    opts = {
        close_if_last_window = true,
        default_component_configs = {
            icon = {
                folder_closed = " ",
                folder_open = " ",
                folder_empty = "ﰊ  ",
                -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
                -- then these will never be used.
                default = "*",
                highlight = "NeoTreeFileIcon"
            },
            indent = {
                indent_size = 3,
                padding = 1,
                indent_marker = "│",
                last_indent_marker = "╰─",
            },
        },
        filesystem = {
            bind_to_cwd = false,
            follow_current_file = true,
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
            }
        },
        window = {
            mappings = {
                ["<space>"] = "none",
            },
        },
    },
}
