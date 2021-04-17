SC = SC or
{
  Ext = { },
  Enabled = true,
  Visible = true
}

local base = ModPath
-- local base = ModPath .. "Simple Crosshair Extended/"
SC.Paths =
{
  Base = base,
  Ext = base .. "Extensions/"
}

function SC.Ext:ShouldShow()
  return SC.Enabled and SC.Visible
end

dofile(SC.Paths.Base .. "HudHitConfirm.lua")