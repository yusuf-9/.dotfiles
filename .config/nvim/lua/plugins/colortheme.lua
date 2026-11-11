-- return {
--   {
--     'projekt0n/github-nvim-theme',
--     lazy = false,
--     priority = 1000,
--     -- config = function()
--     --   require('github-theme').setup {
--     --     options = {},
--     --   }
--     --
--     --   -- Set the theme
--     --   vim.cmd 'colorscheme github_dark_colorblind'
--     -- end,
--   },
--   {
--     'webhooked/kanso.nvim',
--   },
--   {
--     'rebelot/kanagawa.nvim',
--   },
--   {
--     'ellisonleao/gruvbox.nvim',
--     config = function()
--       require('gruvbox').setup {
--         options = {},
--       }
--
--       -- Set the theme
--       vim.cmd 'colorscheme gruvbox'
--     end,
--   },
--   {
--     'rose-pine/neovim',
--     name = 'rose-pine',
--     -- config = function()
--     --   vim.cmd 'colorscheme rose-pine'
--     -- end,
--   },
--   -- {
--   --   'metalelf0/black-metal-theme-neovim',
--   --   lazy = false,
--   --   priority = 1000,
--   --   -- config = function()
--   --   --   require('black-metal').setup {
--   --   --     -----MAIN OPTIONS-----
--   --   --     --
--   --   --     -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | venom
--   --   --     theme = 'bathory',
--   --   --     -- Can be one of: 'light' | 'dark', or set via vim.o.background
--   --   --     variant = 'dark',
--   --   --     -- Use an alternate, darker bg
--   --   --     alt_bg = false,
--   --   --     -- If true, docstrings will be highlighted like strings, otherwise they will be
--   --   --     -- highlighted like comments. Note, behavior is dependent on the language server.
--   --   --     colored_docstrings = true,
--   --   --     -- If true, highlights the {sign,fold} column the same as cursorline
--   --   --     cursorline_gutter = true,
--   --   --     -- If true, highlights the gutter darker than the bg
--   --   --     dark_gutter = false,
--   --   --     -- if true favor treesitter highlights over semantic highlights
--   --   --     favor_treesitter_hl = false,
--   --   --     -- Don't set background of floating windows. Recommended for when using floating
--   --   --     -- windows with borders.
--   --   --     plain_float = false,
--   --   --     -- Show the end-of-buffer character
--   --   --     show_eob = true,
--   --   --     -- If true, enable the vim terminal colors
--   --   --     term_colors = true,
--   --   --     -- Keymap (in normal mode) to toggle between light and dark variants.
--   --   --     toggle_variant_key = nil,
--   --   --     -- Don't set background
--   --   --     transparent = false,
--   --   --
--   --   --     -----DIAGNOSTICS and CODE STYLE-----
--   --   --     --
--   --   --     diagnostics = {
--   --   --       darker = true, -- Darker colors for diagnostic
--   --   --       undercurl = false, -- Use undercurl for diagnostics
--   --   --       background = true, -- Use background color for virtual text
--   --   --     },
--   --   --     -- The following table accepts values the same as the `gui` option for normal
--   --   --     -- highlights. For example, `bold`, `italic`, `underline`, `none`.
--   --   --     code_style = {
--   --   --       comments = 'italic',
--   --   --       conditionals = 'none',
--   --   --       functions = 'none',
--   --   --       keywords = 'none',
--   --   --       headings = 'bold', -- Markdown headings
--   --   --       operators = 'none',
--   --   --       keyword_return = 'none',
--   --   --       strings = 'none',
--   --   --       variables = 'none',
--   --   --     },
--   --   --
--   --   --     -----PLUGINS-----
--   --   --     --
--   --   --     -- The following options allow for more control over some plugin appearances.
--   --   --     plugin = {
--   --   --       lualine = {
--   --   --         -- Bold lualine_a sections
--   --   --         bold = true,
--   --   --         -- Don't set section/component backgrounds. Recommended to not set
--   --   --         -- section/component separators.
--   --   --         plain = false,
--   --   --       },
--   --   --       cmp = { -- works for nvim.cmp and blink.nvim
--   --   --         -- Don't highlight lsp-kind items. Only the current selection will be highlighted.
--   --   --         plain = false,
--   --   --         -- Reverse lsp-kind items' highlights in blink/cmp menu.
--   --   --         reverse = false,
--   --   --       },
--   --   --     },
--   --   --
--   --   --     -- CUSTOM HIGHLIGHTS --
--   --   --     --
--   --   --     -- Override default colors
--   --   --     colors = {
--   --   --       diag_red = '#ff2d00',
--   --   --       diag_blue = '#00FFFF',
--   --   --       diag_yellow = '#bab500',
--   --   --       diag_green = '#3903bf',
--   --   --     },
--   --   --
--   --   --     -- Override highlight groups
--   --   --     highlights = {},
--   --   --   }
--   --   --   -- Convenience function that simply calls `:colorscheme <theme>` with the theme
--   --   --   -- specified in your config.
--   --   --   require('black-metal').load()
--   --   -- end,
--   --   -- },
--   -- },
--   {
--     'catppuccin/nvim',
--     name = 'catppuccin',
--     lazy = false,
--     priority = 1000,
--     -- config = function()
--     --   require('catppuccin').setup {
--     --     no_italic = true,
--     --     term_colors = true,
--     --     transparent_background = false,
--     --     -- styles = {
--     --     --   comments = {},
--     --     --   conditionals = {},
--     --     --   loops = {},
--     --     --   functions = {},
--     --     --   keywords = {},
--     --     --   strings = {},
--     --     --   variables = {},
--     --     --   numbers = {},
--     --     --   booleans = {},
--     --     --   properties = {},
--     --     --   types = {},
--     --     -- },
--     --     -- color_overrides = {
--     --     --   mocha = {
--     --     --     base = '#000000',
--     --     --     mantle = '#000000',
--     --     --     crust = '#000000',
--     --     --   },
--     --     -- },
--     --     -- integrations = {
--     --     --   telescope = {
--     --     --     enabled = true,
--     --     --     style = 'nvchad',
--     --     --   },
--     --     --   dropbar = {
--     --     --     enabled = true,
--     --     --     color_mode = true,
--     --     --   },
--     --     -- },
--     --     -- diagnostics = {
--     --     --   -- Match your theme's colors
--     --     --   underline_error = { undercurl = true, sp = '#ff2d00' },
--     --     --   underline_warn = { undercurl = true, sp = '#ffb86c' },
--     --     --   underline_info = { undercurl = true, sp = '#8be9fd' },
--     --     --   underline_hint = { undercurl = true, sp = '#50fa7b' },
--     --     -- },
--     --   }
--     --   vim.cmd.colorscheme 'catppuccin' -- Set the theme
--     -- end,
--   },
-- }
--
-- Colorschemes: Theme configurations
return {
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        -- vim.cmd([[colorscheme flexoki-dark]])
        -- require("yukinord").setup({ style = "dark" })
        -- vim.cmd([[colorscheme gruvbox-material]])
        -- vim.cmd([[colorscheme yukinord]])
        vim.cmd([[colorscheme github_dark_colorblind]])
      end,
      set_light_mode = function()
        -- vim.cmd([[colorscheme flexoki-light]])
        require("yukinord").setup({ style = "light" })
        vim.cmd([[colorscheme github_light_default]])
      end,
    },
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Yukinord (default)
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "adibhanna/yukinord.nvim",
    -- dir = "~/Developer/opensource/yukinord/neovim",
    config = function()
      require("yukinord").setup({
        transparent = true,
        transparent_sidebar = true,
      })
      -- vim.cmd("colorscheme yukinord")
    end,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Gruvbox Material
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      -- vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "mix"
      vim.g.gruvbox_material_cursor = "auto"
    end,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Forest Night
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "adibhanna/forest-night.nvim",
    priority = 1000,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Nordic
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        bold_keywords = false,
        italic_comments = false,
        transparent = { bg = false, float = false },
        bright_border = false,
        reduced_blue = true,
        swap_backgrounds = false,
        cursorline = {
          bold = false,
          bold_number = true,
          theme = "dark",
          blend = 0.85,
        },
        noice = { style = "flat" },
        telescope = { style = "flat" },
        leap = { dim_backdrop = false },
        ts_context = { dark_background = true },
      })
    end,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- GitHub Theme
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          compile_path = vim.fn.stdpath("cache") .. "/github-theme",
          compile_file_suffix = "_compiled",
          hide_end_of_buffer = true,
          hide_nc_statusline = true,
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          module_default = true,
          styles = {
            comments = "NONE",
            functions = "NONE",
            keywords = "NONE",
            variables = "NONE",
            conditionals = "NONE",
            constants = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
          },
          inverse = { match_paren = false, visual = false, search = false },
          darken = { floats = true, sidebars = { enable = true, list = {} } },
        },
      })
      vim.cmd("colorscheme github_dark_colorblind")
    end,
  },

  { "kepano/flexoki-neovim" },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      -- Default options:
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = false,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {
          SignColumn = { bg = "#ff9900" },
        },
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    -- config = function()
    --   require('catppuccin').setup {
    --     no_italic = true,
    --     term_colors = true,
    --     transparent_background = false,
    --     -- styles = {
    --     --   comments = {},
    --     --   conditionals = {},
    --     --   loops = {},
    --     --   functions = {},
    --     --   keywords = {},
    --     --   strings = {},
    --     --   variables = {},
    --     --   numbers = {},
    --     --   booleans = {},
    --     --   properties = {},
    --     --   types = {},
    --     -- },
    --     -- color_overrides = {
    --     --   mocha = {
    --     --     base = '#000000',
    --     --     mantle = '#000000',
    --     --     crust = '#000000',
    --     --   },
    --     -- },
    --     -- integrations = {
    --     --   telescope = {
    --     --     enabled = true,
    --     --     style = 'nvchad',
    --     --   },
    --     --   dropbar = {
    --     --     enabled = true,
    --     --     color_mode = true,
    --     --   },
    --     -- },
    --     -- diagnostics = {
    --     --   -- Match your theme's colors
    --     --   underline_error = { undercurl = true, sp = '#ff2d00' },
    --     --   underline_warn = { undercurl = true, sp = '#ffb86c' },
    --     --   underline_info = { undercurl = true, sp = '#8be9fd' },
    --     --   underline_hint = { undercurl = true, sp = '#50fa7b' },
    --     -- },
    --   }
    --   vim.cmd.colorscheme 'catppuccin' -- Set the theme
    -- end,
  },
}
