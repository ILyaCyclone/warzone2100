-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "skTech.slo"

-- ALWAYS MAKE THIS THE SAME AS THE INDEX OF THE LAST ENTRY IN THE camTech[] array
numCamTech = 253
-- ALWAYS MAKE THIS THE ONE MORE THAN THE INDEX OF THE LAST ENTRY IN THE camTech[] array
numCamTechB = 17

initialPowerCl = 2000
initialPowerBa = 3000
initialPowerDe = 4000

-- tech level three
camTech = {}
camTech[0] = "R-Wpn-RocketSlow-ROF03"

-- tech level all
camTech[1] = "R-Defense-HardcreteWall"
camTech[2] = "R-Sys-MobileRepairTurret01"
camTech[3] = "R-Sys-Sensor-Tower01"
camTech[4] = "R-Sys-Sensor-Turret01"
camTech[5] = "R-Sys-Sensor-Upgrade01"
camTech[6] = "R-Sys-Sensor-Upgrade02"
camTech[7] = "R-Vehicle-Body09"
camTech[8] = "R-Vehicle-Prop-VTOL"
camTech[9] = "R-Wpn-Cannon-Accuracy02"
camTech[10] = "R-Wpn-Rocket01-LtAT"
camTech[11] = "R-Wpn-Rocket03-HvAT"
camTech[12] = "R-Wpn-Rocket-Accuracy02"
camTech[13] = "R-Wpn-Rocket-ROF03"
camTech[14] = "R-Wpn-RocketSlow-Accuracy03"
-- tech level one
camTech[15] = "R-Comp-CommandTurret01"
camTech[16] = "R-Comp-SynapticLink"
camTech[17] = "R-Cyborg-Metals01"
camTech[18] = "R-Cyborg-Metals02"
camTech[19] = "R-Cyborg-Wpn-Cannon"
camTech[20] = "R-Cyborg-Wpn-Flamer"
camTech[21] = "R-Cyborg-Wpn-MG"
camTech[22] = "R-Cyborg-Wpn-Rocket"
camTech[23] = "R-Defense-Pillbox01"
camTech[24] = "R-Defense-Pillbox04"
camTech[25] = "R-Defense-Pillbox05"
camTech[26] = "R-Defense-Pillbox06"
camTech[27] = "R-Defense-TankTrap01"
camTech[28] = "R-Defense-Tower01"
camTech[29] = "R-Defense-Tower06"
camTech[30] = "R-Defense-WallTower02"
camTech[31] = "R-Defense-WallTower03"
camTech[32] = "R-Defense-WallTower04"
camTech[33] = "R-Defense-WallUpgrade01"
camTech[34] = "R-Struc-CommandRelay"
camTech[35] = "R-Struc-Factory-Cyborg"
camTech[36] = "R-Struc-Factory-Cyborg-Upgrade01"
camTech[37] = "R-Struc-Factory-Cyborg-Upgrade02"
camTech[38] = "R-Struc-Factory-Module"
camTech[39] = "R-Struc-Factory-Upgrade01"
camTech[40] = "R-Struc-Factory-Upgrade02"
camTech[41] = "R-Struc-Materials01"
camTech[42] = "R-Struc-Materials02"
camTech[43] = "R-Struc-PowerModuleMk1"
camTech[44] = "R-Struc-RepairFacility"
camTech[45] = "R-Struc-Research-Module"
camTech[46] = "R-Struc-Research-Upgrade01"
camTech[47] = "R-Struc-Research-Upgrade02"
camTech[48] = "R-Struc-RprFac-Upgrade01"
camTech[49] = "R-Struc-RprFac-Upgrade02"
camTech[50] = "R-Sys-Spade1Mk1"
camTech[51] = "R-Vehicle-Body01"
camTech[52] = "R-Vehicle-Body04"
camTech[53] = "R-Vehicle-Body05"
camTech[54] = "R-Vehicle-Body08"
camTech[55] = "R-Vehicle-Body11"
camTech[56] = "R-Vehicle-Body12"
camTech[57] = "R-Vehicle-Engine01"
camTech[58] = "R-Vehicle-Engine02"
camTech[59] = "R-Vehicle-Metals01"
camTech[60] = "R-Vehicle-Metals02"
camTech[61] = "R-Vehicle-Prop-Halftracks"
camTech[62] = "R-Vehicle-Prop-Hover"
camTech[63] = "R-Vehicle-Prop-Tracks"
camTech[64] = "R-Vehicle-Prop-Wheels"
camTech[65] = "R-Wpn-Cannon1Mk1"
camTech[66] = "R-Wpn-Cannon2Mk1"
camTech[67] = "R-Wpn-Cannon3Mk1"
camTech[68] = "R-Wpn-Cannon-Damage01"
camTech[69] = "R-Wpn-Cannon-Damage02"
camTech[70] = "R-Wpn-Flamer01Mk1"
camTech[71] = "R-Wpn-Flamer-Damage01"
camTech[72] = "R-Wpn-MG1Mk1"
camTech[73] = "R-Wpn-MG-Damage01"
camTech[74] = "R-Wpn-MG-Damage02"
camTech[75] = "R-Wpn-MG-Damage03"
camTech[76] = "R-Wpn-Mortar01Lt"
camTech[77] = "R-Wpn-Mortar-Damage01"
camTech[78] = "R-Wpn-Mortar-Damage02"
camTech[79] = "R-Wpn-Rocket05-MiniPod"
camTech[80] = "R-Wpn-Rocket-Accuracy01"
camTech[81] = "R-Wpn-Rocket-Damage01"
camTech[82] = "R-Wpn-Rocket-Damage02"
camTech[83] = "R-Wpn-Rocket-ROF01"
camTech[84] = "R-Wpn-RocketSlow-Accuracy01"
camTech[85] = "R-Wpn-RocketSlow-Damage01"
camTech[86] = "R-Wpn-RocketSlow-Damage02"
-- tech level one-two
camTech[87] = "R-Cyborg-Legs01"
camTech[88] = "R-Cyborg-Metals03"
camTech[89] = "R-Defense-MortarPit"
camTech[90] = "R-Defense-MRL"
camTech[91] = "R-Defense-WallTower01"
camTech[92] = "R-Defense-WallTower06"
camTech[93] = "R-Defense-WallUpgrade02"
camTech[94] = "R-Defense-WallUpgrade03"
camTech[95] = "R-Struc-Factory-Cyborg-Upgrade03"
camTech[96] = "R-Struc-Factory-Upgrade03"
camTech[97] = "R-Struc-Materials03"
camTech[98] = "R-Struc-Research-Upgrade03"
camTech[99] = "R-Struc-RprFac-Upgrade03"
camTech[100] = "R-Sys-Engineering01"
camTech[101] = "R-Vehicle-Engine03"
camTech[102] = "R-Vehicle-Metals03"
camTech[103] = "R-Wpn-AAGun03"
camTech[104] = "R-Wpn-Cannon-Accuracy01"
camTech[105] = "R-Wpn-Cannon-Damage03"
camTech[106] = "R-Wpn-Flamer-Damage02"
camTech[107] = "R-Wpn-Flamer-Damage03"
camTech[108] = "R-Wpn-Flamer-ROF01"
camTech[109] = "R-Wpn-MG2Mk1"
camTech[110] = "R-Wpn-MG3Mk1"
camTech[111] = "R-Wpn-MG-ROF01"
camTech[112] = "R-Wpn-Mortar02Hvy"
camTech[113] = "R-Wpn-Mortar-Acc01"
camTech[114] = "R-Wpn-Mortar-Damage03"
camTech[115] = "R-Wpn-Mortar-ROF01"
camTech[116] = "R-Wpn-Rocket02-MRL"
camTech[117] = "R-Wpn-Rocket-Damage03"
camTech[118] = "R-Wpn-Rocket-ROF02"
camTech[119] = "R-Wpn-RocketSlow-Accuracy02"
camTech[120] = "R-Wpn-RocketSlow-Damage03"
-- tech level two
camTech[121] = "R-Cyborg-Armor-Heat01"
camTech[122] = "R-Cyborg-Metals04"
camTech[123] = "R-Cyborg-Metals05"
camTech[124] = "R-Cyborg-Wpn-RotMG-Grd"
camTech[125] = "R-Defense-AASite-QuadBof"
camTech[126] = "R-Defense-AASite-QuadMg1"
camTech[127] = "R-Defense-AASite-QuadRotMg"
camTech[128] = "R-Defense-Emplacement-HPVcannon"
camTech[129] = "R-Defense-Howitzer"
camTech[130] = "R-Defense-HvyHowitzer"
camTech[131] = "R-Defense-HvyMor"
camTech[132] = "R-Defense-IDFRocket"
camTech[133] = "R-Defense-RotCannon"
camTech[134] = "R-Defense-RotMG"
camTech[135] = "R-Defense-RotMor"
camTech[136] = "R-Defense-Wall-RotMg"
camTech[137] = "R-Defense-WallTower-HvyFlamer"
camTech[138] = "R-Defense-WallUpgrade04"
camTech[139] = "R-Defense-WallUpgrade05"
camTech[140] = "R-Defense-Wall-VulcanCan"
camTech[141] = "R-Struc-Factory-Cyborg-Upgrade04"
camTech[142] = "R-Struc-Factory-Cyborg-Upgrade05"
camTech[143] = "R-Struc-Factory-Upgrade04"
camTech[144] = "R-Struc-Factory-Upgrade05"
camTech[145] = "R-Struc-Materials04"
camTech[146] = "R-Struc-Materials05"
camTech[147] = "R-Struc-Research-Upgrade04"
camTech[148] = "R-Struc-Research-Upgrade05"
camTech[149] = "R-Struc-RprFac-Upgrade04"
camTech[150] = "R-Struc-RprFac-Upgrade05"
camTech[151] = "R-Struc-VTOLFactory"
camTech[152] = "R-Struc-VTOLFactory-Upgrade01"
camTech[153] = "R-Struc-VTOLFactory-Upgrade02"
camTech[154] = "R-Struc-VTOLPad"
camTech[155] = "R-Struc-VTOLPad-Upgrade01"
camTech[156] = "R-Struc-VTOLPad-Upgrade02"
camTech[157] = "R-Sys-Sensor-Tower02"
camTech[158] = "R-Sys-VTOLCBS-Turret01"
camTech[159] = "R-Vehicle-Armor-Heat01"
camTech[160] = "R-Vehicle-Body02"
camTech[161] = "R-Vehicle-Body06"
camTech[162] = "R-Vehicle-Engine04"
camTech[163] = "R-Vehicle-Engine05"
camTech[164] = "R-Vehicle-Metals04"
camTech[165] = "R-Vehicle-Metals05"
camTech[166] = "R-Wpn-AAGun02"
camTech[167] = "R-Wpn-AAGun04"
camTech[168] = "R-Wpn-AAGun-Accuracy01"
camTech[169] = "R-Wpn-AAGun-Damage01"
camTech[170] = "R-Wpn-AAGun-Damage02"
camTech[171] = "R-Wpn-AAGun-ROF01"
camTech[172] = "R-Wpn-AAGun-ROF02"
camTech[173] = "R-Wpn-Bomb01"
camTech[174] = "R-Wpn-Bomb02"
camTech[175] = "R-Wpn-Bomb-Accuracy01"
camTech[176] = "R-Wpn-Cannon4AMk1"
camTech[177] = "R-Wpn-Cannon5"
camTech[178] = "R-Wpn-Cannon-Damage04"
camTech[179] = "R-Wpn-Cannon-Damage05"
camTech[180] = "R-Wpn-Cannon-ROF01"
camTech[181] = "R-Wpn-Cannon-ROF02"
camTech[182] = "R-Wpn-Flame2"
camTech[183] = "R-Wpn-Flamer-Damage04"
camTech[184] = "R-Wpn-Flamer-ROF02"
camTech[185] = "R-Wpn-Howitzer-Accuracy01"
camTech[186] = "R-Wpn-Howitzer-Damage01"
camTech[187] = "R-Wpn-Howitzer-Damage02"
camTech[188] = "R-Wpn-HowitzerMk1"
camTech[189] = "R-Wpn-Howitzer-ROF01"
camTech[190] = "R-Wpn-Howitzer-ROF02"
camTech[191] = "R-Wpn-HvyHowitzer"
camTech[192] = "R-Wpn-MG-ROF02"
camTech[193] = "R-Wpn-Mortar3"
camTech[194] = "R-Wpn-Mortar-Damage04"
camTech[195] = "R-Wpn-Mortar-Damage05"
camTech[196] = "R-Wpn-Mortar-ROF02"
camTech[197] = "R-Wpn-Rocket06-IDF"
camTech[198] = "R-Wpn-Rocket-Damage04"
camTech[199] = "R-Wpn-Rocket-Damage05"
camTech[200] = "R-Wpn-RocketSlow-Damage04"
camTech[201] = "R-Wpn-RocketSlow-Damage05"
camTech[202] = "R-Wpn-RocketSlow-ROF01"
camTech[203] = "R-Wpn-RocketSlow-ROF02"
-- tech level two-three
camTech[204] = "R-Cyborg-Armor-Heat02"
camTech[205] = "R-Cyborg-Armor-Heat03"
camTech[206] = "R-Cyborg-Metals06"
camTech[207] = "R-Defense-Pillbox-RotMG"
camTech[208] = "R-Defense-WallTower-HPVcannon"
camTech[209] = "R-Defense-WallUpgrade06"
camTech[210] = "R-Struc-Factory-Cyborg-Upgrade06"
camTech[211] = "R-Struc-Factory-Upgrade06"
camTech[212] = "R-Struc-Materials06"
camTech[213] = "R-Struc-Power-Upgrade01"
camTech[214] = "R-Struc-Power-Upgrade01b"
camTech[215] = "R-Struc-Power-Upgrade01c"
camTech[216] = "R-Struc-Research-Upgrade06"
camTech[217] = "R-Struc-RprFac-Upgrade06"
camTech[218] = "R-Struc-VTOLFactory-Upgrade03"
camTech[219] = "R-Struc-VTOLPad-Upgrade03"
camTech[220] = "R-Sys-CBSensor-Tower01"
camTech[221] = "R-Sys-CBSensor-Turret01"
camTech[222] = "R-Sys-Engineering02"
camTech[223] = "R-Sys-VTOLCBS-Tower01"
camTech[224] = "R-Sys-VTOLStrike-Tower01"
camTech[225] = "R-Sys-VTOLStrike-Turret01"
camTech[226] = "R-Vehicle-Armor-Heat02"
camTech[227] = "R-Vehicle-Armor-Heat03"
camTech[228] = "R-Vehicle-Engine06"
camTech[229] = "R-Vehicle-Metals06"
camTech[230] = "R-Wpn-AAGun-Accuracy02"
camTech[231] = "R-Wpn-AAGun-Damage03"
camTech[232] = "R-Wpn-AAGun-ROF03"
camTech[233] = "R-Wpn-Bomb03"
camTech[234] = "R-Wpn-Bomb-Accuracy02"
camTech[235] = "R-Wpn-Cannon-Damage06"
camTech[236] = "R-Wpn-Cannon-ROF03"
camTech[237] = "R-Wpn-Flamer-Damage05"
camTech[238] = "R-Wpn-Flamer-Damage06"
camTech[239] = "R-Wpn-Flamer-ROF03"
camTech[240] = "R-Wpn-Howitzer03-Rot"
camTech[241] = "R-Wpn-Howitzer-Accuracy02"
camTech[242] = "R-Wpn-Howitzer-Damage03"
camTech[243] = "R-Wpn-Howitzer-ROF03"
camTech[244] = "R-Wpn-MG4"
camTech[245] = "R-Wpn-MG-ROF03"
camTech[246] = "R-Wpn-Mortar-Acc02"
camTech[247] = "R-Wpn-Mortar-Damage06"
camTech[248] = "R-Wpn-Mortar-ROF03"
camTech[249] = "R-Wpn-Rocket07-Tank-Killer"
camTech[250] = "R-Wpn-Rocket-Damage06"
camTech[251] = "R-Defense-HvyFlamer"
camTech[252] = "R-Wpn-RocketSlow-Damage06"
camTech[253] = "R-Cyborg-Sys-ComEng"

camTechB = {}
camTechB[0] = "R-Cyborg-Sys-Mechanic"
camTechB[1] = "R-Cyborg-Wpn-Grenade"
camTechB[2] = "R-Cyborg-Wpn-Thermite"
camTechB[3] = "R-Cyborg-Transport"
camTechB[4] = "R-Sys-MobileRepairTurretHvy"
camTechB[5] = "R-Defense-Cannon6"
camTechB[6] = "R-Wpn-Cannon6TwinAslt"
camTechB[7] = "R-Cyborg-Hvywpn-Acannon"
camTechB[8] = "R-Cyborg-Hvywpn-HPV"
camTechB[9] = "R-Cyborg-Hvywpn-Mcannon"
camTechB[10] = "R-Cyborg-Hvywpn-TK"
camTechB[11] = "R-Defense-Super-Rocket"
camTechB[12] = "R-Defense-Super-Cannon"
camTechB[13] = "R-Defense-WallTower-QuadRotAA"
camTechB[14] = "R-Defense-WallTower-DoubleAAgun"
camTechB[15] = "R-Comp-CommandTurret02"
camTechB[16] = "R-Comp-CommandTurret03"

--run the code
dofile('sktech_logic.lua')
