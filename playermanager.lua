local msgCache = {}

local function log_msg_cached(id, content)
	if not msgCache[id] or msgCache[id] ~= content then
		managers.chat:_receive_message(1, id, tostring(content), Color('00ff00'))
		msgCache[id] = content
	end
end

local old_PlayerManager_movement_speed_multiplier = PlayerManager.movement_speed_multiplier
function PlayerManager:movement_speed_multiplier(speed_state, bonus_multiplier, upgrade_level, health_ratio)
	local multiplier = old_PlayerManager_movement_speed_multiplier(self, speed_state, bonus_multiplier, upgrade_level, health_ratio)

	-- If has Partner in crime active then do not trigger the effect
	if not (self:num_local_minions() > 0 and self:has_category_upgrade("player", "minion_master_speed_multiplier")) then
		if self:get_owned_sentries_count() > 0 then	
			multiplier = multiplier + 0.10
		end
	end

	log_msg_cached("movement_speed_multiplier", multiplier)
	return multiplier
end

local old_PlayerManager_health_skill_multiplier = PlayerManager.health_skill_multiplier
function PlayerManager:health_skill_multiplier()
	local multiplier = old_PlayerManager_health_skill_multiplier(self)
	
	if not (self:num_local_minions() > 0 and self:has_category_upgrade("player", "minion_master_health_multiplier")) then
		if self:get_owned_sentries_count() > 0 then	
			multiplier = multiplier + 0.30
		end
	end

	log_msg_cached("health_skill_multiplier", multiplier)
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
