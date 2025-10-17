return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine_enabled = true

    function ToggleLualine()
      if lualine_enabled then
        require('lualine').hide { unhide = false }
        lualine_enabled = false
      else
        require('lualine').hide { unhide = true }
        lualine_enabled = true
      end
    end

    -- Set keymap to toggle Lualine (change <leader>tl as needed)
    vim.keymap.set('n', '<leader>tl', ToggleLualine, { noremap = true, silent = true, desc = 'Toggle Lualine' })

    -- Your existing setup
    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str
      end,
    }

    local filename = {
      'filename',
      file_status = true,
      path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path, 3 = absolute path with ~ for home
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' },
      cond = hide_in_width,
    }

    -- Custom VS Code-like theme with mode-specific colors
    local vscode_theme = {
      normal = {
        a = { bg = '#006161', fg = '#ffffff', gui = 'bold' },
        b = { bg = '#006161', fg = '#ffffff' },
        c = { bg = '#006161', fg = '#ffffff' },
        x = { bg = '#006161', fg = '#ffffff' },
        y = { bg = '#006161', fg = '#ffffff' },
        z = { bg = '#006161', fg = '#ffffff', gui = 'bold' },
      },
      insert = {
        a = { bg = '#530000', fg = '#ffffff', gui = 'bold' },
        b = { bg = '#530000', fg = '#ffffff' },
        c = { bg = '#530000', fg = '#ffffff' },
        x = { bg = '#530000', fg = '#ffffff' },
        y = { bg = '#530000', fg = '#ffffff' },
        z = { bg = '#530000', fg = '#ffffff', gui = 'bold' },
      },
      visual = {
        a = { bg = '#6a0dad', fg = '#ffffff', gui = 'bold' },
        b = { bg = '#6a0dad', fg = '#ffffff' },
        c = { bg = '#6a0dad', fg = '#ffffff' },
        x = { bg = '#6a0dad', fg = '#ffffff' },
        y = { bg = '#6a0dad', fg = '#ffffff' },
        z = { bg = '#6a0dad', fg = '#ffffff', gui = 'bold' },
      },
      replace = {
        a = { bg = '#ff6600', fg = '#ffffff', gui = 'bold' },
        b = { bg = '#ff6600', fg = '#ffffff' },
        c = { bg = '#ff6600', fg = '#ffffff' },
        x = { bg = '#ff6600', fg = '#ffffff' },
        y = { bg = '#ff6600', fg = '#ffffff' },
        z = { bg = '#ff6600', fg = '#ffffff', gui = 'bold' },
      },
      command = {
        a = { bg = '#0066cc', fg = '#ffffff', gui = 'bold' },
        b = { bg = '#0066cc', fg = '#ffffff' },
        c = { bg = '#0066cc', fg = '#ffffff' },
        x = { bg = '#0066cc', fg = '#ffffff' },
        y = { bg = '#0066cc', fg = '#ffffff' },
        z = { bg = '#0066cc', fg = '#ffffff', gui = 'bold' },
      },
      inactive = {
        a = { bg = '#404040', fg = '#ffffff' },
        b = { bg = '#404040', fg = '#ffffff' },
        c = { bg = '#404040', fg = '#ffffff' },
        x = { bg = '#404040', fg = '#ffffff' },
        y = { bg = '#404040', fg = '#ffffff' },
        z = { bg = '#404040', fg = '#ffffff' },
      },
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = vscode_theme,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'neo-tree' },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { 'branch' },
        lualine_c = { filename },
        lualine_x = { diagnostics, diff, { 'encoding', cond = hide_in_width }, { 'filetype', cond = hide_in_width } },
        lualine_y = { 'location' },
        lualine_z = { 'progress' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}

