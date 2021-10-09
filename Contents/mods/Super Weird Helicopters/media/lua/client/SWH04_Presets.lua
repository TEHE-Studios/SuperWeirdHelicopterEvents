---Event Scheduler List
--[[
eHeliEvents_init["preset"] = {["ID"]=nil, ["heliDay"]=configStartDay, ["heliStart"]=nil}
--]]
function eHeliEventsinit()
	eHeliEvents_init = eHeliEvents_init or {}

	local startDay = 0
	local cutOffDay = 30
	if oldGameVersion then
		startDay = eHelicopterSandbox.config.startDay
		cutOffDay = eHelicopterSandbox.config.cutOffDay
	else
		startDay = SandboxVars.ExpandedHeli.StartDay
		cutOffDay = SandboxVars.ExpandedHeli.CutOffDay
	end

	eHeliEvents_init["Spiffocopter"] = {["ID"]=nil, ["heliDay"]=startDay+ZombRand(0,3), ["heliStart"]=nil}
	eHeliEvents_init["UFO"] = {["ID"]=nil, ["heliDay"]=startDay+ZombRand(0,3), ["heliStart"]=nil}
	eHeliEvents_init["IRS"] = {["ID"]=nil, ["heliDay"]=startDay+ZombRand(0,3), ["heliStart"]=nil}
	eHeliEvents_init["TISCreamery"] = {["ID"]=nil, ["heliDay"]=startDay+ZombRand(0,3), ["heliStart"]=nil}
end
Events.OnGameBoot.Add(eHeliEventsinit)


---Preset list, only include variables being changed.
---variables can be found in Main Variables file, at the top, fields = variables
eHelicopter_PRESETS = eHelicopter_PRESETS or {}

--[[
eHelicopter_PRESETS["id_name"] = {
		variable = {values}
	}
]]


eHelicopter_PRESETS["Spiffocopter"] = {
	presetProgression = {
		["Spiffocopter_inviteOnly"] = 0,
		["Spiffocopter_partyTime"] = 0.05,
	}
}

eHelicopter_PRESETS["Spiffocopter_inviteOnly"] = {
	crashType = {"Bell206SpiffoFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206SpiffoTail"},
	crew = {"SpiffoBoss",100,0,
			"SpiffoBoss",10,0,
			"SpiffoBoss",1,0,},
	dropPackages = {"SpiffoBurger"},
	announcerVoice = "Spiffo",
	dropItems = {["SWH.SpiffoInvite"]=250},
}

eHelicopter_PRESETS["Spiffocopter_partyTime"] = {
	crashType = {"Bell206SpiffoFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206SpiffoTail"},
	crew = {"SpiffoBoss",100,0,
			"SpiffoBoss",10,0,
			"SpiffoBoss",1,0,},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	dropPackages = {"SpiffoBurger"},
	announcerVoice = "Spiffo",
	dropItems = {["SWH.SpiffoInvite"]=250},
}

eHelicopter_PRESETS["UFO"] = {
	presetRandomSelection = {"UFOTourists",4,"UFORednecks",1}
}

eHelicopter_PRESETS["UFOTourists"] = {
	crashType = {"UFO"},
	hoverOnTargetDuration = {2000,2250},
	crew = {"AlienTourist",100,0,
			"AlienTourist",75,0,
			"AlienTourist",30,0,
			"AlienTourist",15,0,
			"AlienTourist",5,0, },
	speed = 1.3,
	topSpeedFactor = 2,
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	scrapAndParts = false,
	eventSoundEffects = {["flightSound"] = "AlientUFOFlight"},
	addedCrashChance = 33,
	flightHours = {19,24},
}

eHelicopter_PRESETS["UFORednecks"] = {
	crashType = {"UFO"},
	hoverOnTargetDuration = {2000,2250},
	crew = {"AlienRedneck",100,0,
			"AlienRedneck",75,0,
			"AlienRedneck",30,0,
			"AlienRedneck",15,0,
			"AlienRedneck",5,0, },
	speed = 1.3,
	topSpeedFactor = 2,
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	scrapAndParts = false,
	eventSoundEffects = {["flightSound"] = "AlientUFOFlight"},
	addedCrashChance = 33,
	flightHours = {19,24},
}

eHelicopter_PRESETS["IRS"] = {
	presetProgression = {
		["IRS_Wave1"] = 0,
		["IRS_Wave2"] = 0.2,
		["IRS_Wave3"] = 0.5,
	}
}

eHelicopter_PRESETS["IRS_Wave1"] = {
	crashType = {"Bell206IRSFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206IRSTail"},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
	attackDelay = 1000,
	attackSpread = 4,
	speed = 0.09,
	attackHitChance = 65,
	attackDamage = 35,
	hostilePreference = "IsoPlayer",
	dropItems = {["SWH.TenFortyForm"]=400},
	eventSoundEffects = {
		["attackSingle"] = "eHeli_bolt_action_fire_single",
		["attackLooped"] = "eHeli_bolt_action_fire_single",
		},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	announcerVoice = "IRS",
}

eHelicopter_PRESETS["IRS_Wave2"] = {
	crashType = {"Bell206IRSFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206IRSTail"},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
	attackDelay = 1000,
	attackSpread = 4,
	speed = 0.09,
	attackHitChance = 65,
	attackDamage = 35,
	hostilePreference = "IsoPlayer",
	dropItems = {["SWH.TenFortyForm"]=400},
	eventSoundEffects = {
		["attackSingle"] = "eHeli_bolt_action_fire_single",
		["attackLooped"] = "eHeli_bolt_action_fire_single",
	},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	announcerVoice = "IRS",
}

eHelicopter_PRESETS["IRS_Wave3"] = {
	crashType = {"Bell206IRSFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206IRSTail"},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
	attackDelay = 1000,
	attackSpread = 4,
	speed = 0.09,
	attackHitChance = 65,
	attackDamage = 35,
	hostilePreference = "IsoPlayer",
	dropItems = {["SWH.TenFortyForm"]=400},
	eventSoundEffects = {
		["attackSingle"] = "eHeli_bolt_action_fire_single",
		["attackLooped"] = "eHeli_bolt_action_fire_single",
	},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	announcerVoice = "IRS",
}

eHelicopter_PRESETS["TISCreamery"] = {
	crashType = {"TISIceCreamTruck"},
	hoverOnTargetDuration = {2000,2250},
	crew = {"RobertJohnson",100,0,
			"RobertJohnson",100,0,
			"RobertJohnson",75,0,
			"RobertJohnson",50,0,
			"RobertJohnson",25,0,
			"RobertJohnson",25,0, },
	eventSoundEffects = {["flightSound"] = "IceCreamFlyBy"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	scrapAndParts = false,
}