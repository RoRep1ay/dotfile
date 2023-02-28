return {
  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' }, opts = function()
    require('telescope').setup {
      pickers = {
        buffers = {
          show_all_buffers = true,
          sort_lastused = true,
          previewer = false,
          mappings = {
            i = { ["<c-d>"] = "delete_buffer" }
          }
        }
      },
      defaults = {
        layout_strategy = "vertical",
        -- path_display = {
        --   shorten = {
        --     len = 3, exclude = { 0, -1, -2, -3 }
        --   },
        --   truncate = 3,
        -- },
        layout_config = {
          width = 0.9,
          height = 0.9,
          -- prompt_position = "top",
          -- preview_cutoff = 120,
          -- horizontal = {
          --   mirror = false
          -- },
          -- vertical = {
          --   mirror = false,
          -- },
        },
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
    }
    require('telescope').load_extension('fzf')

    end
  },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1},
}
