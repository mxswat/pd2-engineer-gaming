local fire_raycast = SentryGunWeapon._fire_raycast
function SentryGunWeapon:_fire_raycast(from_pos, direction, shoot_player, target_unit)
	if managers.player:has_category_upgrade("player", "sentry_mark_hit_specials") and managers.groupai:state():is_enemy_special(target_unit) then
		target_unit:contour():add("mark_unit_dangerous_damage_bonus", 1)
    end
    return fire_raycast(self,from_pos, direction, shoot_player, target_unit)
end