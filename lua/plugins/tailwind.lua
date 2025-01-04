return {
  -- Tailwind CSS LSP configuration
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local lspconfig = require("lspconfig")
      lspconfig.tailwindcss.setup({})
    end,
  },

  -- Colorizer configuration
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = function()
      require("colorizer").setup({
        filetypes = { "css", "scss", "html", "javascript", "typescriptreact", "javascriptreact" },
        user_default_options = {
          tailwind = true,
          mode = "background", -- Set color mode to background for better visibility
        },
      })
    end,
  },
}
