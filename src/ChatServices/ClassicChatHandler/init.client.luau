local player = game.Players.LocalPlayer
local ChatService = game:GetService("TextChatService")
local UserInputService = game:GetService("UserInputService")

local teamConfig = require(script:WaitForChild("teamConfig"))

local mainGroupRank = player:GetRankInGroup(11459165)

-- Function to enable the chat window configuration
local function enableChatWindow()
    if table.find(teamConfig[11459165], mainGroupRank) then
        local chatWindowConfiguration = ChatService:FindFirstChildOfClass("ChatWindowConfiguration")
        if chatWindowConfiguration then
            chatWindowConfiguration.Enabled = true
        else
        end
    end
end

if table.find(teamConfig[11459165], mainGroupRank) then
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.LeftBracket then
            local chatWindowConfiguration = ChatService:FindFirstChildOfClass("ChatWindowConfiguration")

            if chatWindowConfiguration.Enabled == false then
                chatWindowConfiguration.Enabled = true

            else
                if chatWindowConfiguration.Enabled == true then
                    chatWindowConfiguration.Enabled = false
                end
            end
        end
    end)
end

enableChatWindow()
