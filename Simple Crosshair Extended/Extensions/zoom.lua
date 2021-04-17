local origUpdateStance = FPCameraPlayerBase._update_stance

function FPCameraPlayerBase:_update_stance(time, deltaTime)
  origUpdateStance(self, time, deltaTime)

  local function Show()
    SC.Visible = not SC.Ext.HideOnFinished
    SC.NeedRefresh = true

    SC.Ext.HideOnFinished = nil
  end

  local state = managers.player:current_state()
  if state and state == "bipod" then
    Show()
    return
  end

  local fovData = self._fov
  local transData = fovData.transition

  if transData then
    if fovData.fov > transData.end_fov then
      SC.Ext.HideOnFinished = true
    elseif fovData.fov < transData.end_fov then
      Show()
    end
  elseif SC.Ext.HideOnFinished ~= nil then
    Show()
  end
end