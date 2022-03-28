
local old_PlayerManager_movement_speed_multiplier = PlayerManager.movement_speed_multiplier
function PlayerManager:movement_speed_multiplier(speed_state, bonus_multiplier, upgrade_level, health_ratio)
	local multiplier = old_PlayerManager_movement_speed_multiplier(self, speed_state, bonus_multiplier, upgrade_level, health_ratio)

	-- If has Partner in crime active then do not trigger the effect
	if self:num_local_minions() > 0 and self:has_category_upgrade("player", "minion_master_speed_multiplier") then
		-- managers.chat:_receive_message(1, "Don't Go too fast", "", Color('00ff00'))
		return multiplier
	elseif self:get_owned_sentries_count() > 0 then	
		-- managers.chat:_receive_message(1, "Go fast", "", Color('00ff00'))
		return multiplier + 0.10
	end
	-- managers.chat:_receive_message(1, "Don't Go fast", "", Color('00ff00'))

	return multiplier
end


function PlayerManager:get_owned_sentries_count()
	if not self:player_unit() or not self:player_unit():position() then
		return 0
	end

	local owned = 0
	local SLOT_MASK = managers.slot:get_mask("sentry_gun")
	local sentries = World:find_units_quick("sphere", self:player_unit():position(), 100000, SLOT_MASK)
	for _, sentry in ipairs(sentries) do
		if sentry:base() and sentry:base():is_owner() then
			owned = owned + 1
		end
	end
	return owned
end
