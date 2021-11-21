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
	},
	crashType = {"Bell206SpiffoFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapItems = {"EHE.Bell206HalfSkirt", "EHE.Bell206RotorBlade", 2, "EHE.Bell206TailBlade", 2, "Base.ScrapMetal", 10},
	scrapVehicles = {"Bell206SpiffoTail"},
	eventSoundEffects = {["flightSound"] = "eHelicopter"},
	dropPackages = {"SpiffoBurger"},
	announcerVoice = "Spiffo",
	dropItems = {["SWH.SpiffoInvite"]=250},
	crew = {"SpiffoBoss",100,0,
			"SpiffoBoss",10,0,
			"SpiffoBoss",1,0,},
	forScheduling = true,
	eventSpawnWeight = 2,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS["Spiffocopter_inviteOnly"] = {}

eHelicopter_PRESETS["Spiffocopter_partyTime"] = {
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
}



eHelicopter_PRESETS["UFO"] = {
	presetRandomSelection = {"UFOTourists",4,"UFORednecks",1,"UFOFratBoys",1,},
	crashType = {"UFO"},
	hoverOnTargetDuration = {2000,2250},
	speed = 1.3,
	topSpeedFactor = 2,
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	scrapAndParts = false,
	addedCrashChance = 33,
	flightHours = {19,24},
	announcerVoice = "Aliens",
	eventMarkerIcon = "media/ui/markerUFO.png",
	eventSoundEffects = {["flightSound"] = "AlienUFOFlight"},
	forScheduling = true,
	eventSpawnWeight = 2,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS["UFOTourists"] = {
	inherit = {"UFO"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"AlienTourist",100,0,
			"AlienTourist",75,0,
			"AlienTourist",30,0,
			"AlienTourist",15,0,
			"AlienTourist",5,0, },
}

eHelicopter_PRESETS["UFORednecks"] = {
	inherit = {"UFO"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crashType = {"UFORedneck"},
	crew = {"AlienRedneck",100,0,
			"AlienRedneck",75,0,
			"AlienRedneck",30,0,
			"AlienRedneck",15,0,
			"AlienRedneck",5,0, },
}

eHelicopter_PRESETS["UFOFratBoys"] = {
	inherit = {"UFO"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"AlienBeefo",100,0,
			"AlienBeefo",75,0,
			"AlienBeefo",30,0,
			"AlienBeefo",15,0,
			"AlienBeefo",5,0, },
	eventSoundEffects = {
		["flightSound"] = "AlienUFOFlight",
		["additionalFlightSound"] = "assBlastUSA"
		},
	announcerVoice = "FratAliens",
}



eHelicopter_PRESETS["IRS"] = {
	presetProgression = {
		["IRS_Wave1"] = 0,
		["IRS_Wave2"] = 0.2,
		["IRS_Wave3"] = 0.5,
	},
	crashType = {"Bell206IRSFuselage"},
	hoverOnTargetDuration = {2000,2250},
	crashType = {"Bell206IRSFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapItems = {"EHE.Bell206HalfSkirt", "EHE.Bell206RotorBlade", 2, "EHE.Bell206TailBlade", 2, "Base.ScrapMetal", 10},
	scrapVehicles = {"Bell206IRSTail"},
	attackDelay = 1000,
	attackSpread = 4,
	speed = 0.09,
	attackHitChance = 65,
	attackDamage = 12,
	hostilePreference = "IsoPlayer",
	dropItems = {["SWH.TenFortyForm"]=400},
	eventSoundEffects = {
		["attackSingle"] = "eHeli_bolt_action_fire_single",
		["attackLooped"] = "eHeli_bolt_action_fire_single",
		["flightSound"] = "eHelicopter",
	},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	announcerVoice = "IRS",
	forScheduling = true,
	eventSpawnWeight = 2,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS["IRS_Wave1"] = {
	inherit = {"IRS"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
}

eHelicopter_PRESETS["IRS_Wave2"] = {
	inherit = {"IRS"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
}

eHelicopter_PRESETS["IRS_Wave3"] = {
	inherit = {"IRS"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
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
	eventSoundEffects = {["flightSound"] = "IceCreamFlyBy",},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	scrapAndParts = false,
	forScheduling = true,
	eventSpawnWeight = 2,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS.samaritan_drop.dropPackages = {"MCSupplyDrop"}