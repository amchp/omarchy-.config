local Plugin = {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
        init = function()
            -- Disable automatic setup, we are doing it manually
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end,
    },
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' },
                },
                mapping = {
                    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
                    ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
                    ['<C-p>'] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_prev_item({ behavior = 'insert' })
                        else
                            cmp.complete()
                        end
                    end),
                    ['<C-n>'] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_next_item({ behavior = 'insert' })
                        else
                            cmp.complete()
                        end
                    end),
                },
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
            })
        end
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        config = function()
            -- This is where all the LSP shenanigans will live
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(client, bufnr)
                local set = vim.keymap.set
                local buf = vim.lsp.buf
                local opts = { buffer = bufnr, silent = true }
                vim.wo.signcolumn = 'yes';
                set("n", "<c-t>", buf.hover, opts)
                set("n", "<leader>zd", buf.definition, opts)
                set("n", "<leader>zi", buf.implementation, opts)
                set("n", "<leader>zt", buf.type_definition, opts)
                set("n", "<leader>zr", buf.references, opts)
                set("v", "<leader>r", buf.format, opts)
                set("n", "<leader>rf", buf.format, opts)
                set({ "n", "v" }, "<leader>za", buf.code_action, opts)
                set("n", "<c-e>", require("renamer").rename, { noremap = true, silent = true })
                set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
            end)

            vim.diagnostic.config({
              virtual_text = true,
              signs        = true,
              underline    = true,
              update_in_insert = false,
            })
            vim.diagnostic.config({
                virtual_text = {
                spacing = 4,
                prefix  = '●',
              },
            })


            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "clangd",
                    "rust_analyzer",
                    "gopls",
                },
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        -- (Optional) Configure lua language server for Neovim
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,
                }
            })
        end
    }
}

return Plugin
