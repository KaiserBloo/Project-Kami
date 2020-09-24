local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaiserBloo/Project-Kami/master/UILib.lua"))();

--Sections
local Main = library:CreateSection("Main");
local PlayerList =library:CreateSection("Players")

--PlayerList
PlayerList:Label("Will update once game starts/restarts.")
local TextLabel = game.CoreGui.Kami.main.border.Players.holder.label
game.Players.LocalPlayer.PlayerGui.ScreenGui.Overview.Impostor.Changed:connect(function()
    wait(2)
    local Notication = {
    TextLabel.Text = ""
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.PlayerStats.Cooldown.Value > 0 then
            if v.PlayerStats.Alive.Value == true then
                TextLabel.Text = TextLabel.Text..""..v.Name..": Imposter ✅ - ALIVE\n"
            else
                TextLabel.Text = TextLabel.Text..""..v.Name..": Imposter ✅ - DEAD\n"
            end
        else
            if v.PlayerStats.Alive.Value == true then
                TextLabel.Text = TextLabel.Text..""..v.Name..": Innocent ❌- ALIVE\n"
            else
                TextLabel.Text = TextLabel.Text..""..v.Name..": Innocent ❌- DEAD\n"
            end
        end
    end
end)
game.Players.LocalPlayer.PlayerGui.ScreenGui.Overview.Survivor.Changed:connect(function()
    wait(2)
    TextLabel.Text = ""
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.PlayerStats.Cooldown.Value > 0 then
            if v.PlayerStats.Alive.Value == true then
                TextLabel.Text = TextLabel.Text..""..v.Name..": Imposter ✅ - ALIVE\n"
            else
                TextLabel.Text = TextLabel.Text..""..v.Name..": Imposter ✅ - DEAD\n"
            end
        else
            if v.PlayerStats.Alive.Value == true then
                TextLabel.Text = TextLabel.Text..""..v.Name..": Innocent ❌- ALIVE\n"
            else
                TextLabel.Text = TextLabel.Text..""..v.Name..": Innocent ❌- DEAD\n"
            end
        end
    end
end)
--End PlayerList

library:Ready();