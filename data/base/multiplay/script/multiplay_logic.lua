-- Generated by wz2lua (implementation file)
version(0) --- version of the script API this script is written for

-- starting technologies.
tecP0 = Array(5)
tecP1 = Array(5)
tecP2 = Array(5)
tecP3 = Array(5)
tecP4 = Array(5)
tecP5 = Array(5)
tecP6 = Array(5)
tecP7 = Array(5)


-- research topics
resP0 = Array(5)
resP1 = Array(5)
resP2 = Array(5)
resP3 = Array(5)
resP4 = Array(5)
resP5 = Array(5)
resP6 = Array(5)
resP7 = Array(5)

baseRes = Array(10)
defRes = Array(10)

-- Other Stuff
count = 0
playnum = 0
gamenotwon = false

-- Base Under Attack Stuff
hitStruc = nil
attackerObj = nil
t = 0


-------------------------------------------------------------------


-------------------------------------------------------------------
-- this event is called once the game has initialised itself

function initialisedEvent()
	playnum = 0
	while playnum < 8 do
		if C.multiPlayerBaseType == CAMP_CLEAN then
			setPowerLevel(750, playnum)
			count = 0
			while count < numCleanTech do
				completeResearch(cleanTech[count], playnum)
				count = count + 1
			end
			
			count = 0
			while count < numCleanRes do
				enableResearch(cleanRes[count], playnum)
				count = count + 1
			end
		else
			if C.multiPlayerBaseType == CAMP_BASE then
				setPowerLevel(1000, playnum)
				count = 0
				while count < numBaseTech do
					completeResearch(baseTech[count], playnum)
					count = count + 1
				end
				count = 0
				while count < numBaseRes do
					enableResearch(baseRes[count], playnum)
					count = count + 1
				end
			else
				setPowerLevel(2000, playnum)
				count = 0
				while count < numDefTech do
					completeResearch(defTech[count], playnum)
					count = count + 1
				end
				count = 0
				while count < numDefRes do
					enableResearch(defRes[count], playnum)
					count = count + 1
				end
			end
		end
		
		playnum = playnum + 1
	end
end
callbackEvent(initialisedEvent, CALL_GAMEINIT)


function initialisedEvent2()
	addReticuleButton(OPTIONS)
	addReticuleButton(CANCEL)
	addReticuleButton(BUILD)
	addReticuleButton(MANUFACTURE)
	addReticuleButton(RESEARCH)
	addReticuleButton(INTELMAP)
	addReticuleButton(DESIGN)
	
	playnum = 0
	while playnum < 8 do
		enableStructure(command, playnum)
		enableStructure(factory, playnum)
		-- enableStructure(wall,		playnum);
		-- enableStructure(cornerWall,	playnum);
		enableStructure(oilDerrick, playnum)
		enableStructure(powerGen, playnum)
		enableStructure(research, playnum)
		
		-- set structure limits
		setStructureLimits(factory, 5, playnum)
		setStructureLimits(powerGen, 5, playnum)
		setStructureLimits(research, 5, playnum)
		setStructureLimits(command, 1, playnum)
		setStructureLimits(commandrelay, 1, playnum)
		setStructureLimits(cybfac, 5, playnum)
		setStructureLimits(vtolfac, 5, playnum)
		
		playnum = playnum + 1
	end
	-- set limit options
	applyLimitSet()
	
	-- player specific technology startups
	count = 0
	while count < numtecP0 do
		completeResearch(tecP0[count], 0)
		count = count + 1
	end
	count = 0
	while count < numtecP1 do
		completeResearch(tecP1[count], 1)
		count = count + 1
	end
	count = 0
	while count < numtecP2 do
		completeResearch(tecP2[count], 2)
		count = count + 1
	end
	count = 0
	while count < numtecP3 do
		completeResearch(tecP3[count], 3)
		count = count + 1
	end
	count = 0
	while count < numtecP4 do
		completeResearch(tecP4[count], 4)
		count = count + 1
	end
	count = 0
	while count < numtecP5 do
		completeResearch(tecP5[count], 5)
		count = count + 1
	end
	count = 0
	while count < numtecP6 do
		completeResearch(tecP6[count], 6)
		count = count + 1
	end
	count = 0
	while count < numtecP7 do
		completeResearch(tecP7[count], 7)
		count = count + 1
	end
	
	-- player specific research startups
	count = 0
	while count < numResP0 do
		enableResearch(resP0[count], 0)
		count = count + 1
	end
	count = 0
	while count < numResP1 do
		enableResearch(resP1[count], 1)
		count = count + 1
	end
	count = 0
	while count < numResP2 do
		enableResearch(resP2[count], 2)
		count = count + 1
	end
	count = 0
	while count < numResP3 do
		enableResearch(resP3[count], 3)
		count = count + 1
	end
	count = 0
	while count < numResP4 do
		enableResearch(resP4[count], 4)
		count = count + 1
	end
	count = 0
	while count < numResP5 do
		enableResearch(resP5[count], 5)
		count = count + 1
	end
	count = 0
	while count < numResP6 do
		enableResearch(resP6[count], 6)
		count = count + 1
	end
	count = 0
	while count < numResP7 do
		enableResearch(resP7[count], 7)
		count = count + 1
	end
end
callbackEvent(initialisedEvent2, CALL_GAMEINIT)


-------------------------------------------------------------------
function checkEndConditions()
	if (not anyDroidsLeft(C.selectedPlayer)) and (not anyFactoriesLeft(C.selectedPlayer)) then
		gameOverMessage(endMsg, MISS_MSG, 0, false)
		deactivateEvent(checkEndConditions)
		return
	end
	
	-- Winning Conditions
	playnum = 0
	gamenotwon = false
	
	----------------
	-- Campaign Game
	if C.multiPlayerGameType == CAMPAIGN then
		while playnum < C.multiPlayerMaxPlayers do
			if playnum ~= C.selectedPlayer then
				if anyDroidsLeft(playnum) or anyFactoriesLeft(playnum) then
					gamenotwon = true
				end
			end
			playnum = playnum + 1
		end
		
		-- check computer/babas are wiped out completely
		while playnum < 8 do
			if not isHumanPlayer(playnum) then
				if anyDroidsLeft(playnum) or anyStructButWallsLeft(playnum) then
					gamenotwon = true
				end
			end
			playnum = playnum + 1
		end
	end
	
	if gamenotwon == false then
		gameOverMessage(winMsg, MISS_MSG, 0, true)
		deactivateEvent(checkEndConditions)
	end
end
repeatingEvent(checkEndConditions, 10.0)

-------------------------------------------------------------------
-- Base Under Attack
function baseHit(_hitStruc, _attackerObj)
	if _hitStruc.player ~= C.selectedPlayer then return end
	hitStruc, attackerObj = _hitStruc, _attackerObj -- wz2lua: probably these can be used as function arguments directly
	if t >= 10 then
		t = 0
		if hitStruc ~= nil then
			playSoundPos(attackSnd1, C.selectedPlayer, hitStruc.x, hitStruc.y, hitStruc.z)
		else
			playSound(attackSnd1, C.selectedPlayer)
		end
	end
end
callbackEvent(baseHit, CALL_STRUCT_ATTACKED)

function everySec()
	t = t + 1
end
repeatingEvent(everySec, 1.0)

-- go to where the structure being attacked is on CTRL B
function seeBaseHit()
	if hitStruc ~= nil then
		centreView(hitStruc)
		-- flag known about!
		t = 0
	end
end
callbackEvent(seeBaseHit, CALL_MISSION_END)


---------- stubs ----------

if anyDroidsLeft == nil then anyDroidsLeft = function() print("stub: anyDroidsLeft"); return 0 end end
if applyLimitSet == nil then applyLimitSet = function() print("stub: applyLimitSet"); return 0 end end
if setEventTrigger == nil then setEventTrigger = function() print("stub: setEventTrigger"); return 0 end end
if anyFactoriesLeft == nil then anyFactoriesLeft = function() print("stub: anyFactoriesLeft"); return 0 end end
if centreView == nil then centreView = function() print("stub: centreView"); return 0 end end
if isHumanPlayer == nil then isHumanPlayer = function() print("stub: isHumanPlayer"); return 0 end end
if completeResearch == nil then completeResearch = function() print("stub: completeResearch"); return 0 end end
if addReticuleButton == nil then addReticuleButton = function() print("stub: addReticuleButton"); return 0 end end
if enableResearch == nil then enableResearch = function() print("stub: enableResearch"); return 0 end end
if gameOverMessage == nil then gameOverMessage = function() print("stub: gameOverMessage"); return 0 end end
if enableStructure == nil then enableStructure = function() print("stub: enableStructure"); return 0 end end
if setStructureLimits == nil then setStructureLimits = function() print("stub: setStructureLimits"); return 0 end end
if setPowerLevel == nil then setPowerLevel = function() print("stub: setPowerLevel"); return 0 end end
if anyStructButWallsLeft == nil then anyStructButWallsLeft = function() print("stub: anyStructButWallsLeft"); return 0 end end
if playSoundPos == nil then playSoundPos = function() print("stub: playSoundPos"); return 0 end end
if playSound == nil then playSound = function() print("stub: playSound"); return 0 end end
