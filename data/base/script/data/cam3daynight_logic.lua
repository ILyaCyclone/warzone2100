-- Generated by wz2lua (implementation file)
version(0) --- version of the script API this script is written for
count = 0
Rdiff = 0
Gdiff = 0
Bdiff = 0
Rnow = 0
Gnow = 0
Bnow = 0

-- change fog every 1 second
-- weather stuff
-- Triggers

-- Events

function startup()
	setBackgroundFog(true)
	setDepthFog(true)
	-- set fog to start colour
	setFogColour(Rstart, Gstart, Bstart)
	Rdiff = Rstart - Rend
	Gdiff = Gstart - Gend
	Bdiff = Bstart - Bend
	playIngameCDAudio()
	deactivateEvent(startup)
end
callbackEvent(startup, CALL_GAMEINIT)

function changeFog()
	Rnow = Rstart - (count * Rdiff / Steps)
	Gnow = Gstart - (count * Gdiff / Steps)
	Bnow = Bstart - (count * Bdiff / Steps)
	setFogColour(Rnow, Gnow, Bnow)
	count = count + 1
	if count > Steps then
		count = 0
		deactivateEvent(changeFog)
	end
end
repeatingEvent(changeFog, 1.0)

-- Weather effects need adding!
function weatherStart()
	if random(10) < 5 then
		setSnow(true)
		repeatingEvent(weatherStop, 100.0)
		deactivateEvent(weatherStart)
	end
end
repeatingEvent(weatherStart, 50.0)

function weatherStop()
	if random(10) < 4 then
		setSnow(false)
		repeatingEvent(weatherStart, 50.0)
		deactivateEvent(weatherStop)
	end
end


---------- stubs ----------

if setEventTrigger == nil then setEventTrigger = function() print("stub: setEventTrigger"); return 0 end end
if random == nil then random = function() print("stub: random"); return 0 end end
if setSnow == nil then setSnow = function() print("stub: setSnow"); return 0 end end
if playIngameCDAudio == nil then playIngameCDAudio = function() print("stub: playIngameCDAudio"); return 0 end end
if setFogColour == nil then setFogColour = function() print("stub: setFogColour"); return 0 end end
if setBackgroundFog == nil then setBackgroundFog = function() print("stub: setBackgroundFog"); return 0 end end
if setDepthFog == nil then setDepthFog = function() print("stub: setDepthFog"); return 0 end end
