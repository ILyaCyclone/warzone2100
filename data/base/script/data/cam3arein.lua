-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "reinforcement.slo"

-- VLO file for Landing player Transporters for Cam3A
-- specifies which Templates to use to fill the Transporters

-- cam3AReIn.VLO

player = 0

-- Transport exit and entry
-- 57
transX = {}
transX[0] = 63
-- 127
transY = {}
transY[0] = 118
-- 57
transX[1] = 63
-- 127
transY[1] = 118
-- for player's transport
transporter = "Transporter"

-- 1mins in 10ths of secs
ReinforceTime = 3000
-- how many bonus transport loads the player is allowed
numReinf = 4
-- how many transport loads the player is allowed, before cease (0 - unlimited)
transLimit = 0
-- same as number of arrays listed next
numLoads = 12
-- each transport load should total 10 units (rest go into next load!)
-- Using Collective templates until proper ones done
-- 1st Transport
-- number of this template to load transport with
loadNum = {}
loadNum[0] = 4
loadTemplate = {}
loadTemplate[0] = "P0cam3PyAsltGnTrk"
loadNum[1] = 4
loadTemplate[1] = "P0cam3PyHPVcanTrk"
loadNum[2] = 2
loadTemplate[2] = "P0cam3CobCONTrk"
-- 2nd transport
loadNum[3] = 4
loadTemplate[3] = "P0cam3PyHPVcanTrk"
loadNum[4] = 4
loadTemplate[4] = "P0cam3PyAsltGnTrk"
loadNum[5] = 2
loadTemplate[5] = "P0cam3CobCONTrk"
-- 3rd Transport
loadNum[6] = 4
loadTemplate[6] = "P0cam3PyAsltGnTrk"
loadNum[7] = 3
loadTemplate[7] = "P0cam3PyHPVcanTrk"
loadNum[8] = 3
loadTemplate[8] = "P0cam3PyFlakHT"

-- 4th Transport
loadNum[9] = 4
loadTemplate[9] = "P0cam3PyAsltGnTrk"
loadNum[10] = 4
loadTemplate[10] = "P0cam3PyHPVcanTrk"
loadNum[11] = 2
loadTemplate[11] = "P0cam3PyFlakHT"

noTransSnd = "pcv443.ogg"

--run the code
dofile('reinforcement_logic.lua')
