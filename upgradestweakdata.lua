Hooks:PostHook(UpgradesTweakData, "init", "EngineerGaming_UpgradesTweakData_init", function(self, tweak_data)
	self.definitions.player_sentry_health_regen_addend_1 = {
		name_id = "menu_player_sentry_health_regen_addend",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "sentry_health_regen_addend",
			category = "player"
		}
	}
	self.definitions.player_sentry_health_regen_addend_2 = {
		name_id = "menu_player_sentry_health_regen_addend",
		category = "temporary",
		upgrade = {
			value = 2,
			upgrade = "sentry_health_regen_addend",
			category = "player"
		}
	}

	self.values.player.sentry_health_regen_addend = {
		0.015,
		0.045
	}

	self.definitions.player_sentry_master_speed_multiplier = {
		name_id = "menu_player_sentry_master_speed_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "sentry_master_speed_multiplier",
			category = "player"
		}
	}
	self.values.player.sentry_master_speed_multiplier = {
		0.1
	}

	self.definitions.player_sentry_master_health_multiplier = {
		name_id = "menu_player_sentry_master_health_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "sentry_master_health_multiplier",
			category = "player"
		}
	}
	self.values.player.sentry_master_health_multiplier = {
		0.3
	}

	self.definitions.player_sentry_health_regen_addend_1 = {
		name_id = "menu_player_sentry_health_regen_addend",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "sentry_health_regen_addend",
			category = "player"
		}
	}
	self.definitions.player_sentry_health_regen_addend_2 = {
		name_id = "menu_player_sentry_health_regen_addend",
		category = "temporary",
		upgrade = {
			value = 2,
			upgrade = "sentry_health_regen_addend",
			category = "player"
		}
	}
	self.values.player.sentry_health_regen_addend = {
		0.015,
		0.045
	}

	self.definitions.player_broken_sentry_pickup = {
		name_id = "menu_player_broken_sentry_pickup",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "broken_sentry_pickup",
			category = "player"
		}
	}
	self.values.player.broken_sentry_pickup = {
		0.5
	}

	self.definitions.player_sentry_mark_hit_specials = {
		name_id = "menu_player_sentry_mark_hit_specials",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "sentry_mark_hit_specials",
			category = "player"
		}
	}
	self.values.player.sentry_mark_hit_specials = {
		true
	}

	self.values.player.body_armor.dodge[1] = 1 -- Debug always dodgde
end)