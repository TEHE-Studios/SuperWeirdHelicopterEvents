---@param heli eHelicopter
---@param location IsoGridSquare
function eHelicopter_dropCrewOff(heli, location)
	local crew = heli:spawnCrew(0, 0)
	heli.addedFunctionsToEvents.OnHover = false

	---((Scope * 2)+1) * ((Spread * 2)+1) ^2 = attackScopeSpread area
	local heliScopeSpread = ((math.max(heli.attackScope,heli.attackSpread)*2)+1)^2

	local choice
	for character,value in pairs(EHEIsoPlayers) do
		if (not choice) or (choice and character and (heli:getDistanceToIsoObject(choice) < heli:getDistanceToIsoObject(character))) then
			if heli:getDistanceToIsoObject(choice) <= heliScopeSpread then
				choice = character
			end
		end
	end

	if choice then
		for key,zombie in pairs(crew) do
			zombie:spotted(choice, true)
		end
	end
end
