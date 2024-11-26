-- Simple Auto Rebirth Script
-- Ensure this complies with the game's rules before running

-- Define variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rebirthEvent = ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("rebirthRemote")

-- Function to auto-rebirth
local function autoRebirth()
    while true do
        -- Call the remote event
        rebirthEvent:FireServer()
        -- Wait for a short interval to prevent overloading
        wait(0.5) -- Adjust the delay as needed
    end
end

-- Start the auto-rebirth function
autoRebirth()
