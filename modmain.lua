local PLANT_DEFS = require("prefabs/farm_plant_defs").PLANT_DEFS

local displayFormat = GetModConfigData("displayFormat")

for k, v in pairs(PLANT_DEFS) do	
	if v.product then 
		-- default setup
		local seasonObject = {v.good_seasons.spring and 'Spring' or '', v.good_seasons.summer and 'Summer' or '', v.good_seasons.autumn and 'Autumn' or '', v.good_seasons.winter and 'Winter' or ''}
		
		
		if displayFormat == 1 then
			seasonObject = {v.good_seasons.spring and 'S' or 's', v.good_seasons.summer and 'S' or 's', v.good_seasons.autumn and 'A' or 'a', v.good_seasons.winter and 'W' or 'w'}
		end		
		
		local fullSeasonString = " ("
		local hasPrev = false
		
		for key, value in pairs(seasonObject) do
			if string.len(value) > 0 then
			    if hasPrev then fullSeasonString = fullSeasonString..", " end
				fullSeasonString = fullSeasonString..value
				hasPrev = displayFormat == 0 and true or false
			end
		end
		
		fullSeasonString = fullSeasonString..")"
			
		AddPrefabPostInit(v.product.."_seeds", function(inst)
			inst.displaynamefn = function (inst)
				return GLOBAL.STRINGS.NAMES["KNOWN_"..string.upper(inst.prefab)]..fullSeasonString
			end
		end)	
	end
end

