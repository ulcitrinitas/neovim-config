require("config.options")
require("config.lazy")
require("config.keymaps")

vim.cmd [[ colorscheme catppuccin-mocha ]]

local ts_config = require('nvim-treesitter.configs')
ts_config.setup(
    {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "zig", "ruby" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        ident = { enable = true },
        additional_vim_regex_highlighting = false
    }
)

require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = dracula
    }
})

