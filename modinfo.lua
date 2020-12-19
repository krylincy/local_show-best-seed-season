name = "Show best seasons for seeds"
author = "krylincy"
version = "1.0"
description = [[Show the best seed season in the seed name. 

Two format options: 
1) long season names for good seasons 
2) short letters where good seasons are capitalized.
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
}