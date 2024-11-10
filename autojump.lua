local jumpConnection
local autoJump = false

local function enableAutoJump()
    if jumpConnection then return end

    jumpConnection = RunService.Heartbeat:Connect(function()
        if autoJump and localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid") then
            local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
end

local function disableAutoJump()
    if jumpConnection then
        jumpConnection:Disconnect()
        jumpConnection = nil
    end
end

local function setAutoJump(state)
    autoJump = state
    if autoJump then
        enableAutoJump()
    else
        disableAutoJump()
    end
end

-- how to use: setAutoJump(true) or setAutoJump(false)
