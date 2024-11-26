local rebirthRemote = game.ReplicatedStorage.rEvents:FindFirstChild("rebirthRemote")

if rebirthRemote then
    if rebirthRemote:IsA("RemoteEvent") then
        print("rebirthRemote is a RemoteEvent.")
        rebirthRemote:FireServer("rebirthRequest")
    elseif rebirthRemote:IsA("RemoteFunction") then
        print("rebirthRemote is a RemoteFunction.")
        local response = rebirthRemote:InvokeServer("rebirthRequest")
        print("Server Response:", response)
    else
        warn("rebirthRemote is neither a RemoteEvent nor a RemoteFunction.")
    end
else
    warn("rebirthRemote not found.")
end
