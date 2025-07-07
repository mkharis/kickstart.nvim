if vim.fn.system { 'uname', '-m' } == 'aarch64\n' then
  return {}
else
  return {
    'saghen/blink.cmp',
    dependencies = {
      {
        'Exafunction/windsurf.nvim',
      },
    },
    opts = {
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'codeium' },
        providers = {
          codeium = { name = 'Codeium', module = 'codeium.blink', async = true },
        },
      },
    },
  }
end
