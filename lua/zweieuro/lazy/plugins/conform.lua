return {
    'stevearc/conform.nvim',
    opts = {},

        keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                rust = { "rustfmt" }
            },format_on_save = {
    -- I recommend these options. See :help conform.format for details.
    lsp_format = "fallback",
    timeout_ms = 500,
  }
        })
    end
}

