return {
  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup {
        options = {},
      }

      -- Set the theme
      vim.cmd 'colorscheme github_dark_colorblind'
    end,
  },
  {
    'webhooked/kanso.nvim',
  },
  -- {
  --   'metalelf0/black-metal-theme-neovim',
  --   lazy = false,
  --   priority = 1000,
  --   -- config = function()
  --   --   require('black-metal').setup {
  --   --     -----MAIN OPTIONS-----
  --   --     --
  --   --     -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | venom
  --   --     theme = 'bathory',
  --   --     -- Can be one of: 'light' | 'dark', or set via vim.o.background
  --   --     variant = 'dark',
  --   --     -- Use an alternate, darker bg
  --   --     alt_bg = false,
  --   --     -- If true, docstrings will be highlighted like strings, otherwise they will be
  --   --     -- highlighted like comments. Note, behavior is dependent on the language server.
  --   --     colored_docstrings = true,
  --   --     -- If true, highlights the {sign,fold} column the same as cursorline
  --   --     cursorline_gutter = true,
  --   --     -- If true, highlights the gutter darker than the bg
  --   --     dark_gutter = false,
  --   --     -- if true favor treesitter highlights over semantic highlights
  --   --     favor_treesitter_hl = false,
  --   --     -- Don't set background of floating windows. Recommended for when using floating
  --   --     -- windows with borders.
  --   --     plain_float = false,
  --   --     -- Show the end-of-buffer character
  --   --     show_eob = true,
  --   --     -- If true, enable the vim terminal colors
  --   --     term_colors = true,
  --   --     -- Keymap (in normal mode) to toggle between light and dark variants.
  --   --     toggle_variant_key = nil,
  --   --     -- Don't set background
  --   --     transparent = false,
  --   --
  --   --     -----DIAGNOSTICS and CODE STYLE-----
  --   --     --
  --   --     diagnostics = {
  --   --       darker = true, -- Darker colors for diagnostic
  --   --       undercurl = false, -- Use undercurl for diagnostics
  --   --       background = true, -- Use background color for virtual text
  --   --     },
  --   --     -- The following table accepts values the same as the `gui` option for normal
  --   --     -- highlights. For example, `bold`, `italic`, `underline`, `none`.
  --   --     code_style = {
  --   --       comments = 'italic',
  --   --       conditionals = 'none',
  --   --       functions = 'none',
  --   --       keywords = 'none',
  --   --       headings = 'bold', -- Markdown headings
  --   --       operators = 'none',
  --   --       keyword_return = 'none',
  --   --       strings = 'none',
  --   --       variables = 'none',
  --   --     },
  --   --
  --   --     -----PLUGINS-----
  --   --     --
  --   --     -- The following options allow for more control over some plugin appearances.
  --   --     plugin = {
  --   --       lualine = {
  --   --         -- Bold lualine_a sections
  --   --         bold = true,
  --   --         -- Don't set section/component backgrounds. Recommended to not set
  --   --         -- section/component separators.
  --   --         plain = false,
  --   --       },
  --   --       cmp = { -- works for nvim.cmp and blink.nvim
  --   --         -- Don't highlight lsp-kind items. Only the current selection will be highlighted.
  --   --         plain = false,
  --   --         -- Reverse lsp-kind items' highlights in blink/cmp menu.
  --   --         reverse = false,
  --   --       },
  --   --     },
  --   --
  --   --     -- CUSTOM HIGHLIGHTS --
  --   --     --
  --   --     -- Override default colors
  --   --     colors = {
  --   --       diag_red = '#ff2d00',
  --   --       diag_blue = '#00FFFF',
  --   --       diag_yellow = '#bab500',
  --   --       diag_green = '#3903bf',
  --   --     },
  --   --
  --   --     -- Override highlight groups
  --   --     highlights = {},
  --   --   }
  --   --   -- Convenience function that simply calls `:colorscheme <theme>` with the theme
  --   --   -- specified in your config.
  --   --   require('black-metal').load()
  --   -- end,
  --   -- },
  -- },
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
