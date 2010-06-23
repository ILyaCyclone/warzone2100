-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "s-demos.slo"

-- Value File for Cam1-2S
-- General Values
player = 0

-- Briefing Stuff
MissionBrief = "SB1_2_MSG"
endMsg = "END"

-- Landing Zone coords for Map to follow
LZ_X1 = 52
LZ_Y1 = 54
LZ_X2 = 54
LZ_Y2 = 56

-- Transport exit coords
exitX = 0
exitY = 32

-- Win or lose
transporter = "Transporter"
NextLev = "SUBDEMO"
-- mision failed
lostSnd = "pcv470.ogg"
-- (60 mins)	//24000	// (40 minutes) number of seconds*10 for mission, -1 for unlimited
timeLimit = 35999

-- Set Structure Limits
powerGen = "A0PowerGenerator"
oilDerrick = "A0ResourceExtractor"
research = "A0ResearchFacility"
factory = "A0LightFactory"
-- powerModuleHack		STRUCTURESTAT		"PowMod1"
command = "A0CommandCentre"
-- Limit on number of Power Generator Buildings
numPow = 1
-- Limit on number of resource Extractors
numExt = 200
-- Limit on number of Factory Buildings
numFac = 5
-- 1		//Limit on number of Research Facility Buildings
numRes = 5

--run the code
dofile('s-demos_logic.lua')
