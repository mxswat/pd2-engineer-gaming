Hooks:PostHook(SkillTreeTweakData, "init", "EngineerGaming_SkillTreeTweakData_init", function(self)
    -- The cost for a full setup with sentries and tier 4 aced will be 30,same as meta jokers cost w/ tier 4 aced

	-- Tier 1
	-- Basic Gain Shield and both cost reduction
	-- Aced Gain pick up broken sentry
	self.skills.defense_up = {
		{
			upgrades = {
				"sentry_gun_shield",
				"sentry_gun_cost_reduction_1",
				"sentry_gun_cost_reduction_2"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_broken_sentry_pickup"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_defense_up_beta",
		desc_id = "menu_defense_up_beta_desc",
		icon_xy = {
			9,
			0
		}
	}

	-- Tier 2 Left
	-- Added Gain 1 + 2 sentries
    self.skills.sentry_targeting_package = {
		{
			upgrades = {
				"sentry_gun_spread_multiplier",
				"sentry_gun_quantity_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"sentry_gun_rot_speed_multiplier",
				"sentry_gun_extra_ammo_multiplier_1",
				"sentry_gun_quantity_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_sentry_targeting_package_beta",
		desc_id = "menu_sentry_targeting_package_beta_desc",
		icon_xy = {
			9,
			5
		}
	}

	-- Tier 2 Left
	-- Replaced basic cost reduction with the aced version (+150% health)
	-- Added mark hit special for +10% damage
	self.skills.eco_sentry = {
		{
			upgrades = {
				"sentry_gun_armor_multiplier",
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_sentry_mark_hit_specials"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_eco_sentry_beta",
		desc_id = "menu_eco_sentry_beta_desc",
		icon_xy = {
			9,
			2
		}
	}

	-- Tier 2 Right
	-- Added partner in crimes basic and aced but with sentries
	self.skills.engineering = {
		{
			upgrades = {
				"sentry_gun_silent",
				"player_sentry_master_speed_multiplier",
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_sentry_master_health_multiplier",
				"sentry_gun_ap_bullets",
				"sentry_gun_fire_rate_reduction_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_engineering_beta",
		desc_id = "menu_engineering_beta_desc",
		icon_xy = {
			9,
			3
		}
	}

	-- Replaced with hostage taker sentry version
	self.skills.tower_defense = {
		{
			upgrades = {
				"player_sentry_health_regen_addend_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_sentry_health_regen_addend_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_tower_defense_beta",
		desc_id = "menu_tower_defense_beta_desc",
		icon_xy = {
			6,
			6
		}
	}
end)