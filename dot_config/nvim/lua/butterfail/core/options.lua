local opt = vim.opt

opt.encoding = "UTF-8"
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.expandtab = true -- expand tab to spaces
opt.smartindent = true -- Insert indents automatically
opt.wrap = false -- disable line wrapping
opt.cursorline = true -- highlight the current cursor line
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
opt.swapfile = false
opt.mouse = "a"
opt.autoread = true
opt.list = true
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.listchars:append("eol:↴")
opt.signcolumn = "yes"
opt.completeopt = { "menu", "menuone", "noselect" }
opt.confirm = true -- Confirm before closing an unsaved buffer
opt.autowrite = true
opt.winbar = ""
