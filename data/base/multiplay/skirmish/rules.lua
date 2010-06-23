-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "rules.slo"

--
-- variable value file for skirmish games.
-- contains the basic requirements for sk game.
-- alex lee. pumpkin 99.
--

endMsg = "END"
winMsg = "WIN"

-- structures
command = "A0CommandCentre"
factory = "A0LightFactory"
wall = "A0HardcreteMk1Wall"
cornerWall = "A0HardcreteMk1CWall"
oilDerrick = "A0ResourceExtractor"
powerGen = "A0PowerGenerator"
research = "A0ResearchFacility"
commandrelay = "A0ComDroidControl"
cybfac = "A0CyborgFactory"
vtolfac = "A0VTolFactory1"

-- Technologies
-- do x for clean
numCleanTech = 5
-- do x for base
numBaseTech = 20
-- do x for defensive
numDefTech = 42

defTech = {}
defTech[0] = "R-Vehicle-Prop-Wheels"
defTech[1] = "R-Sys-Spade1Mk1"
defTech[2] = "R-Vehicle-Body01"
defTech[3] = "R-Comp-SynapticLink"
defTech[4] = "R-Cyborg-Legs01"

defTech[5] = "R-Wpn-MG1Mk1"
defTech[6] = "R-Defense-HardcreteWall"
defTech[7] = "R-Vehicle-Prop-Wheels"
defTech[8] = "R-Sys-Spade1Mk1"
defTech[9] = "R-Struc-Factory-Cyborg"
defTech[10] = "R-Cyborg-Wpn-MG"
defTech[11] = "R-Defense-Pillbox01"
defTech[12] = "R-Defense-Tower01"
defTech[13] = "R-Vehicle-Body01"
defTech[14] = "R-Sys-Engineering01"
defTech[15] = "R-Struc-CommandRelay"
defTech[16] = "R-Vehicle-Prop-Halftracks"
defTech[17] = "R-Comp-CommandTurret01"
defTech[18] = "R-Sys-Sensor-Turret01"
defTech[19] = "R-Wpn-Flamer01Mk1"

defTech[20] = "R-Vehicle-Body05"
defTech[21] = "R-Struc-Research-Module"
defTech[22] = "R-Struc-PowerModuleMk1"
defTech[23] = "R-Struc-Factory-Module"
defTech[24] = "R-Struc-RepairFacility"
defTech[25] = "R-Sys-MobileRepairTurret01"
defTech[26] = "R-Vehicle-Engine01"
defTech[27] = "R-Cyborg-Wpn-Cannon"
defTech[28] = "R-Cyborg-Wpn-Flamer"
defTech[29] = "R-Wpn-MG3Mk1"
defTech[30] = "R-Wpn-Cannon1Mk1"
defTech[31] = "R-Wpn-Mortar01Lt"
defTech[32] = "R-Defense-Pillbox05"
defTech[33] = "R-Defense-TankTrap01"
defTech[34] = "R-Defense-WallTower02"
defTech[35] = "R-Sys-Sensor-Tower01"
defTech[36] = "R-Defense-Pillbox04"
defTech[37] = "R-Wpn-MG2Mk1"
defTech[38] = "R-Wpn-Rocket05-MiniPod"
defTech[39] = "R-Wpn-MG-Damage01"
defTech[40] = "R-Wpn-Rocket-Damage01"
defTech[41] = "R-Defense-WallTower01"

-------------------------------------------------------------------------
-- Available Research Topics.

-- do x for base
numBaseRes = 3

baseRes = {}
baseRes[0] = "R-Sys-Sensor-Turret01"
baseRes[1] = "R-Wpn-MG1Mk1"
baseRes[2] = "R-Sys-Engineering01"

-- cyborg construction component
CyborgSpade = "CyborgSpade"
-- cyborg repair component
CyborgRepair = "CyborgRepair"

-------------------------------------------------------------------------
-- Other Guff.

-- Base Under Attack
attackSnd1 = "pcv337.ogg"

--run the code
dofile('rules_logic.lua')
