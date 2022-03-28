local old_SentryGunDamage_die = SentryGunDamage.die
function SentryGunDamage:die(attacker_unit, variant, options)
	if managers.player:has_category_upgrade("player", "broken_sentry_pickup") and self._unit:base():is_owner() then
        self._unit:brain():switch_off() -- switch off the brain
        self._unit:weapon():set_ammo(self._unit:weapon():ammo_total() * 0.50) -- Remove 50% of remaining ammo
        self._health = 0
	    self._dead = true
        self._unit:contour():add("deployable_disabled")
        managers.chat:_receive_message(1, "Sentry Gun", "Died", Color('00ff00'))
    else
        return old_SentryGunDamage_die(self, attacker_unit, variant, options)
    end
end
