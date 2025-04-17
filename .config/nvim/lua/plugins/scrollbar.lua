return {
  'petertriho/nvim-scrollbar',
  config = function()
    require('scrollbar').setup {
      handle = {
        color = '#85929e',
      },
      marks = {
        Error = { color = '#ff2d00' },
        Info = { color = '#0064FF' },
        Hint = { color = '#00FFFF' },
        Misc = { color = '#3903bf' },
      },
    }

    -- Optional: scrollbar handlers for diagnostics, search, etc.
    -- require('scrollbar.handlers.search').setup()
    require('scrollbar.handlers.gitsigns').setup()
    require('scrollbar.handlers.diagnostic').setup()
  end,
}
