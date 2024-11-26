-- Script to Invoke a RemoteFunction
-- Ensure this complies with the game's rules before running

-- Define variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rebirthFunction = ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("rebirthRemote")

-- Function to repeatedly invoke the RemoteFunction
local function autoInvokeRebirth()
    while true do
        -- Safely invoke the server
        local success, result = pcall(function()
            return rebirthFunction:InvokeServer()
        end)
        
        -- Handle server responses or errors
        if success then
            print("Rebirth invoked successfully:", result) -- result might be a success message or data
        else
            warn("Error invoking rebirthRemote:", result)
        end
        
        -- Wait to prevent overwhelming the server
        wait(1) -- Adjust delay as necessary
    end
end

-- Start the auto-invocation
autoInvoke
