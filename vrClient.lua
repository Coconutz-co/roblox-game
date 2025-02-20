-- vrClient.lua
local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Check if the player is using VR
if not VRService.VREnabled then
    player:Kick("This game is VR-only. Please use a VR headset to play.")
end

-- Lock camera to head tracking
player.CameraMode = Enum.CameraMode.LockFirstPerson
camera.CameraType = Enum.CameraType.Custom

RunService.RenderStepped:Connect(function()
    local head = player.Character and player.Character:FindFirstChild("Head")
    if head then
        camera.CFrame = head.CFrame
    end
end)
