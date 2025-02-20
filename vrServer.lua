-- vrServer.lua
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

Players.PlayerAdded:Connect(function(player)
    wait(1) -- Small delay to check VR status
    if not VRService.VREnabled then
        player:Kick("This game is VR-only. Please use a VR headset to play.")
    end
end)
