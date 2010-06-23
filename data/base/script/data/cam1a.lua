-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "cam1a.slo"

-- Value File for Cam1A
-- General Values
player = 0
-- barbarians (base1)
enemy1 = 7
-- barbarians (base2)
enemy2 = 6
-- initial power level
startPower = 1300
-- commandCentre	STRUCTURE	926

-- Starting Tech
viperBody = "Body1REC"
spade = "Spade1Mk1"
wheeledProp = "wheeled01"
mg = getWeapon("MG1Mk1")

-- Starting Tech done as completed research
numTech = 3
tech = {}
tech[0] = "R-Vehicle-Body01"
tech[1] = "R-Sys-Spade1Mk1"
tech[2] = "R-Vehicle-Prop-Wheels"
-- tech[3]		RESEARCHSTAT	"CAM1RESEARCH" //"R-Wpn-MG1Mk1"


-- Set Structure Limits
powerGen = "A0PowerGenerator"
oilDerrick = "A0ResourceExtractor"
research = "A0ResearchFacility"
factory = "A0LightFactory"
-- powerModuleHack		STRUCTURESTAT		"A0PowMod1"
command = "A0CommandCentre"
-- Limit on number of Power Generator Buildings
numPow = 5
-- Limit on number of resource Extractors
numExt = 200
-- Limit on number of Factory Buildings
numFac = 5
-- 1		//Limit on number of Research Facility Buildings
numRes = 5

-- Base Under Attack
attackSnd1 = "pcv337.ogg"

-- Briefing Stuff
MissionBrief = "CMB1_MSG"
MissionBrief2 = "MB1A_MSG"
obj1Msg = "C1A_OBJ1"
incomingSnd = "pcv456.ogg"
endMsg = "END"
-- winMsg		INTMESSAGE	"WIN"

-- Proximity: Artifacts
crate = "Crate"

art1X = 5184
art1Y = 2112
-- get this from base1 factory
art1Get = getStructureByID(8)
art1Snd2 = "pcv352.ogg"
-- art1Msg		INTMESSAGE	"C1A_ART1"
art1Comp = "R-Wpn-Flamer01Mk1"

art2X = 2496
art2Y = 4032
-- get this from base2 southern factory
art2Get = getStructureByID(1256)
art2Snd2 = "pcv352.ogg"
-- art2Msg		INTMESSAGE	"C1A_ART2"
art2Comp = "R-Sys-Engineering01"

art3X = 1856
art3Y = 1600
-- get this from base2 factory
art3Get = getStructureByID(20)
art3Snd2 = "pcv352.ogg"
-- art3Msg		INTMESSAGE	"C1A_ART3"
-- guntowerMG now
art3Comp = "R-Defense-Tower01"

-- 4416
art4X = 3776
-- 5312
art4Y = 4544
-- art4Get		STRUCTURE	3414		//not req'd, placed in script
art4Snd2 = "pcv352.ogg"
-- art4Msg		INTMESSAGE	"C1A_ART4"
art4Comp = "R-Wpn-MG-Damage01"

-- Player Bonus Research Topics given on completion of mission
-- number of topics to enable
numResP0 = 0
resP0 = {}
resP0[0] = "R-Wpn-MG1Mk1"

-- Proximity: Enemy
-- new 1st base
-- base1=factory1
enm0 = getStructureByID(3418)
enm0Msg = "C1A_BASE0"
enm0Snd1 = "pcv375.ogg"
enm0Snd2 = "pcv391.ogg"

-- base1
-- base1=factory1
enm1 = getStructureByID(8)
enm1ID = 8
enm1Msg = "C1A_BASE1"
enm1Snd1 = "pcv374.ogg"
enm1Snd2 = "pcv392.ogg"

-- base2
-- base2=factory1
enm2 = getStructureByID(20)
enm2ID = 20
enm2Msg = "C1A_BASE2"
enm2Snd1 = "pcv374.ogg"
enm2Snd2 = "pcv392.ogg"

-- base2=factory2
enm22 = getStructureByID(1256)
enm22ID = 1256
enm22Msg = "C1A_BASE3"
enm22Snd1 = "pcv374.ogg"
-- enm22Snd2	SOUND		"pcv391.ogg"

-- Win or lose
-- mission failed
lostSnd = "pcv470.ogg"
NextLev = "CAM_1B"
-- 36000		//(1 hour) number of seconds*10 for mission, -1 for unlimited
timeLimit = -1

-- Enemy Tactics
-- build templates
trike = "BarbarianTrike"
buggy = "BarbarianBuggy"
bloke = "BaBaPeople"
jeep = "BabaJeep"

--run the code
dofile('cam1a_logic.lua')
