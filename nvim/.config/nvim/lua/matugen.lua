 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#000000',
    base01 = '#131318',
    base02 = '#1d1d21',
    base03 = '#918f9b',
    base04 = '#c7c5d2',
    base05 = '#e4e1e8',
    base06 = '#e4e1e8',
    base07 = '#e4e1e8',
    base08 = '#ffb4ab',
    base09 = '#f9afeb',
    base0A = '#c4c3e5',
    base0B = '#c0c1ff',
    base0C = '#f9afeb',
    base0D = '#c0c1ff',
    base0E = '#c4c3e5',
    base0F = '#e1e0ff',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#e4e1e8',          bg = '#000000' })
  hi('TelescopeBorder',         { fg = '#918f9b',             bg = '#000000' })
  hi('TelescopePromptNormal',   { fg = '#e4e1e8',          bg = '#000000' })
  hi('TelescopePromptBorder',   { fg = '#918f9b',             bg = '#000000' })
  hi('TelescopePromptPrefix',   { fg = '#c0c1ff',             bg = '#000000' })
  hi('TelescopePromptCounter',  { fg = '#c7c5d2',  bg = '#000000' })
  hi('TelescopePromptTitle',    { fg = '#000000',             bg = '#c0c1ff' })
  hi('TelescopePreviewTitle',   { fg = '#000000',             bg = '#c4c3e5' })
  hi('TelescopeResultsTitle',   { fg = '#000000',             bg = '#f9afeb' })
  hi('TelescopeSelection',      { fg = '#e4e1e8',          bg = '#1d1d21' })
  hi('TelescopeSelectionCaret', { fg = '#c0c1ff',             bg = '#1d1d21' })
  hi('TelescopeMatching',       { fg = '#c0c1ff',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#e4e1e8',          bg = '#000000' })
  hi('MiniPickBorder',         { fg = '#918f9b',             bg = '#000000' })
  hi('MiniPickPrompt',   { fg = '#e4e1e8',          bg = '#000000' })
  hi('MiniPickPromptPrefix',   { fg = '#c0c1ff',             bg = '#000000' })
  hi('MiniPickBorderText',    { fg = '#000000',             bg = '#c0c1ff' })
  hi('MiniPickMatchCurrent',      { fg = '#e4e1e8',          bg = '#1d1d21' })
  hi('MiniPickPromptCaret', { fg = '#c0c1ff',             bg = '#1d1d21' })
  hi('MiniPickMatchRanges',       { fg = '#c0c1ff',             bold = true })
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
