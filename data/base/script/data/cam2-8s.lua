-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "GenBet.slo"

-- Generic VLO file template for between levels

-- cam2-8s.vlo

-- Next level stuff
-- Sub map to load
NextLev = "SUB_2_8"

-- Structure Limits
-- MAX 5. Must be same as number of limits given next
numStrucStats = 6
strucStat = {}
strucStat[0] = "A0PowerGenerator"
strucLimit = {}
strucLimit[0] = 5
strucStat[1] = "A0ResourceExtractor"
strucLimit[1] = 200
strucStat[2] = "A0ResearchFacility"
strucLimit[2] = 5
strucStat[3] = "A0LightFactory"
strucLimit[3] = 5
strucStat[4] = "A0CommandCentre"
strucLimit[4] = 1
strucStat[5] = "A0ComDroidControl"
strucLimit[5] = 1

-- Initialisation
-- starting view centre (in world units)
centreX = 11200
centreY = 12864
-- scroll limits (in tile units)
scrollX1 = 0
scrollY1 = 0
scrollX2 = 128
scrollY2 = 128
-- starting radar: 0=zoomed out, 2=zoomed in
zoomLevel = 0

-- MAX 8. Number of Landing zones/areas can't build on (0 = LZ)
numLZ = 2
-- coords of Alpha's LZs in tile units
LZX = {}
LZX[0] = 87
LZY = {}
LZY[0] = 100
-- 97	//coords of Beta's LZ in tile units
LZX[1] = 87
-- 97	//no longer req'd
LZY[1] = 100

-- Transport exit coords
exitX = 126
exitY = 60

-- Briefings
-- MAX 5. Needs to be same as the number of briefings given next
numBriefs = 2
brief = {}
brief[0] = "MB2_8_MSG"
brief[1] = "MB2_8_MSG2"
-- 0 remove after playing, 1 keep, 2 don't play immediately
briefVal = {}
briefVal[0] = 0
-- 0 remove after playing, 1 keep, 2 don't play immediately
briefVal[1] = 1
endMsg = "END"

-- Time Limit for this and Sub map
-- set -1 for no time limit, otherwise time in 1/10s
timeLimit = 35999

-- 'Globals'
-- These should be same in each file, but may need slight alterations
-- player's player number
player = 0
-- mission failed
lostSnd = "pcv470.ogg"
transporter = "Transporter"

--run the code
dofile('genbet_logic.lua')
