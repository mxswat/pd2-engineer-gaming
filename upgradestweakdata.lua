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

	self.definitions.player_minion_master_speed_multiplier = {
		name_id = "menu_player_minion_master_speed_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "minion_master_speed_multiplier",
			category = "player"
		}
	}
	self.values.player.minion_master_speed_multiplier = {
		1.1
	}
end)