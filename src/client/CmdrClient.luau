local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Cmdr = require(ReplicatedStorage:WaitForChild("CmdrClient"))


Cmdr:SetPlaceName("Terminal")
Cmdr:SetActivationKeys({ Enum.KeyCode.LeftAlt })