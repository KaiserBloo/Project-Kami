local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaiserBloo/Project-Kami/master/UILib.lua"))();

local Gamer = library:CreateSection("Main");
Gamer:Toggle("B");
Gamer:Box("C");
Gamer:ColorPicker("D");
Gamer:Dropdown("E", {"A", "B", "C"});
Gamer:Button("Gamer Button");

local Gamer2 = li   brary:CreateSection("B");
Gamer2:Toggle("B");
Gamer2:Box("C");
Gamer2:ColorPicker("D");
Gamer2:Dropdown("E", {"A", "B", "C"});
Gamer2:Button("Gamer Button");

library:Ready();