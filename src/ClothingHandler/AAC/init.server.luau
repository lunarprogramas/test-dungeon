local Shirt = "http://www.roblox.com/asset/?id=10917509535"
local Pants = "http://www.roblox.com/asset/?id=10917510289"

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if player.Team.Name == "Audit and Accountability" then
            character:FindFirstChild("Shirt").ShirtTemplate = Shirt
            character:FindFirstChild("Pants").PantsTemplate = Pants
        end
    end)
end)
