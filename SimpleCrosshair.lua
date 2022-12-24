local base = ModPath

SC = SC or { }
local Ext = SC.Ext or
{
  Settings =
  {
    Enabled = true,
    Visible = true
  },

  Paths =
  {
    Base = base,
    Ext = base .. "Extensions/",
    Save = SavePath .. "SC-E.txt"
  }
}
SC.Ext = Ext

dofile(SC.Ext.Paths.Ext .. "settings.lua")
dofile(SC.Ext.Paths.Base .. "HudHitConfirm.lua")

Ext.Settings:Load()