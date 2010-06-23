-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "cam1daynight.slo"

-- cam1mknight.vlo
-- Weather and day/night VLO for Cam1
-- make nighttime

-- daytime colour for fog ARIZONA
Rstart = 204
Gstart = 149
Bstart = 70

-- night time colour for fog
Rend = 18
Gend = 14
Bend = 10

-- number of seconds for change (30 mins)
Steps = 1800

--run the code
dofile('cam1daynight_logic.lua')
