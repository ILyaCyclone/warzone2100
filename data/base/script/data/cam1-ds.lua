-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "GenBet.slo"

-- Generic VLO file template for between levels

-- cam1-DS.vlo

-- Next level stuff
-- Start of campaign 2
NextLev = "SUB_1_D"

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
centreX = 1088
centreY = 6592
-- scroll limits (in tile units)
scrollX1 = 0
scrollY1 = 0
scrollX2 = 128
scrollY2 = 128
-- starting radar: 0=zoomed out, 2=zoomed in
zoomLevel = 0

-- MAX 8. Number of Landing zones/areas can't build on (0 = LZ)
numLZ = 1
-- coords of LZs in tile units
LZX = {}
LZX[0] = 11
LZY = {}
LZY[0] = 52
-- special, last LZ is for next map!! (don't count in numLZ)
-- coords of Cam2a LZ in tile units
LZX[1] = 5
LZY[1] = 121

-- Transport exit coords
exitX = 126
exitY = 112

-- Briefings
-- MAX 2. Needs to be same as the number of briefings given next
numBriefs = 2
brief = {}
brief[0] = "MB1D_MSG"
brief[1] = "MB1D_MSG2"
-- 0 remove after playing, 1 keep, 2 don't play immediately
briefVal = {}
briefVal[0] = 0
-- 0 remove after playing, 1 keep, 2 don't play immediately
briefVal[1] = 1
endMsg = "END"

-- Time Limit for this and Sub map
-- 2 hours //set -1 for no time limit, otherwise time in 1/10s
timeLimit = 72000

-- 'Globals'
-- These should be same in each file, but may need slight alterations
-- player's player number
player = 0
-- mission failed
lostSnd = "pcv470.ogg"
transporter = "Transporter"

--run the code
dofile('genbet_logic.lua')
