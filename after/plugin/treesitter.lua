require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "markdown", "markdown_inline", "javascript", "typescript", "python", "commonlisp", "scala", "html", "vue" },

  sync_install = false,

  uto_install = true,

  highlight = {
    enable = true,
 },
}
