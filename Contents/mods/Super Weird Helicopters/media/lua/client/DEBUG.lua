Events.OnCustomUIKey.Add(function(key)
	if getDebug() and (eHelicopterSandbox.config.debugTests==true) then
		if key == Keyboard.KEY_1 then DEBUG_TESTS.eHeliEventsOnSchedule()--DEBUG_TESTS.testAllLines()
		elseif key == Keyboard.KEY_2 then DEBUG_TESTS.raiseTheDead()
		elseif key == Keyboard.KEY_3 then
			local heli1 = getFreeHelicopter("Spiffocopter")
			heli1:launch()
			DEBUG_TESTS.moveHeliCloser(heli1)

		elseif key == Keyboard.KEY_4 then --DEBUG_TESTS.launch_jet()
			local heli2 = getFreeHelicopter("TISCreamery")
			heli2:launch()
			DEBUG_TESTS.moveHeliCloser(heli2)

		elseif key == Keyboard.KEY_5 then --DEBUG_TESTS.launch_aid_chopper()
			local heli3 = getFreeHelicopter("IRS")
			heli3:launch()
			DEBUG_TESTS.moveHeliCloser(heli3)

		elseif key == Keyboard.KEY_6 then --DEBUG_TESTS.launch_news_chopper()
			local heli3 = getFreeHelicopter("UFOTourists")
			heli3:launch()
			DEBUG_TESTS.moveHeliCloser(heli3)

		elseif key == Keyboard.KEY_7 then --DEBUG_TESTS.launch_news_chopper()
			local heli3 = getFreeHelicopter("UFORednecks")
			heli3:launch()
			DEBUG_TESTS.moveHeliCloser(heli3)

		elseif key == Keyboard.KEY_8 then DEBUG_TESTS.launch_increasingly_helpful()
		elseif key == Keyboard.KEY_9 then DEBUG_TESTS.launch_police_heli()
		elseif key == Keyboard.KEY_0 then DEBUG_TESTS.launchBaseHeli()
		end
	end
end)