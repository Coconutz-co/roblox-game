-- vrUtils.lua (ModuleScript in ReplicatedStorage)
local VRUtils = {}

function VRUtils.isVRPlayer(player)
    local VRService = game:GetService("VRService")
    return VRService.VREnabled
end

return VRUtils
