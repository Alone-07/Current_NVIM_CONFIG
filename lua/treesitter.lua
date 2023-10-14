require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript", "typescript","html", "css", "vue", "rust", "c", "lua","vim" , "python"},
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
          "#cc241d",
          "#a89984",
          "#b16286",
          "#d79921",
          "#689d6a",
          "#d65d0e",
          "#458588",
    }, -- table of hex strings
    termcolors = {
        "Red",
        "Green",
        "Yellow",
        "Blue",
        "Magenta",
        "Cyan",
        "White",
    } -- table of colour name strings
  },
  autotag =  {
    enable = true,
    filetypes =  {"html"}
  }
}


