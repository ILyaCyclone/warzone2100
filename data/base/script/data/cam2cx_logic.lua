-- Generated by wz2lua (implementation file)
version(0) --- version of the script API this script is written for
group = Array(3)
civGroup = Array(3)
tempGroup = Group()
tempGroup2 = Group()
currentWay = Array(3)
count = 0
count2 = 0
count3 = 0
temp = 0
temp2 = 0
totCivs = 0
rescuedCivs = 0
capturedCivs = 0
droid = nil
-- transport stuff
-- required for enemy transports landing
transportDroid = nil
-- is transport on map?
transFlag = false
-- rescue struff
tempX1 = 0
tempX2 = 0
tempY1 = 0
tempY2 = 0

-- only trigger when player near!
-- trigger startCyborgsTrig2((numStructsButNotWallsInArea(enemy, baseX1, baseY1, baseX2, baseY2) == 0)
-- and (numDroidsInArea(enemy, baseX1, baseY1, baseX2, baseY2) == 0), 83);

function start()
	createAlliance(player, scavs)
	createAlliance(enemy, scavs)
	-- starting number of civilians
	totCivs = 3
	-- set up cyborg shepherd groups
	count = 0
	while count < numGroups do
		groupAddArea(civGroup[count], scavs, groupX1[count], groupY1[count], groupX2[count], groupY2[count])
		
		groupAddArea(group[count], enemy, groupX1[count], groupY1[count], groupX2[count], groupY2[count])
		currentWay[count] = groupWayStart[count]
		-- orderGroupLoc(group[count], DORDER_MOVE, wayX[currentWay[count]], wayY[currentWay[count]]);
		count = count + 1
	end
	
	-- add enemy transport (once!)
	-- setNoGoArea done in generic (since initialises there! initAllNoGoAreas())
	-- setNoGoArea((LZX - 1)/128, (LZY - 1)/128, (LZX + 1)/128, (LZY + 1)/128, enemy);
	transportDroid = addDroidToMissionList(transporter, enemy)
end
callbackEvent(start, CALL_GAMEINIT)

-- cyborgs and civilians ordered to waypoints. Waypoints also used for where civilians appear
function moveCyborgs()
	count = 0
	while count < numGroups do
		if idleGroup(group[count]) >= groupCountMembers(group[count]) / 2 then
			if (currentWay[count] >= groupWayEnd[count] - 1) and (repNum < repTot) then
				currentWay[count] = groupWayStart[count]
				repNum = repNum + 1
				-- orderGroupLoc(group[count], DORDER_MOVE, wayX[currentWay[count] + 1], wayY[currentWay[count] + 1]);
				orderGroupLoc(group[count], DORDER_MOVE, wayX[currentWay[count]], wayY[currentWay[count]])
				orderGroupLoc(civGroup[count], DORDER_MOVE, LZoneX, LZoneY)
			else
				
				if currentWay[count] >= groupWayEnd[count] - 1 then
					orderGroupLoc(group[count], DORDER_MOVE, wayX[currentWay[count] + 1], wayY[currentWay[count] + 1])
					orderGroupLoc(civGroup[count], DORDER_MOVE, LZoneX, LZoneY)
				else
					count3 = 3
					-- create max of 8 civilian units at this waypoint position
					while count3 > 0 do
						droid = nil
						droid = addDroid(civilian, wayX[currentWay[count]], wayY[currentWay[count]], scavs)
						-- if placed order to waypoint and assign to corresponding group
						if droid ~= nil then
							groupAddDroid(civGroup[count], droid)
							totCivs = totCivs + 1
						end
						count3 = count3 - 1
					end
					currentWay[count] = currentWay[count] + 1
					-- order to next waypoint
					if groupCountMembers(group[count]) > 0 then
						orderGroupLoc(group[count], DORDER_MOVE, wayX[currentWay[count]], wayY[currentWay[count]])
						orderGroupLoc(civGroup[count], DORDER_MOVE, wayX[currentWay[count] + 1], wayY[currentWay[count] + 1])
					else
						orderGroupLoc(civGroup[count], DORDER_MOVE, playerLZX, playerLZY)
					end
				end
			end
		end
		count = count + 1
	end
end

-- set them in motion when player nearby!
function startCyborgs()
	deactivateEvent(startCyborgs2)
	playSound(incomingSnd, player)
	pause(20/10.0)
	-- give blip
	addMessage(objective, PROX_MSG, player, false)
	addMessage(brief, MISS_MSG, player, true)
	
	-- add extra Mission time limit
	timeLimit = timeLimit + missionTimeRemaining()
	setMissionTime(timeLimit/10.0)
	
	count = 0
	while count < numGroups do
		orderGroupLoc(group[count], DORDER_MOVE, wayX[currentWay[count]], wayY[currentWay[count]])
		count = count + 1
	end
	repeatingEvent(moveCyborgs, 5.5)
	deactivateEvent(startCyborgs)
end
conditionalEvent(startCyborgs, "droidInArea(player, trigX1, trigY1, trigX2, trigY2)", 4.1)

function startCyborgs2()
	delayedEvent(startCyborgs, 0.1)
	deactivateEvent(startCyborgs2)
end
conditionalEvent(startCyborgs2, "numStructsButNotWallsInArea(enemy, baseX1, baseY1, baseX2, baseY2) == 0", 8.3)

-- Transports
-- transport landed so remove contents and nearby civilians
function groupTrans(_tempGroup, _player)
	if _player ~= enemy then return end
	initIterateGroup(tempGroup)
	count = 0
	while count < groupCountMembers(tempGroup) do
		droid = iterateGroup(tempGroup)
		vanishUnit(droid)
		count = count + 1
	end
	-- now vanish civilians in LZ area
	groupAddArea(tempGroup2, scavs, LZX - LZRange, LZY - LZRange, LZX + LZRange, LZY + LZRange)
	initIterateGroup(tempGroup2)
	count = 0
	while count < groupCountMembers(tempGroup2) do
		droid = iterateGroup(tempGroup2)
		vanishUnit(droid)
		capturedCivs = capturedCivs + 1
		count = count + 1
	end
	-- playSound(warnSnd, player);
	pause(10/10.0)
end
callbackEvent(groupTrans, CALL_TRANSPORTER_LANDED)

function landTrans()
	if transportDroid ~= nil then
		playSoundPos(warnSnd, player, LZX * 128, LZY * 128, 0)
		-- call enemy transport in when civilians ordered to LZ
		transFlag = true
		droid = addDroidToMissionList(cyborg, enemy)
		if droid ~= nil then
			addDroidToTransporter(transportDroid, droid)
			-- call in transport
			setTransporterExit(enemy, exitX, exitY)
			flyTransporterIn(enemy, entryX, entryY, false)
		end
	end
end
conditionalEvent(landTrans, "(not transFlag) and (numDroidsInArea(scavs, LZX - LZRange, LZY - LZRange, LZX + LZRange, LZY + LZRange) > 0)", 3.3)

function nextTrans(_player)
	if _player ~= enemy then return end
	transFlag = false
end
callbackEvent(nextTrans, CALL_TRANSPORTER_OFFMAP)

-- prevent transport if all defenses gone!
function stopTrans()
	deactivateEvent(landTrans)
	deactivateEvent(stopTrans)
end
conditionalEvent(stopTrans, "numStructsByTypeInArea(enemy, REF_DEFENSE, LZX1, LZY1, LZX2, LZY2) == 0", 4.4)


function rescueCivs()
	count = 0
	while count < numGroups do
		tempX1 = civGroup[count].x - capRange
		tempY1 = civGroup[count].y - capRange
		tempX2 = civGroup[count].x + capRange
		tempY2 = civGroup[count].y + capRange
		-- check for player droids but no enemies near group
		-- if ((numDroidsInArea(player, tempX1, tempY1, tempX2, tempY2) > 0)
		-- and (numDroidsInArea(enemy, tempX1, tempY1, tempX2, tempY2) == 0))
		-- check for just player near civilians
		if numDroidsInArea(player, tempX1, tempY1, tempX2, tempY2) > 0 then
			groupAddArea(tempGroup2, scavs, tempX1, tempY1, tempX2, tempY2)
			-- may want to check how many captured and give audio cue here!
			if groupCountMembers(tempGroup2) > 0 then
				playSound(rescueSnd, player)
			end
			-- keep track of number rescued (may die later though!!)
			rescuedCivs = rescuedCivs + groupCountMembers(tempGroup2)
			-- takeOverDroidsInArea(scavs, player, tempX1, tempY1, tempX2, tempY2);	//removed from group as well!
			-- destroy civilians here
			initIterateGroup(tempGroup2)
			count2 = 0
			while count2 < groupCountMembers(tempGroup2) do
				droid = iterateGroup(tempGroup2)
				vanishUnit(droid)
				count2 = count2 + 1
			end
		end
		
		count = count + 1
	end
end
repeatingEvent(rescueCivs, 2.2)

-- may want to wait until all the groups dead or at end of waypoints!
function checkExtra()
	if capturedCivs > escCivs then
		playSound(badSnd, player)
		-- text version
		addConsoleText(_("Enemy Escaping"), player)
		C.extraFailFlag = true
		deactivateEvent(checkExtra)
	end
end
repeatingEvent(checkExtra, 6.6)


---------- stubs ----------

if pause == nil then pause = function() print("stub: pause"); return 0 end end
if addDroid == nil then addDroid = function() print("stub: addDroid"); return 0 end end
if vanishUnit == nil then vanishUnit = function() print("stub: vanishUnit"); return 0 end end
if droidInArea == nil then droidInArea = function() print("stub: droidInArea"); return 0 end end
if numStructsButNotWallsInArea == nil then numStructsButNotWallsInArea = function() print("stub: numStructsButNotWallsInArea"); return 0 end end
if setMissionTime == nil then setMissionTime = function() print("stub: setMissionTime"); return 0 end end
if groupAddDroid == nil then groupAddDroid = function() print("stub: groupAddDroid"); return 0 end end
if addDroidToTransporter == nil then addDroidToTransporter = function() print("stub: addDroidToTransporter"); return 0 end end
if orderGroupLoc == nil then orderGroupLoc = function() print("stub: orderGroupLoc"); return 0 end end
if setEventTrigger == nil then setEventTrigger = function() print("stub: setEventTrigger"); return 0 end end
if initIterateGroup == nil then initIterateGroup = function() print("stub: initIterateGroup"); return 0 end end
if idleGroup == nil then idleGroup = function() print("stub: idleGroup"); return 0 end end
if _ == nil then _ = function() print("stub: _"); return 0 end end
if groupAddArea == nil then groupAddArea = function() print("stub: groupAddArea"); return 0 end end
if playSoundPos == nil then playSoundPos = function() print("stub: playSoundPos"); return 0 end end
if numDroidsInArea == nil then numDroidsInArea = function() print("stub: numDroidsInArea"); return 0 end end
if iterateGroup == nil then iterateGroup = function() print("stub: iterateGroup"); return 0 end end
if setTransporterExit == nil then setTransporterExit = function() print("stub: setTransporterExit"); return 0 end end
if createAlliance == nil then createAlliance = function() print("stub: createAlliance"); return 0 end end
if playSound == nil then playSound = function() print("stub: playSound"); return 0 end end
if addConsoleText == nil then addConsoleText = function() print("stub: addConsoleText"); return 0 end end
if flyTransporterIn == nil then flyTransporterIn = function() print("stub: flyTransporterIn"); return 0 end end
if missionTimeRemaining == nil then missionTimeRemaining = function() print("stub: missionTimeRemaining"); return 0 end end
if numStructsByTypeInArea == nil then numStructsByTypeInArea = function() print("stub: numStructsByTypeInArea"); return 0 end end
if addMessage == nil then addMessage = function() print("stub: addMessage"); return 0 end end
if addDroidToMissionList == nil then addDroidToMissionList = function() print("stub: addDroidToMissionList"); return 0 end end
