name = "Show best seasons for seeds"
author = "krylincy"
version = "2.0"
description = [[Show the best seed season in the seed name. 

Two format options: 
1) long season names for good seasons 
2) short letters where good seasons are capitalized.

Optional (default off) show the nutrition consume in the format Growth Formula, Compost, Manure. 
For carrot eg. '4++', tomato eg. '22+'
]]

api_version = 10
forumthread = ""
icon_atlas = "preview.xml"
icon = "preview.tex"

dst_compatible = true
client_only_mod = true
all_clients_require_mod = false

configuration_options = {
	{
		name = "displayFormat",
		label = "Format",
        hover = "The format to display, example is good in summer and autumn",
		options = {		
			{description = "(Summer, Autumn)", data = 0},
			{description = "(sSAw)", data = 1}
		},
		default = 0,
	},
	{
		name = "displayNutrition",
		label = "Show Nutrition",
        hover = "Show Nutrition consumption in the Format Growth Formula, Compost, Manure. For carrot eg. '4++', tomato eg. '22+'",
		options = {		
			{description = "No", data = 0},
			{description = "Yes", data = 1}
		},
		default = 0,
	},
}