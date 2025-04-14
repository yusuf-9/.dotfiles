return {
    'mg979/vim-visual-multi',
    branch = 'master',
    init = function()
      vim.g.VM_theme = 'purplegray' -- Cursor highlight color theme
      vim.g.VM_highlight_matches = 'underline' -- How matches are highlighted
  
      -- Key mappings
      vim.g.VM_maps = {
        -- Find word under cursor (start multi-cursor)
        ['Find Under'] = '<C-d>',
        -- Find next occurrence (add to selection)
        ['Find Next'] = 'n',
        -- Skip next occurrence
        ['Find Prev'] = 'N',
        -- Remove current cursor
        ['Skip Region'] = 'q',
        -- Exit multi-cursor mode
        ['Exit'] = '<Esc>',
        ['Visual Add'] = '<C-d>', -- reuse <C-d> in visual mode
      }
  
      -- Disable default mappings we don't want
      vim.g.VM_default_mappings = 0
  
      -- Custom settings
      vim.g.VM_silent_exit = 1 -- No message when exiting
      vim.g.VM_show_warnings = 0 -- Don't show warnings
      vim.g.VM_mouse_mappings = 1 -- Enable mouse support
      vim.g.VM_case_setting = 'smart' -- Smart case sensitivity
  
      -- Additional highlight groups
      vim.cmd [[
        hi VM_Extend guibg=#5e5079 guifg=#ffffff gui=none
        hi VM_Cursor guibg=#b5a1dd guifg=#000000 gui=none
        hi VM_Insert guibg=#ff0000 guifg=#ffffff gui=none
        hi VM_Mono guifg=#ffffff guibg=#5e5079 gui=none
      ]]
    end,
    config = function()
      -- Custom key mappings for your workflow
      -- vim.api.nvim_set_keymap('n', '<leader>m', '<Plug>(VM-Find-Under)', { noremap = false })
  
      -- When in VM mode, allow normal mode commands to apply to all cursors
      -- vim.cmd [[
      --   function! VM_Start()
      --     let g:VM_initial_mappings = 1
      --     let g:VM_quit_after_leaving_insert_mode = 0
      --   endfunction
      --   autocmd User visual_multi_start call VM_Start()
      -- ]]
    end,
  }
  