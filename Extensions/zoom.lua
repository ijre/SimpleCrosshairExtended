local Ext = SC.Ext or { }

local function SetVisible(state)
  Ext.Settings.Visible = state
  HUDHitConfirm.Ext:ForceRefresh()
end

local origCheckSight = PlayerStandard._check_action_steelsight
function PlayerStandard:_check_action_steelsight(time, input)
  local newAct = origCheckSight(self, time, input)
  if not Ext.Settings.Enabled then
    return newAct
  end

  if managers.player:is_current_weapon_of_category("bow")
     or managers.player:is_current_weapon_of_category("lmg")
     or managers.player:is_current_weapon_of_category("akimbo") then
    SetVisible(true)
    return newAct
  end

  SetVisible(not self._state_data.in_steelsight)
  return newAct
end

SC.Ext = Ext