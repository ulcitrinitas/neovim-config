return {
    {
            "mason-org/mason.nvim",
            opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
            config = function ()
                require("mason").setup()
            end
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        config = function ()
                require("mason-lspconfig").setup {
                    ensure_installed = { "lua_ls", "rust_analyzer", "clangd" }
                }
            end,
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lsp_config = vim.lsp.config

            lsp_config('rust_analyzer', {
                -- Server-specific settings. See `:help lsp-quickstart`
                settings = {
                    ['rust-analyzer'] = {},
                },
            })
            lsp_config("lua_ls", {
                settings = {
                    ["lua_ls"] = {}
                }
            })
            lsp_config("clangd", {
                settings = {
                    ["clangd"] = {}
                }
            })
            -- keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        end
    }
}



