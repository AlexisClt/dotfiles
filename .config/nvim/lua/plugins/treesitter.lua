return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Ensures treesitter is installed/updated
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = { "cpp", "python", "lua", "rust" },
      sync_install = false,
      auto_install = true,
      ignore_install = { "javascript" },
      modules = {},
    })
  end,
}
