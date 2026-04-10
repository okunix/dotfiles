return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  lazy = false,
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
    preset = 'none', -- start from scratch so nothing conflicts

    ['<C-b>']     = { 'scroll_documentation_up', 'fallback' },
    ['<C-f>']     = { 'scroll_documentation_down', 'fallback' },
    ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    ['<C-e>']     = { 'hide', 'fallback' },
    ['<CR>']      = { 'select_and_accept', 'fallback' },  -- accepts top item (select = true equivalent)
    ['<C-j>']     = { 'select_next', 'fallback' },
    ['<C-k>']     = { 'select_prev', 'fallback' },
    ['<S-k>']     = { 'show_documentation', 'hide_documentation' },

    -- keep tab/completion cycling if you want it, otherwise remove
    ['<Tab>']     = { 'snippet_forward', 'fallback' },
    ['<S-Tab>']   = { 'snippet_backward', 'fallback' },
  },

  completion = {
    list = {
      selection = {
        preselect = true,   -- auto-select the first item
        auto_insert = true, -- insert as you navigate
      },
    },
    documentation = {
      auto_show = true,           -- show docs automatically on hover
      auto_show_delay_ms = 200,
    },
  },

    appearance = {
      nerd_font_variant = 'mono',
    },


    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
  config = function()
    require("config.plugins.blinkcmp")
  end
}
