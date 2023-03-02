return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
        { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle pin" },
        { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
        options = {
            -- diagnostics = "nvim_lsp",
            always_show_bufferline = false,
            -- diagnostics_indicator = function(_, _, diag)
            --   local icons = require("lazyvim.config").icons.diagnostics
            --   local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            --     .. (diag.warning and icons.Warn .. diag.warning or "")
            --   return vim.trim(ret)
            -- end,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "",
                    highlight = "NeoTreeNormal",
                    text_align = "left",
                },
            },
        },
    },
}
