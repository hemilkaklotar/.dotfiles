return {
  {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local ok, matugen = pcall(require, 'matugen')
      if ok then
        matugen.setup()
      end
      if _G._apply_transparency then
        _G._apply_transparency()
      end
      -- LazyVim sets its own colorscheme (tokyonight) after plugins load,
      -- so re-apply matugen last to make base16 win.
      vim.api.nvim_create_autocmd('User', {
        pattern = 'VeryLazy',
        once = true,
        callback = function()
          local ok2, m2 = pcall(require, 'matugen')
          if ok2 then
            m2.setup()
          end
        end,
      })
    end,
  },
  -- Keep LazyVim's default colorscheme; base16/matugen is re-applied
  -- on VeryLazy above so it wins without breaking :colorscheme lookup.
  -- Transparent statusline to match the transparent background.
  {
    'nvim-lualine/lualine.nvim',
    optional = true,
    opts = {
      options = {
        theme = 'auto',
        component_separators = '',
        section_separators = '',
      },
    },
  },
}
