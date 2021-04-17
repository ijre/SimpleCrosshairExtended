SCrosshair = SCrosshair or
{
  Ext = { },
  Enabled = true,
  Visible = true
}

local base = ModPath
-- local base = ModPath .. "Simple Crosshair Extended/"
SCrosshair.Paths =
{
  Base = base,
  Ext = base .. "Extensions/"
}

function SCrosshair.Ext:ShouldShow()
  return SCrosshair.Enabled and SCrosshair.Visible
end

if RequiredScript then
  local requiredScript = RequiredScript:lower()

  if requiredScript == "lib/managers/hud/hudhitconfirm" then
    dofile(SCrosshair.Paths.Base .. "HudHitConfirm.lua")
  end
end