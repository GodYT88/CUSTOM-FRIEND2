if not _G.A then
game:GetService("Players").LocalPlayer.PlayerGui.stamina.LocalScript.energy.Value = math.huge
game:GetService("Players").LocalPlayer.PlayerGui.hiding.Heartbeat:Destroy()
local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "locker" or v.Name == "locker 1" or v.Name == "locker 2" then
        if not v.Seat:FindFirstChild("SeatWeld") then
            local distance = (v.Seat.Position - HumanoidRootPart.Position).Magnitude
                    if distance < 5 then
                if HumanoidRootPart.Parent.safe.Value == 1 then
                    v.Seat.Disabled = true
                    wait()
                    v.Seat.Disabled = false
                    _G.A = true
                    game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "Done!"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
elseif HumanoidRootPart.Parent.safe.Value == 0 then
    _G.A = false
                end
            end
        end
    end
end
game:GetService("Workspace").monster.hunt.Changed:connect(function(S)
    if S == true then
        game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "A-60 Start Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})

elseif S == false then

    game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "A-60 Stop Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
end
end)

game:GetService("Workspace").monster2.hunt.Changed:connect(function(S)
    if S == true then
        game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "Unknow Start Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})

elseif S == false then

    game.StarterGui:SetCore("SendNotification", {
Title = "GodY Hub"; -- the title (ofc)
Text = "Unknow Stop Hunt"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
end
end)
end
