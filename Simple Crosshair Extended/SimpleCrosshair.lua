SCrosshair = SCrosshair or { }
SCrosshair.Ext = SCrosshair.Ext or { }

local base = ModPath
-- local base = ModPath .. "Simple CrossHair Extended/"
SCrosshair.Paths =
{
  Base = base,
  Ext = base .. "Extensions/"
}

SCrosshair.Enabled = true
SCrosshair.Visible = true

function SCrosshair.Ext:ShouldShow()
  return SCrosshair.Enabled and SCrosshair.Visible
end

if RequiredScript then
  local requiredScript = RequiredScript:lower()

  if requiredScript == "lib/managers/hud/hudhitconfirm" then
    dofile(SCrosshair.Paths.Base .. "HudHitConfirm.lua")
  end
end