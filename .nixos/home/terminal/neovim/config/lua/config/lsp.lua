local lsp_zero = require("lsp-zero")
local config = require("lspconfig")
local cmp = require("cmp")

require("mason").setup({
    ensure_installed = {
        -- formatters
        "clang-format",
    },
})

require("mason-lspconfig").setup({
    ensure_installed = {
        -- LSPs
        "lua_ls",
        "clangd",
        "rust_analyzer",
    },
})

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

config.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

config.clangd.setup({
    init_options = {
        fallbackFlags = { "--std=c++20" },
    },
})

config.rust_analyzer.setup({})

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    preselect = "item",
    completion = {
        completeopt = "menu,menuone,noinsert",
    },
})
