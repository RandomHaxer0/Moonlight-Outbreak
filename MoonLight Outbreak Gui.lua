local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

function notif(text)
	game.StarterGui:SetCore("SendNotification", {
    Title = "This Script";
    Text = text;
    Icon = "rbxassetid://4452245157";
    Duration = 7;
    })
end
function scrap(text1)
	game.StarterGui:SetCore("SendNotification", {
    Title = "";
    Text = text1;
    Icon = "";
    Duration = 5;
    })
end

pcall(function()
_G.killaura = false
_G.lesscooldown = false
_G.antigrabbed = false
_G.autogetbat2 = false
_G.antifreeze = false
_G.antifurry = false
_G.autofastrespawn = false
_G.godmode2 = false
_G.fatbatremove = false
_G.infstamina = false
_G.nonotifications = false
_G.redbuller = false
_G.oneshot = false
end)

local w = library:CreateWindow("MoonLight OutBreak") -- Creates the window

local b = w:CreateFolder("Toggables")
local v = w:CreateFolder("Misc")
local c = w:CreateFolder("Bringers")

b:Label("",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})

b:Toggle("Kill Aura",function(kaura)
    spawn(function()
        if kaura then
            _G.killaura = true
            notif("Kill Aura On")
        else
            _G.killaura = false
            notif("Kill Aura Off")
        end    
while _G.killaura do task.wait()
    pcall(function()
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do

        if v.Character.Name == game.Players.LocalPlayer.Character.Name or v.Character:FindFirstChild("Humanoid").Health == 0 then
        
        else 
            
        if v.Character:FindFirstChild("Infected") then   
            
                local lp = game.Players.LocalPlayer
                local character = v.Character
                local charactername = v.Name
        
        if (lp.Character and lp.Character:FindFirstChild("Head") and character:FindFirstChild("Head")) then
            local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                  if mag < 15  then

            local ohInstance1 = v.Character["Head"]
            local ohInstance2 = v.Character.Humanoid

            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire"):FireServer(ohInstance1, ohInstance2)
        
        end
        end
        end
        end
        end
    end)
end
end)
end)

b:Toggle("GodMode",function(gmode)
    spawn(function()
        if gmode then
            _G.godmode2 = true
            notif("GodMode On")
            spawn(function()
                local newmsg = Instance.new("Message",workspace)
                newmsg.Text = "Make sure to have a sosoda (healing can)"
                task.wait(3)
                newmsg:Destroy()
            end)    
        else
            _G.godmode2 = false
            notif("GodMode Off")
        end
local godmodeser
godmodeser = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").HealthChanged:Connect(function(newhp)
    pcall(function()
    if _G.godmode2 then    
        if newhp <= 99 then

            for godmodeez = 1,5 do
                game:GetService("Players").LocalPlayer.Character.SoSoda.Script.used:FireServer(game:GetService("Players").LocalPlayer)
                game:GetService("Players").LocalPlayer.Character.SoSoda.Script.used:FireServer(game:GetService("Players").LocalPlayer)
                game:GetService("Players").LocalPlayer.Backpack.SoSoda.Script.used:FireServer(game:GetService("Players").LocalPlayer)
                game:GetService("Players").LocalPlayer.Backpack.SoSoda.Script.used:FireServer(game:GetService("Players").LocalPlayer)
            end    
        else
        end    
    else
        godmodeser:Disconnect()
    end
end)    
end)    
end)
end)

b:Toggle("Anti Grabbed",function(agrabbed)
    spawn(function()
        if agrabbed then
            _G.antigrabbed = true
            notif("Anti Grabbed On")
        else
            _G.antigrabbed = false
            notif("Anti Grabbed Off")
        end
while _G.antigrabbed do task.wait()
    pcall(function()
        if game:GetService("Players").LocalPlayer.Character.Struggling.Value == true then
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bat") then
                    if game:GetService("Players").LocalPlayer.Character.Struggling.Value == true then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bat"))
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        local ohInstance1 = v.Character["Head"]
                        local ohInstance2 = v.Character.Humanoid

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat"):FindFirstChild("Fire"):FireServer(ohInstance1, ohInstance2)
                    end    
                    game:GetService("Players").LocalPlayer.Character.Struggling.Value = false
                end   
                else
                    fireclickdetector(game:GetService("Workspace").Stations["Batstation V2"].Detector.ClickDetector)
                    task.wait(0.2)
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bat"))
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        local ohInstance1 = v.Character["Head"]
                        local ohInstance2 = v.Character.Humanoid

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat"):FindFirstChild("Fire"):FireServer(ohInstance1, ohInstance2)
                    end  
                    game:GetService("Players").LocalPlayer.Character.Struggling.Value = false
                end
            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat") then
                if game:GetService("Players").LocalPlayer.Character.Struggling.Value == true then
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        local ohInstance1 = v.Character["Head"]
                        local ohInstance2 = v.Character.Humanoid

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat"):FindFirstChild("Fire"):FireServer(ohInstance1, ohInstance2)
                    end    
                    game:GetService("Players").LocalPlayer.Character.Struggling.Value = false
                end
                end
                end
            end)
        end
    end)
end)   

b:Toggle("1 Shot",function(oshot)
    spawn(function()
        if oshot then
            _G.oneshot = true
            notif("1 Shot On")
        else
            _G.oneshot = false
            notif("1 Shot Off")
        end
        
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and tostring(self) == "Fire" then
    if _G.oneshot then  
        for shot = 1,15 do
            self.FireServer(self, unpack(args))
        end    
    end
    end
    return namecall(self, table.unpack(args))
end)
end)
end)

b:Toggle("Auto Get Bat",function(autogetbat)
    spawn(function()
        if autogetbat then
            _G.autogetbat2 = true
            notif("Auto Get Bat On")
        else
            _G.autogetbat2 = false
            notif("Auto Get Bat Off")
        end
    while _G.autogetbat2 do task.wait()
        pcall(function()
    
            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bat") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat") then
                fireclickdetector(game:GetService("Workspace").Stations["Batstation V2"].Detector.ClickDetector)
            end    
    
        end)
    
    end
    end)
end)

b:Toggle("Anti Freeze",function(antifrez)
    spawn(function()
        if antifrez then
            _G.antifreeze = true
            notif("Anti Freeze On")
        else
            _G.antifreeze = false
            notif("Anti Freeze Off")
        end
while _G.antifreeze do task.wait()
    pcall(function()
    if _G.antifreeze then
        game:GetService("Players").LocalPlayer.Character.Freeze.FreezePoints.Value = 0
    else
        game:GetService("Players").LocalPlayer.Character.Freeze.FreezePoints.Value = 0
    end
    end)
    end
end)
end)

b:Toggle("Inf Stamina",function(infstam)
    spawn(function()
        if infstam then
            _G.infstamina = true
            notif("Inf Stamina On")
        else
            _G.infstamina = false
            notif("Inf Stamina Off")
        end
while _G.infstamina do task.wait()
    pcall(function()
        if _G.infstamina then
            game:GetService("Players").LocalPlayer.Character.Stamina.Value = 100
        else
        end
    end)    
end 
end)
end)

b:Toggle("Anti Furry",function(antifur)
    spawn(function()
        if antifur then
            _G.antifurry = true
            notif("Anti Furry On")
        else
            _G.antifurry = false
            notif("Anti Furry Off")
        end
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Infected") then
        pcall(function()
            local origin = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
            game:GetService("Players").LocalPlayer.Character:BreakJoints()
            game:GetService("Players").LocalPlayer.Character.Head:Destroy()
            game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
            repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")
            task.wait(0.2)
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(origin)
        end)
    end
    end)
end)

b:Toggle("Auto Fast Respawn",function(autofspawn)
    spawn(function()
        if autofspawn then
            _G.autofastrespawn = true
            notif("Auto Fast Respawn On")
        else
            _G.autofastrespawn = false
            notif("Auto Fast Respawn Off")
        end
    while _G.autofastrespawn do task.wait()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 then
            pcall(function()
                local origin = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                game:GetService("Players").LocalPlayer.Character:BreakJoints()
                game:GetService("Players").LocalPlayer.Character.Head:Destroy()
                game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
                repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")
                task.wait(0.2)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(origin)
            end)  
        end
    end
end)
end)

b:Toggle("Anti Water",function(awater)
    spawn(function()
        if awater then
            local partfolder = Instance.new("Folder",game.Workspace)
            local part1 = Instance.new("Part",partfolder)
            local part2 = Instance.new("Part",partfolder)
            local part3 = Instance.new("Part",partfolder)
            local part4 = Instance.new("Part",partfolder)
            wait()
            part1.Anchored = true
            part2.Anchored = true
            part3.Anchored = true
            part4.Anchored = true
            wait()
            part1.Transparency = 1
            part2.Transparency = 1
            part3.Transparency = 1
            part4.Transparency = 1
            wait()
            part1.Orientation = Vector3.new(0,0,0)
            part2.Orientation = Vector3.new(0,0,0)
            part3.Orientation = Vector3.new(0,0,0)
            part4.Orientation = Vector3.new(0,0,0)
            wait()
            part1.Position = Vector3.new(-198.632217, -9.48843193, -142.13028, 1, -8.63220121e-05, -8.63220121e-05, 8.63220121e-05, 1, -3.72574505e-09, 8.63220121e-05, -3.72574505e-09, 1)
            part1.Size = Vector3.new(22.7528, 14.8273, 24.2291)
            part2.Position = Vector3.new(111.734543, 0.629862309, 163.926758, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            part2.Size = Vector3.new(94.3203, 2.31979, 96.5385)
            part3.Position = Vector3.new(54.8345795, 0.629862309, 592.376709, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            part3.Size = Vector3.new(297.92, 2.31979, 291.439)
            part4.Position = Vector3.new(60.7345657, 0.629862309, 329.476746, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            part4.Size = Vector3.new(157.32, 2.31979, 234.639)

            for i,v in pairs(game.Workspace.AquaticInfectParts:GetChildren()) do
                if v.Name == "WaterBrick" then
                    v.Parent = game.ServerStorage
                end    
            end 
        else    
            for i,v in pairs(game.ServerStorage:GetChildren()) do
                if v.Name == "WaterBrick" then
                    v.Parent = game:GetService("Workspace").AquaticInfectParts
                end    
            end    
            
            workspace.Folder:Destroy()
        end
    end)
end)

b:Toggle("Less Cooldown",function(lesscd)
    spawn(function()
        if lesscd then
            _G.lesscooldown = true
            notif("Less Cooldown On")
        else
            _G.lesscooldown = false
            notif("Less Cooldown Off")
        end
    local lesscdser
    lesscdser = game:GetService("RunService").RenderStepped:Connect(function()
        if _G.lesscooldown then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Active"):Destroy()
            end)
        else
            lesscdser:Disconnect()
        end    
    end)
end)
end)

b:Toggle("Remove MoonLight Spots",function(mlight)
    spawn(function()
        if mlight then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").MoonlightParts:GetChildren()) do
                        if v.Name == "MoonlightParts" then
                            v.Parent = game:GetService("ReplicatedStorage")
                        end
                    end
                end)    
            notif("Remove MoonLight Spots On")
        else
                pcall(function()
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v.Name == "MoonlightParts" then
                            v.Parent = game:GetService("Workspace"):FindFirstChild("MoonlightParts")
                        end
                    end
                end)  
            notif("Remove MoonLight Spots Off")
        end
    end)
end)
        
b:Label("Destroy Gui",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})

b:DestroyGui()

v:Label("",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})

v:Button("Kill All",function()
    spawn(function()
local newmesag = Instance.new("Message",workspace)
newmesag.Text = "Make sure to equip a melee (knife for best)"
task.wait(3)
newmesag:Destroy()
end)

for i,v in pairs(game.Players:GetPlayers()) do
    pcall(function()
    originposhum = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    if v.Character.Name == game.Players.LocalPlayer.Character.Name or v.Character:FindFirstChild("Humanoid").Health <= 0 then
    
    else  
        
    if v.Character:FindFirstChild("Infected") then
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character:FindFirstChild("HumanoidRootPart").Position)
            for ass = 1,15 do
                task.wait()
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire"):FireServer(v.Character.Head, v.Character.Humanoid)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character:FindFirstChild("HumanoidRootPart").Position)
            end
            task.wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(originposhum)
    end
    end
    end)
end
end)

v:Toggle("Fast Bat Removal",function(fbat)
    spawn(function()
        if fbat then
            _G.fatbatremove = true
            notif("Faster Bat Removal On")
        else
            _G.fatbatremove = false
            notif("Faster Bat Removal Off")
        end
    while _G.fatbatremove do task.wait()
        pcall(function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Name == "Bat" then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat").DurabilityNum.Value == 0 then
               game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bat").Parent = game.Players.LocalPlayer.Backpack
               game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bat"):Destroy()
            end
        end
        end)
    end
end)
end)

v:Slider("Speed",{
    min = 16;
    max = 250;
    precise = true;
},function(value)


   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(value)

end)

v:Toggle("Anti Notifications",function(anotif)
    spawn(function()
        if anotif then
            _G.nonotifications = true
            notif("Anti Notifications On")
        else
            _G.nonotifications = false
            notif("Anti Notifications Off")
        end
local runsernotifa 
runsernotifa = game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
    if _G.nonotifications then
        game:GetService("Players").LocalPlayer.PlayerGui.Menu.MoveUp:Destroy()
    else
        runsernotifa:Disconnect()
    end    
    end)
end)    
end)
end)

v:Toggle("RedBull",function(rbull)
    spawn(function()
        if rbull then
            _G.redbuller = true
            notif("RedBull On")
            spawn(function()
            local agb = Instance.new("Message",workspace)
            agb.Text = "Make sure to have a horsepower (red bull) in your backpack"
            task.wait(3)
            agb:Destroy()
            end)
        else
            _G.redbuller = false
            notif("RedBull Off")
        end   
while _G.redbuller do task.wait(0.3)
    
    pcall(function()

        local ohInstance1 = game:GetService("Players").LocalPlayer

        game:GetService("Players").LocalPlayer.Backpack.Horsepower.Script.used:FireServer(ohInstance1)

    end)

end    
end)
end)

v:Button("Fast Respawn",function()
    pcall(function()
        local origin = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        game:GetService("Players").LocalPlayer.Character:BreakJoints()
        game:GetService("Players").LocalPlayer.Character.Head:Destroy()
        game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
        repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")
        task.wait(0.2)
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(origin)
    end)    
end)

v:Label("Destroy Gui",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

v:DestroyGui()

c:Label("",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

c:Button("Bring Knifes",function()
    for i,v in pairs(workspace.SpawnSpots:GetDescendants()) do
		if v.Name:lower() == "knife" and v:IsA("BasePart") then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
    end
end)

c:Button("Bring Healing Cans",function()
    for i,v in pairs(workspace.SpawnSpots:GetDescendants()) do
		if v.Name:lower() == "sosoda" and v:IsA("BasePart") then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
    end
end)

c:Button("Bring Blindfolds",function()
    for i,v in pairs(workspace.SpawnSpots:GetDescendants()) do
		if v.Name:lower() == "blindfold" and v:IsA("BasePart") then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
    end
end)

c:Button("Bring Footwears",function()
    for i,v in pairs(workspace.SpawnSpots:GetDescendants()) do
		if v.Name:lower() == "footwear" and v:IsA("BasePart") then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
    end
end)

c:Button("Bring Scarfs",function()
    for i,v in pairs(workspace.SpawnSpots:GetDescendants()) do
		if v.Name:lower() == "scerf" and v:IsA("BasePart") then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
    end
end)

c:Button("Bring HorsePowers",function()
    for i,v in pairs(workspace.SpawnSpots:GetDescendants()) do
		if v.Name:lower() == "horsepower" and v:IsA("BasePart") then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
    end
end)
