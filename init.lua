-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Luasnip
require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/lua/snippets" })

vim.cmd("language en_US")
