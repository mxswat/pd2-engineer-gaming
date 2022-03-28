local function generateSkillLocaleString(basic, ace)
	return "BASIC: ##$basic##\n"..basic..".\n\nACE: ##$pro##\n"..ace
end

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInitWeaponNames", function(loc)
	local names = {}

	names['menu_defense_up_beta_desc'] = generateSkillLocaleString("Your sentry guns gain a protective shield.\n\nThe cost of deploying a sentry gun is reduced by ##10%##", "WIP")
	
	names['menu_sentry_targeting_package_beta'] = "Tower Defence Plus"
	names['menu_sentry_targeting_package_beta_desc'] = generateSkillLocaleString("Your sentry guns gain a ##100%## increase in accuracy.\n\nYou can now carry ##1## extra sentry gun", "Your sentry guns rotation speed is increased by ##150%##. Your sentry guns also have ##50%## more ammunition.\n\nYou can now carry an additional ##2## extra sentry guns.")
	
	names['menu_eco_sentry_beta'] = "Eco Sentry Plus"
	names['menu_eco_sentry_beta_desc'] = generateSkillLocaleString("Your sentry guns gain ##150%## increased health", "WIP")
	
	names['menu_engineering_beta'] = "Advanced Engineering"
	names['menu_engineering_beta_desc'] = generateSkillLocaleString("You can now select a less noisy version of the sentry guns, making them much less likely to be targeted by enemies.\n\nHaving a sentry deployed and alive increases your movement speed by ##10%##", "You can now toggle AP rounds on your sentry guns, lowering the rate of fire by ##75%##, but increasing the damage by ##250%## and allowing it to pierce through enemies and shields.\n\nHaving a sentry deployed and alive increases your health by ##30%##.\n\nNote: Does not stack with Partners In Crime basic or aced.")
	loc:add_localized_strings(names)
end)
