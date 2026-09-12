-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Transparent background: re-apply after every colorscheme change
-- so LazyVim / base16 / matugen updates don't restore an opaque bg.
-- NOTE: the real implementation lives in lua/matugen.lua (single source).
-- Only define a fallback here if matugen hasn't loaded yet.
if not _G._apply_transparency then
  function _G._apply_transparency()
    local transparent_groups = {
      -- core
      'Normal',
      'NormalNC',
      'NormalFloat',
      'FloatBorder',
      'FloatTitle',
      'SignColumn',
      'EndOfBuffer',
      'MsgArea',
      'MsgSeparator',
      'LineNr',
      'Folded',
      'NonText',
      'SpecialKey',
      'VertSplit',
      'WinSeparator',
      'StatusLine',
      'StatusLineNC',
      'TabLineFill',
      'TabLine',
      'Pmenu',
      'PmenuSel',
      'PmenuSbar',
      'PmenuThumb',
      'CursorLine',
      'CursorLineNr',
      'FoldColumn',
      -- telescope
      'TelescopeNormal',
      'TelescopeBorder',
      'TelescopePromptNormal',
      'TelescopePromptBorder',
      -- file tree / explorer
      'NeoTreeNormal',
      'NeoTreeNormalNC',
      'NeoTreeEndOfBuffer',
      'NeoTreeWinSeparator',
      'NvimTreeNormal',
      'NvimTreeNormalNC',
      'NvimTreeEndOfBuffer',
      -- snacks (LazyVim picker, dashboard, input, notifier)
      'SnackNormal',
      'SnackNormalNC',
      'SnacksNormal',
      'SnacksNormalNC',
      'SnacksPicker',
      'SnacksPickerBorder',
      'SnacksPickerTitle',
      'SnacksInputNormal',
      'SnacksInputBorder',
      'SnacksDashboardNormal',
      'SnacksNotifierHistory',
      'DashboardNormal',
      -- which-key / lazy / mason
      'WhichKeyFloat',
      'LazyNormal',
      'MasonNormal',
      -- completion (blink.cmp)
      'BlinkCmpMenu',
      'BlinkCmpMenuBorder',
      'BlinkCmpDoc',
      'BlinkCmpDocBorder',
      'BlinkCmpSignatureHelp',
      -- noice / notify
      'NoicePopup',
      'NoicePopupBorder',
      'NotifyBackground',
      -- git / diff
      'GitSignsAdd',
      'GitSignsChange',
      'GitSignsDelete',
    }
    for _, group in ipairs(transparent_groups) do
      -- Use :highlight (not nvim_set_hl) so we only clear the background
      -- and preserve fg / bold / italic from base16 / matugen.
      pcall(vim.cmd, 'highlight ' .. group .. ' guibg=NONE ctermbg=NONE')
    end
  end
end

vim.api.nvim_create_augroup('TransparentBackground', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
  group = 'TransparentBackground',
  callback = function()
    _G._apply_transparency()
  end,
})
-- Also apply on startup, after LazyVim sets its colorscheme.
vim.api.nvim_create_autocmd('VimEnter', {
  group = 'TransparentBackground',
  callback = function()
    _G._apply_transparency()
    -- re-apply after lazy plugins (snacks, blink, lualine) load
    vim.schedule(_G._apply_transparency)
  end,
})
vim.api.nvim_create_autocmd('User', {
  group = 'TransparentBackground',
  pattern = 'VeryLazy',
  callback = function()
    _G._apply_transparency()
  end,
})
