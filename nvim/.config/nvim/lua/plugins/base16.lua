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
      -- matugen.setup() already ends with _apply_transparency().
      vim.api.nvim_create_autocmd('User', {
        pattern = 'VeryLazy',
        once = true,
        callback = function()
          local ok2, m2 = pcall(require, 'matugen')
          if ok2 then
            m2.setup()
          elseif _G._apply_transparency then
            _G._apply_transparency()
          end
        end,
      })
    end,
  },
  -- Keep LazyVim's default colorscheme; base16/matugen is re-applied
  -- on VeryLazy above so it wins without breaking :colorscheme lookup.
  -- Transparent statusline to match the transparent background.
  -- Only the mode pill (a) keeps a solid bg; b/c/x/y stay clear so
  -- terminal blur shows through. Lualine re-creates its highlights on
  -- every mode change, so a theme (not a one-time :highlight) is needed.
  {
    'nvim-lualine/lualine.nvim',
    optional = true,
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = {
        normal = {
          a = { fg = '#131317', bg = '#c0c1ff', gui = 'bold' },
          b = { fg = '#e4e1e8', bg = 'NONE' },
          c = { fg = '#c7c5d2', bg = 'NONE' },
          x = { fg = '#c7c5d2', bg = 'NONE' },
          y = { fg = '#e4e1e8', bg = 'NONE' },
          z = { fg = '#131317', bg = '#c0c1ff', gui = 'bold' },
        },
        insert = {
          a = { fg = '#131317', bg = '#c4c3e5', gui = 'bold' },
          b = { fg = '#e4e1e8', bg = 'NONE' },
          c = { fg = '#c7c5d2', bg = 'NONE' },
          x = { fg = '#c7c5d2', bg = 'NONE' },
          y = { fg = '#e4e1e8', bg = 'NONE' },
          z = { fg = '#131317', bg = '#c4c3e5', gui = 'bold' },
        },
        visual = {
          a = { fg = '#131317', bg = '#f9afeb', gui = 'bold' },
          b = { fg = '#e4e1e8', bg = 'NONE' },
          c = { fg = '#c7c5d2', bg = 'NONE' },
          x = { fg = '#c7c5d2', bg = 'NONE' },
          y = { fg = '#e4e1e8', bg = 'NONE' },
          z = { fg = '#131317', bg = '#f9afeb', gui = 'bold' },
        },
        replace = {
          a = { fg = '#131317', bg = '#ffb4ab', gui = 'bold' },
          b = { fg = '#e4e1e8', bg = 'NONE' },
          c = { fg = '#c7c5d2', bg = 'NONE' },
          x = { fg = '#c7c5d2', bg = 'NONE' },
          y = { fg = '#e4e1e8', bg = 'NONE' },
          z = { fg = '#131317', bg = '#ffb4ab', gui = 'bold' },
        },
        command = {
          a = { fg = '#131317', bg = '#c0c1ff', gui = 'bold' },
          b = { fg = '#e4e1e8', bg = 'NONE' },
          c = { fg = '#c7c5d2', bg = 'NONE' },
          x = { fg = '#c7c5d2', bg = 'NONE' },
          y = { fg = '#e4e1e8', bg = 'NONE' },
          z = { fg = '#131317', bg = '#c0c1ff', gui = 'bold' },
        },
        terminal = {
          a = { fg = '#131317', bg = '#c4c3e5', gui = 'bold' },
          b = { fg = '#e4e1e8', bg = 'NONE' },
          c = { fg = '#c7c5d2', bg = 'NONE' },
          x = { fg = '#c7c5d2', bg = 'NONE' },
          y = { fg = '#e4e1e8', bg = 'NONE' },
          z = { fg = '#131317', bg = '#c4c3e5', gui = 'bold' },
        },
        inactive = {
          a = { fg = '#918f9b', bg = 'NONE' },
          b = { fg = '#918f9b', bg = 'NONE' },
          c = { fg = '#918f9b', bg = 'NONE' },
          x = { fg = '#918f9b', bg = 'NONE' },
          y = { fg = '#918f9b', bg = 'NONE' },
          z = { fg = '#918f9b', bg = 'NONE' },
        },
      }
      opts.options.component_separators = ''
      opts.options.section_separators = ''
    end,
  },
}
