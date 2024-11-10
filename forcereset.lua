local function forceReset()
    if localPlayer.Character then
        local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        else
            warn("Humanoid not found in player's Character.")
        end
    else
        warn("Player's Character is not available.")
    end
end

-- how to use:
forceReset()
