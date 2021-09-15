Events.OnKeyPressed.Add(function(key)
	if getPlayer() and getDebug() and (eHelicopterSandbox.config.debugTests==true) then
		if key == Keyboard.KEY_1 then --DEBUG_TESTS.eHeliEventsOnSchedule()--DEBUG_TESTS.testAllLines()
		elseif key == Keyboard.KEY_2 then --DEBUG_TESTS.raiseTheDead()
		elseif key == Keyboard.KEY_3 then --DEBUG_TESTS.ToggleAllCrash()
		elseif key == Keyboard.KEY_4 then --DEBUG_TESTS.ToggleMoveHeliCloser()
		elseif key == Keyboard.KEY_5 then DEBUG_TESTS.launchHeliTest("Spiffocopter")
		elseif key == Keyboard.KEY_6 then DEBUG_TESTS.launchHeliTest("TISCreamery")
		elseif key == Keyboard.KEY_7 then DEBUG_TESTS.launchHeliTest("IRS")
		elseif key == Keyboard.KEY_8 then DEBUG_TESTS.launchHeliTest("UFOTourists")
		elseif key == Keyboard.KEY_9 then DEBUG_TESTS.launchHeliTest("UFORednecks")
		elseif key == Keyboard.KEY_0 then --DEBUG_TESTS.launchHeliTest()
		end
	end
end)