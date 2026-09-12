 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#121318',
    base01 = '#1e1f25',
    base02 = '#292a2f',
    base03 = '#8f909a',
    base04 = '#c5c6d0',
    base05 = '#e3e2e9',
    base06 = '#e3e2e9',
    base07 = '#e3e2e9',
    base08 = '#ffb4ab',
    base09 = '#e1bbdc',
    base0A = '#c0c6dd',
    base0B = '#b2c5ff',
    base0C = '#e1bbdc',
    base0D = '#b2c5ff',
    base0E = '#c0c6dd',
    base0F = '#dce2f9',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e3e2e9',          bg = '#121318' })
  hi('TelescopeBorder',         { fg = '#8f909a',             bg = '#121318' })
  hi('TelescopePromptNormal',   { fg = '#e3e2e9',          bg = '#121318' })
  hi('TelescopePromptBorder',   { fg = '#8f909a',             bg = '#121318' })
  hi('TelescopePromptPrefix',   { fg = '#b2c5ff',             bg = '#121318' })
  hi('TelescopePromptCounter',  { fg = '#c5c6d0',  bg = '#121318' })
  hi('TelescopePromptTitle',    { fg = '#121318',             bg = '#b2c5ff' })
  hi('TelescopePreviewTitle',   { fg = '#121318',             bg = '#c0c6dd' })
  hi('TelescopeResultsTitle',   { fg = '#121318',             bg = '#e1bbdc' })
  hi('TelescopeSelection',      { fg = '#e3e2e9',          bg = '#292a2f' })
  hi('TelescopeSelectionCaret', { fg = '#b2c5ff',             bg = '#292a2f' })
  hi('TelescopeMatching',       { fg = '#b2c5ff',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
