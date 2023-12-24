return {
  "nvim-treesitter/nvim-treesitter",
  version = "0.9.1",
  config = function()
    local ts = require("nvim-treesitter.configs")

    ts.setup({
      enable = true,
      ensure_installed = {
        "astro",
        "bash",
        "cpp",
        "c",
        "css",
        "dockerfile",
        "elixir",
        "elm",
        "go",
        "graphql",
        "html",
        "java",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "php",
        "python",
        "ruby",
        "rust",
        "scss",
        "sql",
        "svelte",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      },
      -- context_commentstring = {
      --   enable = true
      -- },
      ignore_install = { "phpdoc" },
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
    })
  end,
}
