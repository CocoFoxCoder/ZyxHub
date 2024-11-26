-- Simple Auto Rebirth Script (InvokeServer)
-- Ensure this complies with the game's rules before running

-- Define variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rebirthFunction = ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("rebirthRemote")

-- Function to auto-rebirth
local function autoRebirth()
    while true do
        -- Invoke the RemoteFunction
        local success, result = pcall(function()
            return rebirthFunction:InvokeServer()
        end)
        
        -- Handle success or errors
        if success then
            print("Rebirth successful:", result)
        else
            warn("Failed to invoke rebirthRemote:", result)
        end
        
        -- Wait for a short interval to prevent overloading
        wait(0.5) -- Adjust the delay as needed
    end
end

-- Start the auto-rebirth function
autoRebirth()
