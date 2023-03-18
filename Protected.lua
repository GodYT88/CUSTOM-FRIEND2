if not _G.A then
    _G.A = true
_G.TESTOLDP = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").monster.hunt.Changed:connect(function(S)
    local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    if S == true then
        game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "A-60 Start Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
        _G.TESTOLDP = HumanoidRootPart.CFrame
        repeat wait()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "locker" or v.Name == "locker 1" or v.Name == "locker 2" then
        if not v.Seat:FindFirstChild("SeatWeld") then
            local distance = (v.Seat.Position - HumanoidRootPart.Position).Magnitude
                    if distance < 500 then
                HumanoidRootPart.CFrame = v.Seat.CFrame
            end
        end
    end
end
until HumanoidRootPart.Parent.safe.Value == 1
elseif S == false then
    HumanoidRootPart.Parent.Humanoid.Sit = false
    wait()
    HumanoidRootPart.CFrame = _G.TESTOLDP
    game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "A-60 Stop Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
end
end)

game:GetService("Workspace").monster2.hunt.Changed:connect(function(S)
    local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    if S == true then
        game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "Unknow Start Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
        _G.TESTOLDP = HumanoidRootPart.CFrame
        repeat wait()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "locker" or v.Name == "locker 1" or v.Name == "locker 2" then
        if not v.Seat:FindFirstChild("SeatWeld") then
            local distance = (v.Seat.Position - HumanoidRootPart.Position).Magnitude
                    if distance < 500 then
                HumanoidRootPart.CFrame = v.Seat.CFrame
            end
        end
    end
end
until HumanoidRootPart.Parent.safe.Value == 1
elseif S == false then
    HumanoidRootPart.Parent.Humanoid.Sit = false
    wait()
    HumanoidRootPart.CFrame = _G.TESTOLDP
    game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "Unknow Stop Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
end
end)
end
