-- Auto Rebirth Script for Roblox (using rebirthRemote)
local rebirthRemote = game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest") -- Reference to the rebirth remote event
local waitTime = 1 -- Time in seconds between rebirth attempts

-- Function to perform the rebirth action
local function rebirth()
    -- Fire the remote event to trigger the rebirth
    rebirthRemote:InvokeServer()
end

-- Main loop to keep triggering rebirth every few seconds
while true do
    rebirth() -- Call the rebirth function
    wait(waitTime) -- Wait before triggering again
end
