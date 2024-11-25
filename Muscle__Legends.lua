while true do
    game.ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
    wait(0.1)  -- Wait for 0.1 seconds before running again
end
