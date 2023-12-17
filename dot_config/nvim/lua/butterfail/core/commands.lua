-- AUTO COMMANDS
local function augroup(name)
  return vim.api.nvim_create_augroup("custom_au_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})
