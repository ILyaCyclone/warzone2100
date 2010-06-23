-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "demo_p7.slo"

-- Demo Map Script for Player 7

-- player number to use
player = 7
-- scavenger start power
power = 10000

-- base1
numFacts = 4

fact = {}
fact[0] = getStructureByID(243)
factID = {}
factID[0] = 243
-- 7616
assX = {}
assX[0] = 832
-- 1216
assY = {}
assY[0] = 1216
build = {}
build[0] = "BaBaPeople"

fact[1] = getStructureByID(684)
factID[1] = 684
-- 8896
assX[1] = 1216
-- 704
assY[1] = 1152
build[1] = "BarbarianTrike"

fact[2] = getStructureByID(227)
factID[2] = 227
-- 10176
assX[2] = 11328
-- 2880
assY[2] = 11200
build[2] = "BarbarianBuggy"

fact[3] = getStructureByID(226)
factID[3] = 226
-- 10944
assX[3] = 4800
-- 6720
assY[3] = 10496
build[3] = "BabaJeep"

--run the code
dofile('demo_p7_logic.lua')
