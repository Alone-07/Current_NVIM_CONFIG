require('mini.indentscope').setup(

  {
    options = {
      try_as_border = true,
    },
    symbol = "│",
  }
)

vim.opt.list = true
vim.opt.listchars:append "space: "
vim.opt.listchars:append "eol:↴"
