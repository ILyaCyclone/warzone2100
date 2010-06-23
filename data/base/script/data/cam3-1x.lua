-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "cam3-1x.slo"


--[[* cam3-1x.vlo
 *]]--

-- human player
player = 0

-- computer player
enemy = {}
enemy[0] = 3

-- mission targets
numTargets = 4
-- tarStructs[0]	STRUCTURE		293	//Uplink
-- silo
tarStructs = {}
tarStructs[0] = getStructureByID(735)
-- silo
tarStructs[1] = getStructureByID(686)
-- silo
tarStructs[2] = getStructureByID(733)
-- silo
tarStructs[3] = getStructureByID(278)

-- mission target messages
--[[targets[0]		INTMESSAGE		"CM31_TAR_UPLINK"
	targets[0]		INTMESSAGE		"CM31_TAR_SILO1"
	targets[1]		INTMESSAGE		"CM31_TAR_SILO2"
	targets[2]		INTMESSAGE		"CM31_TAR_SILO3"
	targets[3]		INTMESSAGE		"CM31_TAR_SILO4"]]--
-- only need one
targets = "CM31_TAR_UPLINK"

-- mission target area
tarX1 = 3200
tarY1 = 6900
tarX2 = 3700
tarY2 = 7300

-- sub3-1a breifing - so we can remove it when we get to sub3-1b
cam3_1ABrief = "MB3_1A_MSG2"
-- sub3-1b breifing
briefing = "MB3_1B_MSG"
briefing2 = "MB3_1B_MSG2"

-- time for the next mission
secondMissionTime = 15000

-- sound for the start of the mext bit of mission
missileAbort = "labort.ogg"

-- 'get to Mountains' victory condition blip and audio
-- Blip for location
hideLocBlip = "CM31_HIDE_LOC"

-- valley areas
numSafe = 1
-- valley SAFE area
safeX1 = {}
safeX1[0] = 5056
safeY1 = {}
safeY1[0] = 576
safeX2 = {}
safeX2[0] = 8128
safeY2 = {}
safeY2[0] = 2752

numDead = 2
-- valley DEAD area
deadX1 = {}
deadX1[0] = 64
deadY1 = {}
deadY1[0] = 64
deadX2 = {}
deadX2[0] = 5055
deadY2 = {}
deadY2[0] = 8128

-- valley DEAD area
deadX1[1] = 5055
deadY1[1] = 2753
deadX2[1] = 8128
deadY2[1] = 8128

--run the code
dofile('cam3-1x_logic.lua')
