-- Generated by wz2lua (implementation file)
version(0) --- version of the script API this script is written for

-- structure limit stuff
-- public	STRUCTURESTAT		powerModuleHack;

-- Briefing stuff
-- , winMsg;

-- Win or lose

-- Landing Zone coords for Map to follow

-- Triggers: Briefing


function startEvnt()
	centreViewPos(1728, 6720)
	-- place transporter!!!
	addDroid(transporter, 1472, 6720, player)
	setTransporterExit(player, exitX, exitY)
	-- set transport time
	-- not available at start
	setReinforcementTime(-1/10.0)
	-- set zoom Level 128x128
	setRadarZoom(0)
	-- stop player building on LZ
	setLandingZone(10, 51, 12, 53)
	-- set Mission time limit
	setMissionTime(timeLimit/10.0)
	-- allow to build stuff
	setStructureLimits(powerGen, numPow, 0)
	setStructureLimits(oilDerrick, numExt, 0)
	setStructureLimits(research, numRes, 0)
	setStructureLimits(factory, numFac, 0)
	setStructureLimits(command, 1, player)
	enableStructure(command, player)
	enableStructure(powerGen, 0)
	enableStructure(oilDerrick, 0)
	enableStructure(research, 0)
	enableStructure(factory, 0)
	-- enableStructure(powerModuleHack, 0);
	-- give player briefing
	
	-- setEventTrigger(nextLevEvnt, vidEndTrig);	//flag next stuff after briefing over
	addMessage(MissionUpdate, MISS_MSG, 0, true)
	deactivateEvent(startEvnt)
end
callbackEvent(startEvnt, CALL_GAMEINIT)

function nextLevEvnt2()
	deactivateEvent(nextLevEvnt2)
	-- only get to see once
	removeMessage(MissionUpdate, MISS_MSG, 0)
	-- shorter briefing
	addMessage(MissionBrief, MISS_MSG, 0, false)
end
callbackEvent(nextLevEvnt2, CALL_VIDEO_QUIT)

function nextLevEvnt()
	startMission(OFF_KEEP, NextLev)
	deactivateEvent(nextLevEvnt)
end
callbackEvent(nextLevEvnt, CALL_START_NEXT_LEVEL)

function gameLost()
	gameOverMessage(endMsg, MISS_MSG, 0, false)
	deactivateEvent(gameLost)
end

-- out of time?
function lostYetEvnt()
	deactivateEvent(nextLevEvnt)
	deactivateEvent(lostYetEvnt)
	-- waits 2 seconds before ending
	repeatingEvent(gameLost, 2.0)
end
callbackEvent(lostYetEvnt, CALL_MISSION_TIME)


---------- stubs ----------

if startMission == nil then startMission = function() print("stub: startMission"); return 0 end end
if setEventTrigger == nil then setEventTrigger = function() print("stub: setEventTrigger"); return 0 end end
if addMessage == nil then addMessage = function() print("stub: addMessage"); return 0 end end
if removeMessage == nil then removeMessage = function() print("stub: removeMessage"); return 0 end end
if setRadarZoom == nil then setRadarZoom = function() print("stub: setRadarZoom"); return 0 end end
if gameOverMessage == nil then gameOverMessage = function() print("stub: gameOverMessage"); return 0 end end
if enableStructure == nil then enableStructure = function() print("stub: enableStructure"); return 0 end end
if setMissionTime == nil then setMissionTime = function() print("stub: setMissionTime"); return 0 end end
if setReinforcementTime == nil then setReinforcementTime = function() print("stub: setReinforcementTime"); return 0 end end
if setLandingZone == nil then setLandingZone = function() print("stub: setLandingZone"); return 0 end end
if addDroid == nil then addDroid = function() print("stub: addDroid"); return 0 end end
if setTransporterExit == nil then setTransporterExit = function() print("stub: setTransporterExit"); return 0 end end
if centreViewPos == nil then centreViewPos = function() print("stub: centreViewPos"); return 0 end end
if setStructureLimits == nil then setStructureLimits = function() print("stub: setStructureLimits"); return 0 end end
