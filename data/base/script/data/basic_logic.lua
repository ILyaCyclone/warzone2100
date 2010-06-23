-- Generated by wz2lua (implementation file)
version(0) --- version of the script API this script is written for

-- components


-- public	ECM					ecm;


-- public	WEAPON				machineGun;
-- public	WEAPON				cannon;
-- public	WEAPON				howitzer;
-- public	WEAPON				missile;

commander = nil

-- this event is called once the game has initialised itself
function initialisedEvent()
	addReticuleButton(OPTIONS)
	addReticuleButton(CANCEL)
	addReticuleButton(BUILD)
	addReticuleButton(MANUFACTURE)
	addReticuleButton(RESEARCH)
	addReticuleButton(INTELMAP)
	addReticuleButton(DESIGN)
	
	-- make structures available to build
	enableStructure(babaBunker, 6)
	enableStructure(babaCorner, 6)
	enableStructure(babaTower, 6)
	enableStructure(babFactory, 6)
	enableStructure(babWall, 6)
	enableStructure(babaPower, 6)
	enableStructure(babaRocket, 6)
	enableStructure(babaBunker, 7)
	enableStructure(babaCorner, 7)
	enableStructure(babaTower, 7)
	enableStructure(babFactory, 7)
	enableStructure(babWall, 7)
	enableStructure(babaPower, 7)
	enableStructure(babaRocket, 7)
	enableStructure(command, 0)
	enableStructure(factory, 0)
	enableStructure(wall, 0)
	enableStructure(cornerWall, 0)
	enableStructure(oilderrick, 0)
	enableStructure(powerGen, 0)
	enableStructure(research, 0)
	-- make some components available
	makeComponentAvailable(viperBody, 0)
	makeComponentAvailable(machineGun, 0)
	makeComponentAvailable(howitzerBody, 1)
	makeComponentAvailable(missileBody, 1)
	makeComponentAvailable(trikeBody, 6)
	makeComponentAvailable(buggyBody, 6)
	makeComponentAvailable(babaBody, 6)
	makeComponentAvailable(trikeBody, 7)
	makeComponentAvailable(buggyBody, 7)
	makeComponentAvailable(babaBody, 7)
	makeComponentAvailable(spade, 0)
	-- makeComponentAvailable(ecm, 6);
	-- makeComponentAvailable(ecm, 7);
	makeComponentAvailable(wheeledProp, 0)
	makeComponentAvailable(wheeledProp, 1)
	makeComponentAvailable(trackProp, 1)
	makeComponentAvailable(babaProp, 6)
	makeComponentAvailable(babaProp, 7)
	-- makeComponentAvailable(machineGun, 0);
	-- makeComponentAvailable(machineGun, 6);
	-- makeComponentAvailable(machineGun, 7);
	-- makeComponentAvailable(howitzer, 1);
	-- makeComponentAvailable(missile, 1);
	
	-- completeResearch(commander, 0);
	
	setStructureLimits(factory, 5, 0)
	setDefaultSensor(defaultSensor, 0)
end
callbackEvent(initialisedEvent, CALL_GAMEINIT)


---------- stubs ----------

if setDefaultSensor == nil then setDefaultSensor = function() print("stub: setDefaultSensor"); return 0 end end
if makeComponentAvailable == nil then makeComponentAvailable = function() print("stub: makeComponentAvailable"); return 0 end end
if addReticuleButton == nil then addReticuleButton = function() print("stub: addReticuleButton"); return 0 end end
if setStructureLimits == nil then setStructureLimits = function() print("stub: setStructureLimits"); return 0 end end
if enableStructure == nil then enableStructure = function() print("stub: enableStructure"); return 0 end end
