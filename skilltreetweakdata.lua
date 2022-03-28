Hooks:PostHook(SkillTreeTweakData, "init", "EngineerGaming_SkillTreeTweakData_init", function(self)
    -- The cost for a good setup with sentries and tier 4 aced should be 30

    -- {
    --     "defense_up"
    -- },
    -- {
    --     "sentry_targeting_package",
    --     "eco_sentry"
    -- },
    -- {
    --     "engineering",
    --     "jack_of_all_trades"
    -- },
    -- {
    --     "tower_defense"
    -- }

	-- Tier 1
	-- Basic Gain Shield and cost reduction
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
				-- Gain pick up sentry
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
	self.skills.eco_sentry = {
		{
			upgrades = {
				"sentry_gun_armor_multiplier",
				"sentry_gun_silent"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				
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
	self.skills.engineering = {
		{
			upgrades = {
				
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
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

	self.skills.tower_defense = {
		{
			upgrades = {
				"sentry_gun_quantity_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"sentry_gun_quantity_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_tower_defense_beta",
		desc_id = "menu_tower_defense_beta_desc",
		icon_xy = {
			7,
			5
		}
	}
end)