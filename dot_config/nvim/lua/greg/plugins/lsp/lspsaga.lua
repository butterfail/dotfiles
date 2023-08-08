local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

saga.setup({
  scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
  -- use enter to open file with definition preview
  definition = {
    edit = "<CR>",
  },
  ui = {
    border = 'rounded',
    colors = {
      normal_bg = "#022746",
    },
  },
  symbol_in_winbar = {
    enable = false
  },
  lightbulb = {
    enable = false
  },
  outline = {
    layout = 'float'
  }
})
