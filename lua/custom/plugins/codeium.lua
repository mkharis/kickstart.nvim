return {
  'Exafunction/codeium.vim',
  lazy = false,
  config = function()
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })
    if vim.fn.system { 'uname', '-m' } == 'aarch64\n' then
      vim.g.codeium_bin = '/data/data/com.termux/files/home/.codeium-lsp-proot'
    end
  end,
}
