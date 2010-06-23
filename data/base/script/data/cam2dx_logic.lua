-- Generated by wz2lua (implementation file)
version(0) --- version of the script API this script is written for
uplinkX = 0
uplinkY = 0

-- 3 tiles range
-- 10 second delay


function start()
	createAlliance(player, uplinkPlayer)
	createAlliance(enemy, uplinkPlayer)
	
	if uplink ~= nil then
		uplinkX = uplink.x
		uplinkY = uplink.y
	end
end
callbackEvent(start, CALL_GAMEINIT)

function captureDeadEvnt()
	addConsoleText(_("Objective Destroyed"), player)
	-- Objective destroyed
	playSound(badSnd, player)
	C.extraFailFlag = true
	-- don't allow win
	deactivateEvent(captureDeadEvnt)
	deactivateEvent(captureEvnt)
end
conditionalEvent(captureDeadEvnt, "(destroyed(uplink))", 1.7)

function clearMessage()
	flushConsoleMessages()
	deactivateEvent(clearMessage)
end

function captureEvnt()
	if (numDroidsInArea(enemy, uplinkX - capRange, uplinkY - capRange, uplinkX + capRange, uplinkY + capRange) == 0) and (numStructsByTypeInArea(enemy, REF_DEFENSE, uplinkX - capRange, uplinkY - capRange, uplinkX + capRange, uplinkY + capRange) == 0) then
		takeOverStructsInArea(uplinkPlayer, player, uplinkX - 128, uplinkY - 128, uplinkX + 128, uplinkY + 128)
		-- need to play Audio if possible
		showConsoleText(_("Objective Captured"), player)
		-- Objective captured
		playSound(goodSnd, player)
		C.extraVictoryFlag = true
		-- don't allow lose
		deactivateEvent(captureEvnt)
		deactivateEvent(captureDeadEvnt)
		delayedEvent(clearMessage, 10.0)
	end
end
conditionalEvent(captureEvnt, "(droidInRange(player, uplinkX, uplinkY, 300) and (uplink ~= nil))", 1.3)


---------- stubs ----------

if showConsoleText == nil then showConsoleText = function() print("stub: showConsoleText"); return 0 end end
if numStructsByTypeInArea == nil then numStructsByTypeInArea = function() print("stub: numStructsByTypeInArea"); return 0 end end
if droidInRange == nil then droidInRange = function() print("stub: droidInRange"); return 0 end end
if setEventTrigger == nil then setEventTrigger = function() print("stub: setEventTrigger"); return 0 end end
if takeOverStructsInArea == nil then takeOverStructsInArea = function() print("stub: takeOverStructsInArea"); return 0 end end
if flushConsoleMessages == nil then flushConsoleMessages = function() print("stub: flushConsoleMessages"); return 0 end end
if numDroidsInArea == nil then numDroidsInArea = function() print("stub: numDroidsInArea"); return 0 end end
if destroyed == nil then destroyed = function() print("stub: destroyed"); return 0 end end
if createAlliance == nil then createAlliance = function() print("stub: createAlliance"); return 0 end end
if playSound == nil then playSound = function() print("stub: playSound"); return 0 end end
if addConsoleText == nil then addConsoleText = function() print("stub: addConsoleText"); return 0 end end
if _ == nil then _ = function() print("stub: _"); return 0 end end
