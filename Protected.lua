while wait() do
    pcall(function()
    game:GetService("Workspace").Areas.Area1.Exit.Goal.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Workspace").Areas.Area1.Exit.Goal.Size = Vector3.new(9e9,9e9,9e9)
    end)
end
