---@param heli eHelicopter
function eHelicopter_dropCrewOff(heli)
	if not heli then
		return
	end

	local x, y, z = heli:getXYZAsInt()
	x=x+ZombRand(20,35)
	y=y+ZombRand(20,35)
	EHE_EventMarkerHandler.setOrUpdateMarkers(nil, "media/ui/crew.png", 3000, x, y)
	heli:spawnCrew(x, y, z)
	heli.addedFunctionsToEvents.OnHover = false
end


---@param crew table
function eHelicopter_crewSeek(crew)

	if not crew then
		return
	end

	local choice
	local location

	if crew:size() > 0 then
		location = crew:get(0):getSquare()
	end
	if not location then
		return
	end

	for character,value in pairs(EHEIsoPlayers) do
		if (not choice) or (choice and character and (location:DistTo(choice) < location:DistTo(character)) ) then
			choice = character
		end
	end

	if choice then

		for i=0, crew:size()-1 do
			---@type IsoZombie
			local zombie = crew:get(i)
			if zombie then
				zombie:spotted(choice, true)
			end
		end
	end
end