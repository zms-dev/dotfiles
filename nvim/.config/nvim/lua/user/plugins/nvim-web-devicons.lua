return {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    opts = {},
    config = function(mod, opts)
        local devicons = require 'nvim-web-devicons'
        devicons.setup(opts)

        local icons = devicons.get_icons()
        for k, v in pairs(icons) do
            v.icon = v.icon .. " "
            icons[k] = v
        end

        devicons.set_icon(icons)
    end
}
