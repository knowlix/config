require("CopilotChat").setup {
  -- See Configuration section for options
  -- model = "gpt-5",
  temperature = 0.2,
  auto_insert_mode = true,
  window = {
    layout = "float",
    border = "rounded",
    width = 0.8,
    height = 0.8,
    zindex = 100,
  },
  headers = {
    user = "👤 You",
    assistant = '🤖 Copilot',
    tool = '🔧 Tool',
  },
  auto_fold = true,
}

-- Auto-command to customize chat buffer behavior
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = 'copilot-*',
  callback = function()
    vim.opt_local.relativenumber = false
    vim.opt_local.number = false
    vim.opt_local.conceallevel = 0
  end,
})
