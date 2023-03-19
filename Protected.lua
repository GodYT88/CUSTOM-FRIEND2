local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Hidden" then
        local distance = (v.Position - HumanoidRootPart.Position).Magnitude
            if distance < 5 then
                v.Disabled = false
                wait()
                v.Disabled = true
                v.Disabled = false
            end
    end
end
