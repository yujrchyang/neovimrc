local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local lint = require("lint")

-- Configure linters
lint.linters_by_ft = {
  sh = { "shellcheck" },
  python = { "ruff" },
}

-- Auto format on save (optional)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    if vim.bo.filetype ~= "" then
      vim.lsp.buf.format({ async = true })
    end
  end,
})

-- Auto lint on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*",
  callback = function()
    require("lint").try_lint()
  end,
})

-- Ensure LSP servers are installed
mason_lspconfig.setup({
  ensure_installed = {
    "clangd",
    "bashls",
    "pyright",
    "gopls",
    "rust_analyzer",
    "cmake",
    "dockerls",
    "yamlls",
  },

  handlers = {
    function(server_name)
      lspconfig[server_name].setup({})
    end,

    pyright = function()
      lspconfig.pyright.setup({
        settings = {
          python = {
            analysis = { typeCheckingMode = "basic" }
          }
        }
      })
    end,

    bashls = function()
      lspconfig.bashls.setup({
        filetypes = { "sh", "bash", "zsh" }
      })
    end,
  }
})
