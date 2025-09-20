return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" }, -- Optional but recommended
  config = function()
    require("claudecode").setup({
      auto_start = true,
      track_selection = true,
      focus_after_send = true,
    })
  end,
  keys = {
    { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>cf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    { "<leader>ca", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>cr", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Reject diff" },
  }
}
