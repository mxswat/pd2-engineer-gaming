local function generateSkillLocaleString(basic, ace)
	return "BASIC: ##$basic##\n"..basic..".\n\nACE: ##$pro##\n"..ace
end

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInitWeaponNames", function(loc)
	local names = {}

	names['menu_defense_up_beta_desc'] = generateSkillLocaleString("Your sentry guns gain a protective shield.\n\nThe cost of deploying a sentry gun is reduced by ##10%##", "WIP")
	
	names['menu_sentry_targeting_package_beta'] = "Tower Defence Plus"
	names['menu_sentry_targeting_package_beta_desc'] = generateSkillLocaleString("Your sentry guns gain a ##100%## increase in accuracy.\n\nYou can now carry ##1## extra sentry gun.", "Your sentry guns rotation speed is increased by ##150%##. Your sentry guns also have ##50%## more ammunition.\n\nYou can now carry an additional ##2## extra sentry guns.")
	
	names['menu_eco_sentry_beta'] = "Eco Sentry Plus"
	names['menu_eco_sentry_beta_desc'] = generateSkillLocaleString("Your sentry guns gain ##150%## increased health.\n\nYou can now select a less noisy version of the sentry guns, making them much less likely to be targeted by enemies.", "WIP")
	loc:add_localized_strings(names)
end)
