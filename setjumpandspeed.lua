-- speed
local function setSpeed(value)
    local player = game:GetService("Players").LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = value
    end
end

-- jump power
local function setJumpPower(value)
    local player = game:GetService("Players").LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.JumpPower = value
    end
end

-- how to use
setSpeed(50) -- Example
setJumpPower(100) -- Example
