local httpService = game:GetService("HttpService")
game.ReplicatedStorage.AdminLogger.OnServerEvent:Connect(function(one, name, userId, groupRank, command)

	local webhook_url = "https://webhook.lewisakura.moe/api/webhooks/1213814032499212290/H0zePm3hm83_7URTnUGRWdh1KScQvCEJTDb3kXCW8HE_V-TnMup2dF1niS4_8WNe658C"
local Table = {
	["content"] = "",
	["embeds"] = {{
		["title"] = "Admin Log",
		["description"] = "",
		["type"] = "rich",
		["color"] = tonumber(0xffffff),
		["fields"] = {
			{
				["name"] = "Admin:",
				["value"] = name .. ":" .. userId,
				["inline"] = true
			},
			{
				["name"] = "Current Group Rank:",
				["value"] = groupRank,
				["inline"] = true
			},
			{
				["name"] = "Command executed:",
				["value"] = command,
				["inline"] = true
			}
		}
	}}
}

local JSONTable = httpService:JSONEncode(Table)
	httpService:PostAsync(webhook_url, JSONTable)
	
end)