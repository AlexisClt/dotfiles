return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",     -- LSP source
    "hrsh7th/cmp-buffer",       -- Buffer source
    "hrsh7th/cmp-path",         -- Path source
    "L3MON4D3/LuaSnip",         -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- Snippet completions
    "hrsh7th/cmp-nvim-lua",     -- Lua completion source
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body) -- Enable snippets
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),        -- Tab to cycle forward
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),      -- Shift+Tab to cycle backward
        ["<C-Space>"] = cmp.mapping.complete(),            -- Manual completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Use LSP as completion source
        { name = "luasnip" },  -- Use snippets
        { name = "buffer" },   -- Use words from open buffers
        { name = "path" },     -- Path completions
        { name = "nvim_lua" }, -- Lua completion source
      }),
    })

    -- Ensure LSP capabilities include completion support
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Attach capabilities to clangd
    require("lspconfig").clangd.setup({
      capabilities = capabilities,
    })

    -- Lua language server configuration (sumneko_lua)
    require("lspconfig").lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT", -- Assuming LuaJIT for Neovim
          },
          diagnostics = {
            globals = { "vim" }, -- Prevents diagnostic warnings about 'vim'
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true), -- Include Neovim's runtime in the workspace
          },
        },
      },
    })

    -- Python language server configuration (Pyright)
    require("lspconfig").pyright.setup({
      capabilities = capabilities,
    })
  end,
}
