local rebirthRemote = game.ReplicatedStorage.rEvents.rebirthRemote

if rebirthRemote:IsA("RemoteEvent") then
    rebirthRemote:FireServer("rebirthRequest")
else
    warn("rebirthRemote is not a RemoteEvent!")
end
