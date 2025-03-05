local gopher = require("gopher")

gopher.setup({
  commands = {
    go = "go",
    gomodifytags = "gomodifytags",
    gotests = "gotests",
    impl = "impl",
    iferr = "iferr",
    dlv = "dlv",
  },
  gotests = {
    template = "default",
    template_dir = nil,
    named = false,
  },
  gotag = {
    transform = "snakecase",
  },
})