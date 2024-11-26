-- Define a function to invoke the rebirth remote
local function autoRebirth()
    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer()
end

-- Continuously invoke the function every 0.1 seconds
while true do
    autoRebirth()   -- Call the function to invoke the rebirthRemote
    wait(0.1)       -- Wait for 0.1 seconds before calling it again
end
