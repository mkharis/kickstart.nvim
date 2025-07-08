if vim.fn.system { 'uname', '-m' } == 'aarch64\n' then
  return {
    'Exafunction/windsurf.vim',
    lazy = false,
    config = function()
      vim.keymap.set('i', '<C-g>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-x>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true, silent = true })
      vim.g.codeium_bin = '/data/data/com.termux/files/home/.codeium-lsp-proot'
    end,
  }
else
  return {
    'Exafunction/windsurf.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {
        enble_cmp_source = false,
        virtual_text = {
          enabled = true,
          key_bindings = {
            accept = '<C-g>',
            clear = '<C-x>',
          },
        },
      }
    end,
  }
end
