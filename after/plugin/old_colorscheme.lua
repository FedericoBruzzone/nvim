-- =============================================================================
-- require("tokyonight").setup({
--         style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--         -- transparent = true, -- Enable this to disable setting the background color
--         -- styles = {
--         -- -- Style to be applied to different syntax groups
--         -- -- Value is any valid attr-list value for `:help nvim_set_hl`
--         -- comments = { italic = true },
--         -- keywords = { italic = true },
--         -- functions = {},
--         -- variables = {},
--         -- },
--
--         -- ----- Grey background color in `day` mode -----
--         -- on_colors = function (colors)
--         --     colors.bg = "#353535"
--         -- end;
--         -- on_highlights = function(hl, colors) hl.LineNr = {
--         --       fg = colors.yellow
--         --     }
--         -- end
--         -- -----------------------------------------------
-- })
-- =============================================================================
-- require("catppuccin").setup({
--         flavour = "mocha", -- latte, frappe, macchiato, mocha
--         background = {     -- :h background
--                 light = "latte",
--                 dark = "mocha",
--         },
--         -- transparent_background = false, -- disables setting the background color.
--         -- show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
--         -- term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
--         -- dim_inactive = {
--         --     enabled = false,            -- dims the background color of inactive window
--         --     shade = "dark",
--         --     percentage = 0.15,          -- percentage of the shade to apply to the inactive window
--         -- },
--         no_italic = false,               -- Force no italic
--         no_bold = false,                 -- Force no bold
--         no_underline = false,            -- Force no underline
--         styles = {                       -- Handles the styles of general hi groups (see `:h highlight-args`):
--                 comments = { "italic" }, -- Change the style of comments
--                 conditionals = { "italic" },
--                 -- loops = {},
--                 -- functions = {},
--                 -- keywords = {},
--                 -- strings = {},
--                 -- variables = {},
--                 -- numbers = {},
--                 -- booleans = {},
--                 -- properties = {},
--                 -- types = {},
--                 -- operators = {},
--         },
--         -- color_overrides = {
--         --     mocha = {
--         -- base = "#000000",
--         -- mantle = "#000000",
--         -- crust = "#000000",
--         --     },
--         -- },
--         custom_highlights = {},
--         integrations = {
--                 cmp = true,
--                 gitsigns = true,
--                 nvimtree = true,
--                 treesitter = true,
--         },
-- })
-- =============================================================================
-- vim.g.moonflyCursorColor = true
-- vim.g.moonflyWinSeparator = 2
-- vim.g.moonflyTransparent = true

-- =============================================================================
-- require('ayu').setup({
--         mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
--         -- overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
--         -- overrides = {
--         --     Normal = { bg = "None" },
--         --     ColorColumn = { bg = "None" },
--         --     SignColumn = { bg = "None" },
--         --     Folded = { bg = "None" },
--         --     FoldColumn = { bg = "None" },
--         --     CursorLine = { bg = "None" },
--         --     CursorColumn = { bg = "None" },
--         --     WhichKeyFloat = { bg = "None" },
--         --     VertSplit = { bg = "None" },
--         -- },
-- })
-- vim.cmd('set background=light')
-- =============================================================================
-- require('solarized').setup({
--     theme = 'neo',
--     palette = 'solarized', -- or selenized
-- })
-- =============================================================================
-- require('gruber-darker').setup({
--     -- bold = true,
--     -- invert = {
--     --         signs = false,
--     --         tabline = false,
--     --         visual = false,
--     -- },
--     -- italic = {
--     --         strings = false, -- true,
--     --         comments = true,
--     --         operators = false,
--     --         folds = true,
--     -- },
--     -- undercurl = true,
--     -- underline = true,
-- })
-- =============================================================================
-- require("cyberdream").setup({
--     -- Enable transparent background
--     transparent = true,
--
--     -- -- Enable italics comments
--     -- italic_comments = false,
--     --
--     -- -- Replace all fillchars with ' ' for the ultimate clean look
--     -- hide_fillchars = false,
--     --
--     -- -- Modern borderless telescope theme
--     -- borderless_telescope = true,
--     --
--     -- -- Set terminal colors used in `:terminal`
--     -- terminal_colors = true,
--     --
--     -- theme = {
--     --     variant = "default", -- use "light" for the light variant
--     --     highlights = {
--     --         -- Highlight groups to override, adding new groups is also possible
--     --         -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
--     --
--     --         -- Example:
--     --         Comment = { fg = "#696969", bg = "NONE", italic = true },
--     --
--     --         -- Complete list can be found in `lua/cyberdream/theme.lua`
--     --     },
--     --
--     --     -- Override a color entirely
--     --     colors = {
--     --         -- For a list of colors see `lua/cyberdream/colours.lua`
--     --         -- Example:
--     --         bg = "#000000",
--     --         green = "#00ff00",
--     --         magenta = "#ff00ff",
--     --     },
--     -- },
-- })
-- =============================================================================
-- Default options
-- require('nightfox').setup({
--     options = {
--         -- Compiled file's destination location
--         compile_path = vim.fn.stdpath("cache") .. "/nightfox",
--         compile_file_suffix = "_compiled", -- Compiled file suffix
--         transparent = false,               -- Disable setting background
--         terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--         dim_inactive = false,              -- Non focused panes set to alternative background
--         module_default = true,             -- Default enable value for modules
--         colorblind = {
--             enable = false,                -- Enable colorblind support
--             simulate_only = false,         -- Only show simulated colorblind colors and not diff shifted
--             severity = {
--                 protan = 0,                -- Severity [0,1] for protan (red)
--                 deutan = 0,                -- Severity [0,1] for deutan (green)
--                 tritan = 0,                -- Severity [0,1] for tritan (blue)
--             },
--         },
--         styles = {               -- Style to be applied to different syntax groups
--             comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
--             conditionals = "NONE",
--             constants = "NONE",
--             functions = "bold",
--             keywords = "bold",
--             numbers = "NONE",
--             operators = "NONE",
--             strings = "NONE",
--             types = "bold",
--             variables = "NONE",
--         },
--         inverse = { -- Inverse highlight for different types
--             match_paren = false,
--             visual = false,
--             search = false,
--         },
--         modules = { -- List of various plugins and additional options
--             -- ...
--         },
--     },
--     palettes = {},
--     specs = {},
--     groups = {},
-- })
-- =============================================================================


-- ColorMyPencils('rose-pine')
-- ColorMyPencils('tokyonight')
-- ColorMyPencils('catppuccin')
-- ColorMyPencils('gruber-darker')
-- ColorMyPencils('moonfly') -- black
-- ColorMyPencils('ayu') -- dark gray
-- ColorMyPencils('bluloco')
-- ColorMyPencils('zenbones')
-- ColorMyPencils('rosebones')

-- vim.cmd('set background=light')
-- ColorMyPencils('solarized')

-- ColorMyPencils("deepwhite")
-- ColorMyPencils("cyberdream")
-- ColorMyPencils("default", "0.9.0")
-- ColorMyPencils('base16-black-metal-mayhem')

-- ==== Defult =====
-- ColorMyPencils('industry') -- black
-- ColorMyPencils('torte') -- black
-- ColorMyPencils('slate') -- gray
-- ColorMyPencils('shine') -- light

-- ========================= BEST LIGHT THEME ==================================
-- -- vim.g.tokyobones = {transparent_background = true}
-- vim.cmd('set background=light')
-- vim.cmd.colorscheme('tokyobones')