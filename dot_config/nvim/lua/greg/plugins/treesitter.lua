local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "html",
    "css",
    "scss",
    "php",
    "twig",
    "sql",
    "javascript",
    "typescript",
    "tsx",
    "svelte",
    "vue",
    "swift",
    "json",
    "yaml",
    "toml",
    "markdown",
    "markdown_inline",
    "graphql",
    "prisma",
    "bash",
    "vim",
    "lua",
    "dockerfile",
    "gitignore",
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  },
  auto_install = true,
})
