local M = {}

function M.setup()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  local lazy_version = "v9.18.1"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=" .. lazy_version, -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup({ { import = "butterfail.plugins" } }, {
    checker = { enabled = true },
    performance = {
      cache = { enabled = true },
    },
    debug = false,
  })

  require("butterfail.core")
end

return M
