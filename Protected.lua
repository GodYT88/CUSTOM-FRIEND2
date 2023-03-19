setclipboard("_G.Multi = 50")

local old; old = hookmetamethod(game, '__namecall', function(self, ...)
  local args = {...}
  local method = getnamecallmethod()

  if not checkcaller() and method == 'InvokeServer' and self.Name == "StrongMan_UpgradeStrength" and args[2] == "Default" then
            args[1] = _G.Multi
        end

  return old(self, unpack(args))
end)

while wait() do
    pcall(function()
    game:GetService("Workspace").Areas.Area1.Exit.Goal.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Workspace").Areas.Area1.Exit.Goal.Size = Vector3.new(9e9,9e9,9e9)
    end)
end
