game.Workspace.ChildAdded:Connect(function(model)
    if model.Name == "GrabParts" then
        local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1
 
        if part_to_impulse then
            
            if part_to_impulse.Parent:FindFirstChildOfClass("Humanoid") then
 
                local head = part_to_impulse.Parent["Head"]
                local a = Instance.new("BodyForce" , head.Parent.HumanoidRootPart)
                a.Force = Vector3.new(2500, 2500, -7500)
                wait(3)
                a:Destroy()
            end
        end
    end
end)
