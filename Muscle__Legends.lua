local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rebirthRemote = ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("rebirthRemote")

-- Auto-fire every 0.1 seconds
while true do
    rebirthRemote:FireServer()  -- Send the event to the server
    wait(0.1)  -- Wait for 0.1 seconds before firing again
end
