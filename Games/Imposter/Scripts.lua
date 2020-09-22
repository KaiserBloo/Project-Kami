--Vote Player
game:GetService("ReplicatedStorage").Network.Vote:FireServer("Name")

--Interact 
game:GetService("ReplicatedStorage").Network.Interact:InvokeServer('Emergency')
game:GetService("ReplicatedStorage").Network.Interact:InvokeServer('Double Doors')
game:GetService("ReplicatedStorage").Network.Interact:InvokeServer('PlrName')
game:GetService("ReplicatedStorage").Network.Interact:InvokeServer('Restart Furnace', true)

--Print all roles
for i,v in pairs(game.Players:GetPlayers()) do
    print(v.Name..": "..v.PlayerStats.Role.Value)
end

--Re enable chat
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true)

--Force Enable Jump
local jp = game.Players.LocalPlayer.Character.Humanoid.JumpPower
jp.Changed:Connect(function()
    jp = 50
end)

--Interact with all
for i,v in pairs(workspace.Interact:GetChildren()) do
    game:GetService("ReplicatedStorage").Network.Interact:InvokeServer(v)
end