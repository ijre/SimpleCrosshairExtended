local Set = SC.Ext.Settings
local saveP = SC.Ext.Paths.Save

function Set:Load()
  local file = io.open(saveP, "r")

  if file then
    self.Enabled = file:read("*a") == "on"

    file:close()
  else
    self:Save()
  end

  HUDHitConfirm.Ext:ForceRefresh()
end

function Set:Save()
  local value = self.Enabled and "on" or "off"
  local file = io.open(saveP, "w+")

  file:write(value)
  file:close()
end

SC.Ext.Settings = Set