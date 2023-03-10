return {
  { 'ggandor/leap.nvim', event = 'BufReadPre', dependencies = { 'tpope/vim-repeat' }, opts = function ()
    require('leap').add_default_mappings()
  end }
}
