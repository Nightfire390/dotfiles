local function set_color(color)
    --[[
    require(color).setup {
        bold_vert_split = false, -- use bold vertical separators
        dim_nc_background = false, -- dim 'non-current' window backgrounds
        disable_background = true, -- disable background
        disable_float_background = true, -- disable background for floats
        disable_italics = false, -- disable italics
    }
    ]]
    local lackluster = require(color)
    local colors = lackluster.color --blue, green, red, orange, black, lack, luster, gray1-9

    lackluster.setup({
        tweak_ui = {
            disable_undercurl = true
        },
        tweak_syntax = {
            comment = colors.gray5, -- or gray5
            string = "#b72042", --colors.red,
            keyword = colors.gray6,
            keyword_return = "default",
            keyword_exception = "default",
        },
        tweak_background = {
            normal = 'none',
            telescope = 'none',
            menu = lackluster.color.gray4,
            popup = 'default',
        },
    })
    vim.cmd.colorscheme('lackluster-night')
end

set_color('lackluster')
