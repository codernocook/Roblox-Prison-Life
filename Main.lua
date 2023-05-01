if game.PlaceId == 155615604 then

    if shared.PrisonLifeItzporium then
        return
        error("PrisonLife script is running!")
    else
        shared.PrisonLifeItzporium = true
    end

    local LibraryUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local ScriptWindows =  LibraryUI.CreateLib("Prison Life".."", "Sentinel")

    --Tab--
    local PlayerTab = ScriptWindows:NewTab("Player")
    local BlatantTab = ScriptWindows:NewTab("Blatant")
    local GunTab = ScriptWindows:NewTab("Gun")
    local ServerModerator = ScriptWindows:NewTab("ServerMod")
    local ExploitTab = ScriptWindows:NewTab("Exploit")
    -------

    --ControlVar--
    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character or plr.CharacterAdded
    local Humanoid = char:FindFirstChildWhichIsA("Humanoid")
    local HumanoidRootPart = char:FindFirstChild("HumanoidRootPart")
    local SpeedNumber = 16
    local Damage = 20
    local GunChoose = "Remington 870"
    local CrashServerMode = false
    local GunCrashModule = nil
    local GunCrashChoose = "Remington 870"
    local Heartbeat = game:GetService("RunService").Heartbeat
    local Mouse = plr:GetMouse()
    local PlayerInGame = {}
    local UserInputService = game:GetService("UserInputService")
    local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
    --------------
    

    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Home"):FindFirstChild("fadeFrame").Visible = false

    plr.OnTeleport:Connect(function(State)
        if State == Enum.TeleportState.Started then
            if queueteleport then
                queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/codernocook/prisonlife/main/Main.lua'))()")
            end
        end
    end)

    local function loadchar()
        if (not tostring(plr.TeamColor)) then return end;
        if (tostring(plr.TeamColor) == "Medium stone grey") then return "fail" end;
        if (tostring(plr.TeamColor) == "Really red") then
            local args = {
                [1] = "Bright orange"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(args))
            repeat task.wait() until char and char:FindFirstChild("Head");
            task.wait(1)
            firetouchinterest(char:FindFirstChild("Head"), game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation"), 0)
            task.wait(.1)
            firetouchinterest(char:FindFirstChild("Head"), game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation"), 1)
            return "success";
        end

        local args = {
            [1] = tostring(plr.TeamColor)
        }
        
        workspace:FindFirstChild("Remote"):FindFirstChild("TeamEvent"):FireServer(unpack(args))
        return "success";
    end

    local function getItem(itemSent)
        if itemSent == "Remington 870" then
            if (not plr.Character) then return end;
            if (not plr.Character:FindFirstChild("HumanoidRootPart")) then return end;
            local backCframe = plr.Character:FindFirstChild("HumanoidRootPart").CFrame;
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(821.489197, 94.5960846, 2249.05493);
            local args = {
                [1] = workspace:FindFirstChild("Prison_ITEMS"):FindFirstChild("giver"):FindFirstChild("Remington 870"):FindFirstChild("ITEMPICKUP")
            }

            workspace:FindFirstChild("Remote"):FindFirstChild("ItemHandler"):InvokeServer(unpack(args))
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(821.489197, 94.5960846, 2249.05493);
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = true;
            task.wait(1);
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = backCframe;
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = false
        elseif itemSent == "M9" then
            if (not plr.Character) then return end;
            if (not plr.Character:FindFirstChild("HumanoidRootPart")) then return end;
            local backCframe = plr.Character:FindFirstChild("HumanoidRootPart").CFrame;
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(821.489197, 94.5960846, 2249.05493);
            local args = {
                [1] = workspace:FindFirstChild("Prison_ITEMS"):FindFirstChild("giver"):FindFirstChild("M9"):FindFirstChild("ITEMPICKUP")
            }

            workspace:FindFirstChild("Remote"):FindFirstChild("ItemHandler"):InvokeServer(unpack(args))
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(821.489197, 94.5960846, 2249.05493);
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = true;
            task.wait(1);
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = backCframe;
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = false
        elseif itemSent == "AK-47" then
            if (not plr.Character) then return end;
            if (not plr.Character:FindFirstChild("HumanoidRootPart")) then return end;
            local backCframe = plr.Character:FindFirstChild("HumanoidRootPart").CFrame;
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-937.779053, 86.7388382, 2056.79199);
            local args = {
                [1] = workspace:FindFirstChild("Prison_ITEMS"):FindFirstChild("giver"):FindFirstChild("AK-47"):FindFirstChild("ITEMPICKUP")
            }

            workspace:FindFirstChild("Remote"):FindFirstChild("ItemHandler"):InvokeServer(unpack(args))
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-937.779053, 86.7388382, 2056.79199);
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = true;
            task.wait(1);
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = backCframe;
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = false;
        elseif itemSent == "Knife" then
            if (not plr.Character) then return end;
            if (not plr.Character:FindFirstChild("HumanoidRootPart")) then return end;
            local backCframe = plr.Character:FindFirstChild("HumanoidRootPart").CFrame;
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(707.159729, 89.8002167, 2502.80371);
            local getKnifeDisabler = false;
            for _,v in pairs(workspace:FindFirstChild("Prison_ITEMS"):FindFirstChild("single"):GetChildren()) do
                if (getKnifeDisabler == true) then return end;
                if (v.Name == "Crude Knife") then
                    getKnifeDisabler = true;
                    local args = {
                        [1] = v["ITEMPICKUP"]
                    }
                    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                end
            end
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(707.159729, 89.8002167, 2502.80371);
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = true;
            task.wait(1);
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = backCframe;
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = false
        elseif itemSent == "Hammer" then
            if (not plr.Character) then return end;
            if (not plr.Character:FindFirstChild("HumanoidRootPart")) then return end;
            local backCframe = plr.Character:FindFirstChild("HumanoidRootPart").CFrame;
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(773.345642, 90.5059586, 2522.83643);
            local args = {
                [1] = workspace:FindFirstChild("Prison_ITEMS"):FindFirstChild("single"):FindFirstChild("Hammer"):FindFirstChild("ITEMPICKUP")
            }
    
            workspace:FindFirstChild("Remote"):FindFirstChild("ItemHandler"):InvokeServer(unpack(args))
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(773.345642, 90.5059586, 2522.83643);
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = true;
            task.wait(1);
            plr.Character:FindFirstChild("HumanoidRootPart").CFrame = backCframe;
            plr.Character:FindFirstChild("HumanoidRootPart").Anchored = false
        end
    end

    --PlayerTab
    local Fly = PlayerTab:NewSection("Fly")
    Fly:NewToggle("Toggle", "Make you character Fly.", function(state)
        if state then
            local uis = game:GetService("UserInputService")
            local floatName = "Flydude"
            local Tpwalkspeed = 50
            local Float = Instance.new("Part", char)
            Float.Name = floatName
            Float.Transparency = 1
            Float.Size = Vector3.new(2,0.2,1.5)
            Float.Anchored = true
            local FloatValue = -3.1
            Float.CFrame = char:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, FloatValue, 0)
            game:GetService("RunService").Heartbeat:Connect(function()
                Float.CFrame = char:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, FloatValue, 0)
            end)
                task.spawn(function()
                        uis.InputBegan:Connect(function(key)
                            if state == true then
                                if key.KeyCode == Enum.KeyCode.LeftShift then
                                    FloatValue -= 0.5
                                end
                            end
                        end)

                        uis.InputEnded:Connect(function(key)
                            if state == true then
                                if key.KeyCode == Enum.KeyCode.LeftShift then
                                    FloatValue += 0.5
                                end
                            end
                        end)
                end)
            else
            if char:FindFirstChild("Flydude") then
                char:FindFirstChild("Flydude"):Destroy()
            end
        end
    end)
    --
    local Speed = PlayerTab:NewSection("Speed")
    local SpeedEnabled = false
    local SpeedJumpPower = 10

     Speed:NewToggle("Toggle", "Improve your movement.", function(state)
        if state then
            task.spawn(function()
                SpeedEnabled = true
            end)
        else
            task.spawn(function()
                SpeedEnabled = false
                Humanoid.JumpPower = 50
            end)
        end
    end)

    local AlwaysJumpCheck = false

    Speed:NewToggle("AlwaysJump", "Jump when you move.", function(state)
        if state then
            AlwaysJumpCheck = state
        else
            AlwaysJumpCheck = state
        end
    end)

    Speed:NewSlider("Speed", "", 500, 16, function(speedcallback)
        task.spawn(function()
            SpeedNumber = tonumber(speedcallback)
        end)
    end)

    Speed:NewSlider("JumpPower", "", 50, 10, function(jumppowercallback)
        task.spawn(function()
            SpeedJumpPower = tonumber(jumppowercallback)
        end)
    end)

    local JumpPower = PlayerTab:NewSection("JumpPower")
    local JumpPowerRecord = 50

    JumpPower:NewToggle("Toggle", "Make you jump higher.", function(state)
        if state then
            task.spawn(function()
                Humanoid.JumpPower = tonumber(JumpPowerRecord)
            end)
        else
            task.spawn(function()
                Humanoid.JumpPower = 50
            end)
        end
    end)

    JumpPower:NewSlider("JumpPower", "", 500, 50, function(jumppowerrecordcallback)
        task.spawn(function()
            JumpPowerRecord = tonumber(jumppowerrecordcallback)
        end)
    end)

    local BugsFix = PlayerTab:NewSection("BugsFix")

    BugsFix:NewButton("FixBackpack", "Fix backpack not appear", function()
        task.spawn(function()
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
        end)
    end)

    local Character = PlayerTab:NewSection("Character")
    Character:NewButton("LoadCharacter", "Make your character respawn server side type", function()
        task.spawn(function()
            loadchar()
        end)
    end)
    Character:NewButton("RemoveCharacter", "Remove your Character", function()
       task.spawn(function()
        loadchar()
       end)
    end)

    local Team = PlayerTab:NewSection("Team")
    Team:NewButton("Guards", "Change your team to Guards", function()
        task.spawn(function()
            local oldCFrame = HumanoidRootPart.CFrame or "undefined";
            local args = {
                [1] = "Bright blue"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(args))
            repeat task.wait() until char and HumanoidRootPart;
            if (not oldCFrame == "undefined") then
                HumanoidRootPart.CFrame = oldCFrame;
            end;
        end)
    end)

    Team:NewButton("Inmates", "Change your team to Inmates", function()
        task.spawn(function()
            local oldCFrame = HumanoidRootPart.CFrame or "undefined";
            local args = {
                [1] = "Bright orange"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(args))
            repeat task.wait() until char and HumanoidRootPart;
            if (not oldCFrame == "undefined") then
                HumanoidRootPart.CFrame = oldCFrame;
            end;
        end)
    end)

    Team:NewButton("Neutral", "Change your team to Neutral", function()
        task.spawn(function()
            local args = {
                [1] = "Medium stone grey"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(args))
        end)
    end)

    Team:NewButton("Criminals", "Change your team to Criminals", function()
        task.spawn(function()
            if plr.Team == "Guards" or plr.Team == "Neutral" or plr.Team == "Criminals" or plr.Team == nil or plr.Team == "" then
                local oldCFrame = HumanoidRootPart.CFrame or "undefined";
                local args = {
                    [1] = "Bright orange"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(args))
                repeat task.wait() until char and HumanoidRootPart;
                if (not oldCFrame == "undefined") then
                    HumanoidRootPart.CFrame = oldCFrame;
                end;
                firetouchinterest(char:FindFirstChild("Head"), game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation"), 0)
                task.wait(.1)
                firetouchinterest(char:FindFirstChild("Head"), game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation"), 1)
            else
                firetouchinterest(char:FindFirstChild("Head"), game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation"), 0)
                task.wait(.1)
                firetouchinterest(char:FindFirstChild("Head"), game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation"), 1)
            end
        end)
    end)

    Team:NewButton("Black Team", "Turn you into black team so everyone thing you are hacker lol", function()
        task.spawn(function()
            local oldpos = char:FindFirstChild("HumanoidRootPart").CFrame
            task.wait(.1)
            loadchar()
            task.wait(.1)
            char:FindFirstChild("HumanoidRootPart").CFrame = oldpos
        end)
    end)
    ----------

    --BlatantTab--
        local GiveItem = BlatantTab:NewSection("Give Item")
        local GiveItemChoosen = nil

        GiveItem:NewDropdown("Item", "Choose Item you want to get", {"Remington 870", "M9", "AK-47", "Crude Knife", "Hammer"}, function(toolselect)
            task.spawn(function()
                GiveItemChoosen = tostring(toolselect)
            end)
        end)

        GiveItem:NewButton("Get Item", "Get Item you want", function()
            local function GetItem(Location)
                local gunpickup = {
                    [1] = Location
                }
        
                workspace.Remote.ItemHandler:InvokeServer(unpack(gunpickup))
           end
            
            if GiveItemChoosen == "Remington 870" then
                GetItem(workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP)
            elseif GiveItemChoosen == "M9" then
                GetItem(workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP)
            elseif GiveItemChoosen == "AK-47" then
                GetItem(workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP)
            elseif GiveItemChoosen  == "Crude Knife" then
                GetItem(workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP)
            elseif GiveItemChoosen == "Hammer" then
                GetItem(workspace.Prison_ITEMS.single:FindFirstChild("Hammer").ITEMPICKUP)
            end
        end)
        
        GiveItem:NewButton("Give All Item", "Get all of Item in Prison Life i don't think it will work", function()
            task.spawn(function()
                for i, v in pairs(game:GetService("Workspace"):FindFirstChild("Prison_ITEMS"):FindFirstChild("single"):GetChildren()) do
                    local args = {
                        [1] = v:FindFirstChild("ITEMPICKUP")
                    }
                    
                    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                end
                for i, v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
                local args = {
                    [1] = v:FindFirstChild("ITEMPICKUP")
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                end
            end)
        end)

        local KillAura = BlatantTab:NewSection("Kill Aura")
        local KillAuraToggle = false

        KillAura:NewToggle("Toggle", "Punch someone near you", function(state)
            if state then
                task.spawn(function()
                    KillAuraToggle = state
                end)
            else
                task.spawn(function()
                    KillAuraToggle = state
                end)
            end
        end)

        local DeathClick = BlatantTab:NewSection("DeathClick")
        local DeathClickToggle = false
        DeathClick:NewToggle("Toggle", "Click someone they will die", function(state)
            if state then
                DeathClickToggle = true
            else
                DeathClickToggle = false
            end
        end)

        Mouse.Button1Down:Connect(function(hit)
            if DeathClickToggle == true and Mouse.Target.Parent:FindFirstChildWhichIsA("Humanoid") then
                local charclicked = Mouse.Target.Parent
                local plrclicked = game:GetService("Players"):GetPlayerFromCharacter(charclicked)
                if plrclicked ~= plr then
                    for i = 1, 50 do
                        if (0 - (plrclicked.Character:FindFirstChild("HumanoidRootPart").Position.Magnitude - HumanoidRootPart.Position.Magnitude)) < 20 then
                            local args = {
                                [1] = plrclicked
                            }
            
                            game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                        else
                            local PunchOldPos = HumanoidRootPart.CFrame
                            HumanoidRootPart.CFrame = plrclicked.Character:FindFirstChild("HumanoidRootPart").CFrame or plrclicked.Character:FindFirstChild("Torso").CFrame
                            task.wait(.1)
                            local args = {
                                [1] = plrclicked
                            }
            
                            game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                            task.wait(.1)
                            HumanoidRootPart.CFrame = PunchOldPos
                        end
                    end
                end
            end
         end)

        local DeadPunch = BlatantTab:NewSection("DeadPunch")
        local DeadPunchEnabled = false

        DeadPunch:NewToggle("Toggle", "its like superpunch", function(state)
            local PunchPart
            if state then
                task.spawn(function()
                    DeadPunchEnabled = true
                    local Root = HumanoidRootPart or char:FindFirstChild("Torso")
                    if HumanoidRootPart or char.Character:FindFirstChild("Torso") then
                        PunchPart = Instance.new("Part", Root)
                        PunchPart.Name = "PunchPart"
                        PunchPart.Size = Vector3.new(3.5, 5, 3.5)
                        PunchPart.CanCollide = false
                        PunchPart.Anchored = true
                        PunchPart.Transparency = 1
                    end
                    UserInputService.InputBegan:Connect(function(key)
                        PunchPart.Touched:Connect(function(hit)
                            if key.KeyCode == Enum.KeyCode.F and DeadPunchEnabled == true then
                                local plrhit = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent)
                                if DeadPunchEnabled == true and Root and not plrhit == plr then
                                    for Punchloop = 1, 15 do
                                        local args = {
                                            [1] = plrhit
                                        }
                        
                                        game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                                    end
                                end
                            end
                        end)
                    end)
                    repeat task.wait(.01)
                        PunchPart.CFrame = HumanoidRootPart.CFrame
                        if DeadPunchEnabled == false then
                            break
                        end
                    until DeadPunchEnabled == false
                end)
            elseif state == false or Humanoid.Health <= 0 then
                task.spawn(function()
                    if PunchPart ~= nil and PunchPart.ClassName == "Part" then
                        DeadPunchEnabled = false
                        PunchPart:Destroy()
                    end
                end)
            end
        end)

    -----------

    --GunTab--
    local GiveGun = GunTab:NewSection("Give gun")
    local gunGetCoolDown = false;

    GiveGun:NewButton("Give Choosen gun", "Get your gun you want.", function()
        task.spawn(function()
            if GunChoose == "Remington 870" then
                if (gunGetCoolDown == true) then return end;
                gunGetCoolDown = true;
                getItem("Remington 870");
                gunGetCoolDown = false;
                gunGetCoolDown = false;
            elseif GunChoose == "M9" then
                if (gunGetCoolDown == true) then return end;
                gunGetCoolDown = true;
                getItem("M9")
                gunGetCoolDown = false;
            elseif GunChoose == "AK-47" then
                if (gunGetCoolDown == true) then return end;
                if (gunGetCoolDown == true) then return end;
                gunGetCoolDown = true;
                getItem("AK-47")
                gunGetCoolDown = false;
            end
        end)
    end)

    GiveGun:NewDropdown("Remington 870", "Choose your gun", {"Remington 870", "M9", "AK-47"}, function(currentOption)
        task.spawn(function()
            GunChoose = currentOption
        end)
    end)

    GiveGun:NewButton("Give all gun", "Give you gun but sometime it will give you breakfast or lunch.", function()
        task.spawn(function()
            for i, v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
                local args = {
                [1] = v:FindFirstChild("ITEMPICKUP")
            }
            
            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            end
           end)
    end)


    local GunMod = GunTab:NewSection("Gun mod")
    local Gunmodule = nil
    GunMod:NewToggle("Mod All!", "Make your gun OP!", function(state)
        if state then
            task.spawn(function()
                if Gunmodule ~= nil then
                    Gunmodule["MaxAmmo"] = 9999
                    Gunmodule["CurrentAmmo"] = math.huge
                    Gunmodule["FireRate"] = 0.000001
                    Gunmodule["Spread"] = math.huge
                end
            end)
        else
            task.wait()
        end
    end)

    GunMod:NewDropdown("Gun Mod Option", "Choose your gun", {"Remington 870", "M9", "AK-47"}, function(toolselect)
        task.spawn(function()
            if plr.Backpack:FindFirstChild(toolselect) then
                Gunmodule = require(plr.Backpack:FindFirstChild(toolselect):FindFirstChild("GunStates"))
            elseif char:FindFirstChild(toolselect) then
                Gunmodule = require(char:FindFirstChild(toolselect):FindFirstChild("GunStates"))
            end
        end)
    end)

    local InfAmmoEnabled = false

    GunMod:NewToggle("InfAmmo!", "Make your gun Ammo Infinity!", function(state)
        if state then
            task.spawn(function()
                InfAmmoEnabled = true
            end)
        else
            task.spawn(function()
                InfAmmoEnabled = false
            end)
        end
    end)

    local LessFireRateEnabled = false
    GunMod:NewToggle("LessFireRate!", "Make your gun shoot faster!", function(state)
        if state then
            task.spawn(function()
                LessFireRateEnabled = true
            end)
        else
            task.spawn(function()
                LessFireRateEnabled = false
            end)
        end
    end)

    GunMod:NewToggle("Mod with your custom settings!", "Make your gun OP like you want!", function(state)
        task.spawn(function()
            if state then
                if Gunmodule ~= nil then
                    Gunmodule["Damage"] = Damage
                end
            else
                task.wait()
            end
        end)
    end)
    GunMod:NewSlider("Damage", "Change the gun Damage", 100, 10, function(damagecallback)
        task.spawn(function()
            Damage = damagecallback
        end)
    end)


    ----------

    --ServerModerator--
    local PlayerController = ServerModerator:NewSection("PlayerController")
    local PlayerControll = nil
    local KillGunModule
    local LoopTeleportAllowed = false

    local function GetPlayerTable()
        task.spawn(function()
            table.clear(PlayerInGame)
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
               table.insert(PlayerInGame, v.DisplayName)
            end
        end)
    end

    GetPlayerTable()
    
    local PlayerControllerDropDown = PlayerController:NewDropdown("Select Player", "Choose Player you want to controll", PlayerInGame, function(plrselect)
        task.spawn(function()
            for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                if tostring(v.DisplayName) == tostring(plrselect) then
                    PlayerControll = v
                else
                    PlayerControll = PlayerControll or v
                end
            end
        end)
    end)

    local KillPunch = false

    PlayerController:NewButton("Kill", "Kill player you want!", function()
        task.spawn(function()
            local plrlastteam = nil

        if plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
            task.wait()
        else     
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
            }

            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
        end

        task.wait(.1)

        if PlayerControll ~= nil then
            local args = {
                [1] = {
                    [1] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-391.1522521972656, 8.655600547790527, -83.21669006347656)),
                        ["Distance"] = 3.2524313926697,
                        ["Cframe"] = CFrame.new(Vector3.new(840.310791015625, 101.33413696289062, 2267.8798828125), Vector3.new(0.9864164590835571, -0.15174193680286407, -0.06290365755558014)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [2] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-392.4814758300781, -8.449393272399902, -76.72613525390625)),
                        ["Distance"] = 3.2699294090271,
                        ["Cframe"] = CFrame.new(Vector3.new(840.2904663085938, 101.18418884277344, 2267.93505859375), Vector3.new(0.9935879707336426, -0.05921658128499985, -0.096314437687397)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [3] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-389.2170104980469, -2.5053632259368896, -92.21631622314453)),
                        ["Distance"] = 3.1665518283844,
                        ["Cframe"] = CFrame.new(Vector3.new(840.3388671875, 101.23649597167969, 2267.8037109375), Vector3.new(0.9954167008399963, -0.09418468177318573, -0.016576465219259262)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [4] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-393.3539733886719, 3.139889717102051, -72.54520416259766)),
                        ["Distance"] = 3.3218522071838,
                        ["Cframe"] = CFrame.new(Vector3.new(840.2772216796875, 101.28595733642578, 2267.970703125), Vector3.new(0.9859949350357056, -0.11956311762332916, -0.11626961082220078)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [5] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-390.7317199707031, 3.2097764015197754, -85.5477523803711)),
                        ["Distance"] = 3.222757101059,
                        ["Cframe"] = CFrame.new(Vector3.new(840.3179931640625, 101.28642272949219, 2267.8603515625), Vector3.new(0.9910106658935547, -0.12353070080280304, -0.05136203020811081)),
                        ["Hit"] = PlayerControll.Character.Head
                    }
                },
                [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Remington 870")
            }
            
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
            PlayerControll.Character:FindFirstChildWhichIsA("Humanoid").StateChanged:Connect(function(oldstate, newstate)
                if newstate ~= Enum.HumanoidStateType.Dead then
                    KillPunch = true
                    task.wait(.5)
                    KillPunch = false
                end
            end)
        end
        end)
    end)

    PlayerController:NewButton("InstaKill", "Fix Kill Problem and kill player you want!", function()
        task.spawn(function()
            local NeutralTeamSwitch = {
                [1] = "Medium stone grey"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(NeutralTeamSwitch))

            local InmatesTeamSwitch = {
                [1] = "Bright orange"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(InmatesTeamSwitch))
            local lastposInstakill = HumanoidRootPart.CFrame
            lastposInstakill = HumanoidRootPart.CFrame
            loadchar();

        HumanoidRootPart.CFrame = lastposInstakill

        if plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
            task.wait()
        else
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
            }

            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
        end

        if PlayerControll ~= nil then
            local args = {
                [1] = {
                    [1] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-391.1522521972656, 8.655600547790527, -83.21669006347656)),
                        ["Distance"] = 3.2524313926697,
                        ["Cframe"] = CFrame.new(Vector3.new(840.310791015625, 101.33413696289062, 2267.8798828125), Vector3.new(0.9864164590835571, -0.15174193680286407, -0.06290365755558014)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [2] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-392.4814758300781, -8.449393272399902, -76.72613525390625)),
                        ["Distance"] = 3.2699294090271,
                        ["Cframe"] = CFrame.new(Vector3.new(840.2904663085938, 101.18418884277344, 2267.93505859375), Vector3.new(0.9935879707336426, -0.05921658128499985, -0.096314437687397)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [3] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-389.2170104980469, -2.5053632259368896, -92.21631622314453)),
                        ["Distance"] = 3.1665518283844,
                        ["Cframe"] = CFrame.new(Vector3.new(840.3388671875, 101.23649597167969, 2267.8037109375), Vector3.new(0.9954167008399963, -0.09418468177318573, -0.016576465219259262)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [4] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-393.3539733886719, 3.139889717102051, -72.54520416259766)),
                        ["Distance"] = 3.3218522071838,
                        ["Cframe"] = CFrame.new(Vector3.new(840.2772216796875, 101.28595733642578, 2267.970703125), Vector3.new(0.9859949350357056, -0.11956311762332916, -0.11626961082220078)),
                        ["Hit"] = PlayerControll.Character.Head
                    },
                    [5] = {
                        ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-390.7317199707031, 3.2097764015197754, -85.5477523803711)),
                        ["Distance"] = 3.222757101059,
                        ["Cframe"] = CFrame.new(Vector3.new(840.3179931640625, 101.28642272949219, 2267.8603515625), Vector3.new(0.9910106658935547, -0.12353070080280304, -0.05136203020811081)),
                        ["Hit"] = PlayerControll.Character.Head
                    }
                },
                [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Remington 870")
            }
            
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
            PlayerControll.Character:FindFirstChildWhichIsA("Humanoid").StateChanged:Connect(function(oldstate, newstate)
                if newstate ~= Enum.HumanoidStateType.Dead then
                    KillPunch = true
                    task.wait(.5)
                    KillPunch = false
                end
            end)
        end
        end)
    end)

    local LoopKillToggle = false

    PlayerController:NewToggle("LoopKill", "Loop kill the player you want!", function(state)
        if state then
            if plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
                task.wait()
            else     
                local args = {
                    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
                }
    
                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            end
            LoopKillToggle = state
        else
            LoopKillToggle = state
        end
    end)

    PlayerController:NewButton("Punch", "Punch Player you want!", function()
        if PlayerControll ~= nil then
            if PlayerControll ~= nil then
                if (0 - (PlayerControll.Character:FindFirstChild("HumanoidRootPart").Position.Magnitude - HumanoidRootPart.Position.Magnitude)) < 20 then
                    local args = {
                        [1] = PlayerControll
                    }
    
                    game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                else
                    local PunchOldPos = HumanoidRootPart.CFrame
                    HumanoidRootPart.CFrame = PlayerControll.Character:FindFirstChild("HumanoidRootPart").CFrame or PlayerControll.Character:FindFirstChild("Torso").CFrame
                    task.wait(.1)
                    local args = {
                        [1] = PlayerControll
                    }
    
                    game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                    task.wait(.1)
                    HumanoidRootPart.CFrame = PunchOldPos
                end
            end
        end
    end)

    PlayerController:NewButton("Arrest", "Arrest the player you want!", function()
       task.spawn(function()
        local BeforeArrestOldpos
        local OldTeamBeforeArrest
        if PlayerControll ~= nil then
            OldTeamBeforeArrest = "Bright orange"

            if plr.Team == "Guards" then
                BeforeArrestOldpos = char:FindFirstChild("HumanoidRootPart").CFrame
                LoopTeleportAllowed = true
                local HandleArrest = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(HandleArrest))
                
                local arrestremote = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.arrest:InvokeServer(unpack(arrestremote))
                LoopTeleportAllowed = false
                char:FindFirstChild("HumanoidRootPart").CFrame = BeforeArrestOldpos
                if plr.TeamColor == OldTeamBeforeArrest then
                    task.wait()
                else
                    local args = {
                        [1] = OldTeamBeforeArrest
                    }
                    
                    workspace.Remote.TeamEvent:FireServer(unpack(args))
                end
            else
                local args = {
                    [1] = "Bright blue"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(args))
                BeforeArrestOldpos = char:FindFirstChild("HumanoidRootPart").CFrame
                LoopTeleportAllowed = true
                local HandleArrest = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(HandleArrest))
                
                local arrestremote = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.arrest:InvokeServer(unpack(arrestremote))
                LoopTeleportAllowed = false
                char:FindFirstChild("HumanoidRootPart").CFrame = BeforeArrestOldpos
                if plr.TeamColor == OldTeamBeforeArrest then
                    task.wait()
                else
                    local args = {
                        [1] = OldTeamBeforeArrest
                    }
                    
                    workspace.Remote.TeamEvent:FireServer(unpack(args))
                end
            end
           end
       end)
    end)

    local LoopTeleportBring = false

    PlayerController:NewButton("Criminal", "Turn player you want into criminal", function()
        loadchar();

        local oldposbeforebring = char:FindFirstChild("HumanoidRootPart").CFrame

        local Knifepickup = {
            [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
        }

        workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))

        task.wait(.1)

        char:FindFirstChildWhichIsA("Humanoid"):Destroy()
        Instance.new("Humanoid", char)

        if plr.Backpack:FindFirstChild("Crude Knife") then
            plr.Backpack:FindFirstChild("Crude Knife").Parent = char
        elseif char:FindFirstChild("Crude Knife") then
            task.wait()
        elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
            workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))
            plr.Backpack:FindFirstChild("Crude Knife").Parent = char
        end
        LoopTeleportBring = true
        task.wait(.5)
        LoopTeleportBring = false
        char:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation").CFrame
        task.wait(.5)
        loadchar();
        task.wait(.1)
        char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
    end)

    PlayerController:NewButton("Freeze", "Using Taser to make player freeze", function()
        task.spawn(function()
            if plr.Team == "Guards" then
                task.wait()
            else
                local args = {
                    [1] = "Bright blue"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(args))
                task.wait(.1)
                    local oldcharbeforefreeze = HumanoidRootPart.CFrame
                    loadchar();
                    if PlayerControll ~= nil then
                        local TaserShoot = {
                            [1] = {
                                [1] = {
                                    ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-391.1522521972656, 8.655600547790527, -83.21669006347656)),
                                    ["Distance"] = 3.2524313926697,
                                    ["Cframe"] = CFrame.new(Vector3.new(840.310791015625, 101.33413696289062, 2267.8798828125), Vector3.new(0.9864164590835571, -0.15174193680286407, -0.06290365755558014)),
                                    ["Hit"] = PlayerControll.Character.Head
                                },
                                [2] = {
                                    ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-392.4814758300781, -8.449393272399902, -76.72613525390625)),
                                    ["Distance"] = 3.2699294090271,
                                    ["Cframe"] = CFrame.new(Vector3.new(840.2904663085938, 101.18418884277344, 2267.93505859375), Vector3.new(0.9935879707336426, -0.05921658128499985, -0.096314437687397)),
                                    ["Hit"] = PlayerControll.Character.Head
                                },
                                [3] = {
                                    ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-389.2170104980469, -2.5053632259368896, -92.21631622314453)),
                                    ["Distance"] = 3.1665518283844,
                                    ["Cframe"] = CFrame.new(Vector3.new(840.3388671875, 101.23649597167969, 2267.8037109375), Vector3.new(0.9954167008399963, -0.09418468177318573, -0.016576465219259262)),
                                    ["Hit"] = PlayerControll.Character.Head
                                },
                                [4] = {
                                    ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-393.3539733886719, 3.139889717102051, -72.54520416259766)),
                                    ["Distance"] = 3.3218522071838,
                                    ["Cframe"] = CFrame.new(Vector3.new(840.2772216796875, 101.28595733642578, 2267.970703125), Vector3.new(0.9859949350357056, -0.11956311762332916, -0.11626961082220078)),
                                    ["Hit"] = PlayerControll.Character.Head
                                },
                                [5] = {
                                    ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-390.7317199707031, 3.2097764015197754, -85.5477523803711)),
                                    ["Distance"] = 3.222757101059,
                                    ["Cframe"] = CFrame.new(Vector3.new(840.3179931640625, 101.28642272949219, 2267.8603515625), Vector3.new(0.9910106658935547, -0.12353070080280304, -0.05136203020811081)),
                                    ["Hit"] = PlayerControll.Character.Head
                                }
                            },
                            [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser")
                        }
                        
                        game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(TaserShoot))
                        if plr.Team == "Inmates" then
                            task.wait()
                        else
                            local args = {
                                [1] = "Bright orange"
                            }
                            
                            workspace.Remote.TeamEvent:FireServer(unpack(args))
                        end
                        local FreezeLoadChar1 = {
                            [1] = plr.Name
                        }
                        
                        loadchar();
                        task.wait(.1)
                        HumanoidRootPart.CFrame = oldcharbeforefreeze
                    end
            end
        end)
    end)

    PlayerController:NewButton("Bring", "Bring player you want to you!", function()
        loadchar();

        local oldposbeforebring = char:FindFirstChild("HumanoidRootPart").CFrame

        local Knifepickup = {
            [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
        }

        workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))

        task.wait(.1)

        char:FindFirstChildWhichIsA("Humanoid"):Destroy()
        Instance.new("Humanoid", char)

        if plr.Backpack:FindFirstChild("Crude Knife") then
            plr.Backpack:FindFirstChild("Crude Knife").Parent = char
        elseif char:FindFirstChild("Crude Knife") then
            task.wait()
        elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
            local Knifepickup = {
                [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
            }
    
            workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))
            plr.Backpack:FindFirstChild("Crude Knife").Parent = char
        end
        LoopTeleportBring = true
        task.wait(.5)
        LoopTeleportBring = false
        char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
        task.wait(.5)
        loadchar();
        task.wait(.1)
        char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
    end)

    PlayerController:NewButton("Trap", "Trap player you want into a building!", function()
        loadchar();
        local oldposbeforebring = char:FindFirstChild("HumanoidRootPart").CFrame

        local Knifepickup = {
            [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
        }

        workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))

        task.wait(.1)

        char:FindFirstChildWhichIsA("Humanoid"):Destroy()
        Instance.new("Humanoid", char)

        if plr.Backpack:FindFirstChild("Crude Knife") then
            plr.Backpack:FindFirstChild("Crude Knife").Parent = char
        elseif char:FindFirstChild("Crude Knife") then
            task.wait()
        elseif not plr.Backpack:FindFirstChild("Crude Knife") or char:FindFirstChild("Crude Knife") then
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Crude Knife").ITEMPICKUP
            }

            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            plr.Backpack:FindFirstChild("Crude Knife").Parent = char
        end
        LoopTeleportBring = true
        task.wait(.5)
        LoopTeleportBring = false
        char:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-328.772797, 84.2401199, 1953.56274, -0.774003625, 3.31737269e-08, -0.633181155, 4.14672492e-08, 1, 1.70239745e-09, 0.633181155, -2.49386201e-08, -0.774003625)
        task.wait(.5)
        loadchar();
        task.wait(.1)
        char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
    end)
    local SpectateConnection = nil
    local viewDied = nil

    PlayerController:NewToggle("Spectate", "Wiew player cam", function(state)
        if state then
            if PlayerControll ~= nil then
                task.spawn(function()
                    if PlayerControll.Character then
                        game:GetService("Workspace").CurrentCamera.CameraSubject = PlayerControll.Character
                        -- from inf yield
                        local function viewDiedFunc()
                            repeat wait() until PlayerControll.Character ~= nil 
                            workspace.CurrentCamera.CameraSubject = PlayerControll.Character
                        end
                        viewDied = PlayerControll.CharacterAdded:Connect(viewDiedFunc)
                        local function CameraSubject()
                            game:GetService("Workspace").CurrentCamera.CameraSubject = PlayerControll.Character
                        end
                        SpectateConnection = game:GetService("Workspace").CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(CameraSubject)
                    end
                end)
            end
        else
           task.spawn(function()
            if SpectateConnection ~= nil then
                SpectateConnection:Disconnect()
                viewDied:Disconnect()
            end
            game:GetService("Workspace").CurrentCamera.CameraSubject = char
           end)
        end
    end)


    PlayerController:NewButton("Teleport", "Teleport to selected player!", function()
        task.spawn(function()
            if PlayerControll ~= nil then
                if Humanoid and Humanoid.Sit == true then
                    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
                task.wait(.1)
                char:FindFirstChild("HumanoidRootPart").CFrame = PlayerControll.Character:FindFirstChild("HumanoidRootPart").CFrame
            end
        end)
    end)

    PlayerController:NewToggle("LoopTeleport", "Teleport to selected player!", function(state)
        if state then
            task.spawn(function()
               LoopTeleportAllowed = state
            end)
        else
            task.spawn(function()
                LoopTeleportAllowed = state
            end)
        end
    end)

    local SwitchTeam = nil

    PlayerController:NewDropdown("Team", "Choose team you want", {"Inmates", "Criminals"}, function(teamselect)
        task.spawn(function()
            SwitchTeam = tostring(teamselect)
        end)
    end)

    PlayerController:NewButton("SwitchTeam", "Switch player team", function()
        if SwitchTeam == "Inmates" then
            loadchar();
    
            local oldposbeforebring = char:FindFirstChild("HumanoidRootPart").CFrame
    
            local Knifepickup = {
                [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
            }
    
            workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))
    
            task.wait(.1)
    
            char:FindFirstChildWhichIsA("Humanoid"):Destroy()
            Instance.new("Humanoid", char)
    
            if plr.Backpack:FindFirstChild("Crude Knife") then
                plr.Backpack:FindFirstChild("Crude Knife").Parent = char
            elseif char:FindFirstChild("Crude Knife") then
                task.wait()
            elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
                workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))
                plr.Backpack:FindFirstChild("Crude Knife").Parent = char
            end
            LoopTeleportBring = true
            task.wait(.5)
            LoopTeleportBring = false
            char:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation").CFrame
            task.wait(.5)
            loadchar();
            task.wait(.1)
            char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
            task.wait(.1)
            local BeforeArrestOldpos
        local OldTeamBeforeArrest
        if PlayerControll ~= nil then
            OldTeamBeforeArrest = "Bright orange"

            if plr.Team == "Guards" then
                BeforeArrestOldpos = char:FindFirstChild("HumanoidRootPart").CFrame
                LoopTeleportAllowed = true
                local HandleArrest = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(HandleArrest))
                
                local arrestremote = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.arrest:InvokeServer(unpack(arrestremote))
                LoopTeleportAllowed = false
                char:FindFirstChild("HumanoidRootPart").CFrame = BeforeArrestOldpos
                if plr.TeamColor == OldTeamBeforeArrest then
                    task.wait()
                else
                    local args = {
                        [1] = OldTeamBeforeArrest
                    }
                    
                    workspace.Remote.TeamEvent:FireServer(unpack(args))
                end
            else
                local args = {
                    [1] = "Bright blue"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(args))
                BeforeArrestOldpos = char:FindFirstChild("HumanoidRootPart").CFrame
                LoopTeleportAllowed = true
                local HandleArrest = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(HandleArrest))
                
                local arrestremote = {
                    [1] = PlayerControll.Character.Head
                }
                
                workspace.Remote.arrest:InvokeServer(unpack(arrestremote))
                LoopTeleportAllowed = false
                char:FindFirstChild("HumanoidRootPart").CFrame = BeforeArrestOldpos
                if plr.TeamColor == OldTeamBeforeArrest then
                    task.wait()
                else
                    local args = {
                        [1] = OldTeamBeforeArrest
                    }
                    
                    workspace.Remote.TeamEvent:FireServer(unpack(args))
                end
            end
           end
        elseif SwitchTeam == "Criminals" then
            loadchar();
    
            local oldposbeforebring = char:FindFirstChild("HumanoidRootPart").CFrame
    
            local Knifepickup = {
                [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
            }
    
            workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))
    
            task.wait(.1)
    
            char:FindFirstChildWhichIsA("Humanoid"):Destroy()
            Instance.new("Humanoid", char)
    
            if plr.Backpack:FindFirstChild("Crude Knife") then
                plr.Backpack:FindFirstChild("Crude Knife").Parent = char
            elseif char:FindFirstChild("Crude Knife") then
                task.wait()
            elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
                workspace.Remote.ItemHandler:InvokeServer(unpack(Knifepickup))
                plr.Backpack:FindFirstChild("Crude Knife").Parent = char
            end
            LoopTeleportBring = true
            task.wait(.5)
            LoopTeleportBring = false
            char:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation").CFrame
            task.wait(.5)
            loadchar();
            task.wait(.1)
            char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
        end
    end)

    local GiveToolChoosen = nil

    PlayerController:NewDropdown("Tool", "Choose tool you want to give", {"Remington 870", "M9", "AK-47", "Crude Knife", "Hammer", "Taser", "Handcuffs"}, function(toolselect)
        task.spawn(function()
            GiveToolChoosen = tostring(toolselect)
        end)
    end)

    PlayerController:NewButton("Give Tool", "Give Tool you want to player", function()
        task.spawn(function()
            loadchar();
            local oldposbeforebring = char:FindFirstChild("HumanoidRootPart").CFrame
            
            if GiveToolChoosen == "Remington 870" then
                getItem("Remington 870")
            elseif GiveToolChoosen == "M9" then
                getItem("M9")
            elseif GiveToolChoosen == "AK-47" then
                getItem("AK-47")
            elseif GiveToolChoosen  == "Crude Knife" then
                getItem("Knife")
            elseif GiveToolChoosen == "Hammer" then
                getItem("Hammer")
            elseif GiveToolChoosen == "Taser" then
                local guardthing = {
                    [1] = "Bright blue"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(guardthing))
                loadchar();
            elseif GiveToolChoosen == "Handcuffs" then
                local guardthing = {
                    [1] = "Bright blue"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(guardthing))
                loadchar();
            end

            task.wait(.1)
    
            char:FindFirstChildWhichIsA("Humanoid"):Destroy()
            Instance.new("Humanoid", char)
    
            if plr.Backpack:FindFirstChild(GiveToolChoosen) then
                plr.Backpack:FindFirstChild(GiveToolChoosen).Parent = char
            elseif char:FindFirstChild(GiveToolChoosen) then
                task.wait()
            elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
                local args = {
                    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
                }
    
                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                plr.Backpack:FindFirstChild("Remington 870").Parent = char
            end
            LoopTeleportBring = true
            task.wait(.5)
            LoopTeleportBring = false
            task.wait(.5)
            loadchar();
            task.wait(.1)
            char:FindFirstChild("HumanoidRootPart").CFrame = oldposbeforebring
        end)
    end)



    -------------------

    --ExploitTab--
    local CrashServer = ExploitTab:NewSection("ServerCrasher")
    local MaxCrashPacket = 20
    local Raypos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local RayRotatepos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local CrashServerType = "GunCrash"
    local PacketCrashTable = {
        [1] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [2] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [3] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [4] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [5] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [6] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [7] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [8] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [9] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [10] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [11] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [12] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [13] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [14] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [15] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [16] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [17] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [18] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [19] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [20] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [21] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [22] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [23] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [24] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [25] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [26] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [27] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [28] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [29] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [30] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [31] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [32] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [33] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [34] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [35] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [36] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [37] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [38] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [39] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [40] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [41] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [42] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [43] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [44] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [45] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [46] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [47] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [48] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [49] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
        [50] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
    }

    CrashServer:NewToggle("Crash!", "Make the server laggy roblox will shut down it!", function(state)
        if state == true then
            task.spawn(function()
                if CrashServerType == "RespawnCrash" then
                    local args = {
                        [1] = "Bright blue"
                    }
                    
                    workspace.Remote.TeamEvent:FireServer(unpack(args))
                end
                CrashServerMode = true
            end)
        else
            task.spawn(function()
                CrashServerMode = false
            end)
        end
    end)

    CrashServer:NewDropdown("CrashType", "Choose Type of server crash", {"GunCrash", "CarSpamCrash", "RespawnCrash", "PunchCrash"}, function(crashchoose)
        task.spawn(function()
            CrashServerType = tostring(crashchoose)
        end)
    end)

    CrashServer:NewDropdown("GunCrash", "Choose your gun", {"Remington 870", "M9", "AK-47"}, function(toolselect)
        task.spawn(function()
            GunCrashChoose = toolselect
            if GunCrashChoose == "Remington 870" then
                GunCrashModule = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Remington 870")
            elseif GunCrashChoose == "M9" then
                GunCrashModule = game:GetService("Players").LocalPlayer.Character:FindFirstChild("M9")
            elseif GunCrashChoose == "AK-47" then
                GunCrashModule = game:GetService("Players").LocalPlayer.Character:FindFirstChild("AK-47")
            end
        end)
    end)

    CrashServer:NewSlider("Packet", "Change Max Crash Packet", 100, 20, function(PacketCallBack)
       task.spawn(function()
            MaxCrashPacket = tonumber(PacketCallBack)
       end)
    end)

    local RemoveAllDoor = ExploitTab:NewSection("Door")
    local RemoteAllDoorLoop = false
    local oldremovedoorteam

    RemoveAllDoor:NewToggle("Remove All Doors", "Remove all door in server sidely everyone will see the door remove!", function(state)
        if state then
            task.spawn(function()
                oldremovedoorteam = plr.TeamColor
                if plr.Team == "Guards" then
                    task.wait()
                else
                    if plr.Backpack:FindFirstChild("Keycard") then
                        RemoteAllDoorLoop = true
                    else
                        local args = {
                            [1] = "Bright blue"
                        }
                        
                        workspace.Remote.TeamEvent:FireServer(unpack(args))
                        RemoteAllDoorLoop = true
                    end
                end
            end)
        else
            task.spawn(function()
                RemoteAllDoorLoop = false
                if oldremovedoorteam == nil or oldremovedoorteam == "" then
                    task.wait()
                else
                    if plr.TeamColor ~= oldremovedoorteam then
                        RemoteAllDoorLoop = false
                        local args = {
                            [1] = "Bright orange"
                        }
                        
                        workspace.Remote.TeamEvent:FireServer(unpack(args))
                    end
                end
            end)
        end
    end)

    local ConsoleSpammer = ExploitTab:NewSection("ConsoleSpammer")
    local ConsoleSpammerEnabled = false
    ConsoleSpammer:NewToggle("Toggle", "Spam server side console error", function(state)
        if state == true then
            if game:GetService("ReplicatedStorage"):FindFirstChild("ServerConsoleError") then
                task.wait()
            else
                local InvaldPart = Instance.new("Part", game:GetService("ReplicatedStorage"))
                InvaldPart.Name = "ServerConsoleError"
            end
            ConsoleSpammerEnabled = state
        else
            ConsoleSpammerEnabled = state
            if game:GetService("ReplicatedStorage"):FindFirstChild("ServerConsoleError") then
                game:GetService("ReplicatedStorage"):FindFirstChild("ServerConsoleError"):Destroy()
            end
        end
    end)

    local GodMode = ExploitTab:NewSection("GodMode")
    local GodModeEnabled = nil;
    local GodModeHealth = nil;
    local GodModeCharCheck = nil;

    GodMode:NewToggle("GodMode", "Turn you into god!", function(state)
        if state then
            task.spawn(function()
                if (not Humanoid or not HumanoidRootPart) then return end;
                local oldCFrame = nil;

                GodModeEnabled = char:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
                    task.spawn(function()
                        if (char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("handcuffedGui")) then return end;
                        char:FindFirstChildWhichIsA("Humanoid").BreakJointsOnDeath = false;
                        char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, false);
                        oldCFrame = HumanoidRootPart.CFrame;
                        loadchar();
                    end)
                end)

                GodModeHealth = char:FindFirstChildWhichIsA("Humanoid").HealthChanged:Connect(function(healthChanged)
                    if (healthChanged <= 0) then
                        char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true);
                        char:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead);
                    end
                end)

                GodModeCharCheck = plr.CharacterAdded:Connect(function(charadded)
                    task.spawn(function()
                        repeat task.wait() until charadded:FindFirstChildWhichIsA("Humanoid") and charadded:FindFirstChild("HumanoidRootPart");

                        if (oldCFrame == nil) then return end;
                        plr.Character:FindFirstChild("HumanoidRootPart").CFrame = oldCFrame;
                        oldCFrame = nil;
                        char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true);

                        GodModeEnabled = charadded:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
                            if (charadded:FindFirstChild("Head") and charadded:FindFirstChild("Head"):FindFirstChild("handcuffedGui")) then return end;
                            charadded:FindFirstChildWhichIsA("Humanoid").BreakJointsOnDeath = false;
                            charadded:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, false);
                            oldCFrame = charadded:FindFirstChild("HumanoidRootPart").CFrame;
                            loadchar();
                        end)

                        GodModeHealth = charadded:FindFirstChildWhichIsA("Humanoid").HealthChanged:Connect(function(healthChanged)
                            if (healthChanged <= 0) then
                                charadded:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true);
                                charadded:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead);
                            end
                        end)
                    end)
                end)
            end)
        else
            task.spawn(function()
                if (GodModeEnabled) then
                    GodModeEnabled:Disconnect()
                    GodModeEnabled = nil;
                end

                if (GodModeCharCheck) then
                    GodModeCharCheck:Disconnect()
                    GodModeCharCheck = nil;
                end

                if (GodModeHealth) then
                    GodModeHealth:Disconnect()
                    GodModeHealth = nil;
                end

                char:FindFirstChildWhichIsA("Humanoid").BreakJointsOnDeath = true;
                char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true);
            end)
        end
    end)

    local AntiArrest = ExploitTab:NewSection("AntiArrest");
    local antiArrest_Checker = nil;
    local antiArrest_charcheck = nil;

    AntiArrest:NewToggle("AntiArrest", "Prevent you from getting arrested", function(state)
        if (state) then
            repeat task.wait() until plr and plr.Character and plr.Character:FindFirstChild("Head")
            local oldCFrame = nil;

            antiArrest_Checker = plr.Character:FindFirstChild("Head").ChildAdded:Connect(function()
                if (char:FindFirstChild("Head") and charadded:FindFirstChild("Head"):FindFirstChild("handcuffedGui")) then
                    if (not Humanoid or not HumanoidRootPart) then return end;
                    char:FindFirstChildWhichIsA("Humanoid").BreakJointsOnDeath = false;
                    char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, false);
                    oldCFrame = HumanoidRootPart.CFrame;
                    loadchar();
                end
            end)

            antiArrest_charcheck = plr.CharacterAdded:Connect(function(charadded)
                repeat task.wait() until charadded:FindFirstChildWhichIsA("Humanoid") and charadded:FindFirstChild("HumanoidRootPart") and charadded:FindFirstChild("Head")
                if (oldCFrame == nil) then return end;
                plr.Character:FindFirstChild("HumanoidRootPart").CFrame = oldCFrame;
                oldCFrame = nil;
                char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true);

                antiArrest_Checker = plr.Character:FindFirstChild("Head").ChildAdded:Connect(function()
                    if (charadded:FindFirstChild("Head") and charadded:FindFirstChild("Head"):FindFirstChild("handcuffedGui")) then
                        if (not Humanoid or not HumanoidRootPart) then return end;
                        char:FindFirstChildWhichIsA("Humanoid").BreakJointsOnDeath = false;
                        char:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, false);
                        oldCFrame = HumanoidRootPart.CFrame;
                        loadchar();
                    end
                end)
            end)
        else
            if (antiArrest_Checker) then
                antiArrest_Checker:Disconnect();
                antiArrest_Checker = nil;
            end

            if (antiArrest_charcheck) then
                antiArrest_charcheck:Disconnect();
                antiArrest_charcheck = nil;
            end
        end
    end)

    local HackerDetector = ExploitTab:NewSection("HackerDetector")
    local HackerDetectorEnabled = false

    HackerDetector:NewToggle("Toggle", "Check if someone exploiting or hacking!", function(state)
        if state == true then
            HackerDetectorEnabled = true
        else
            HackerDetectorEnabled = false
        end
    end)

    --------------
    game:GetService("RunService").Heartbeat:Connect(function()
        char = plr.Character or plr.CharacterAdded
        if LoopTeleportAllowed == true then
            task.spawn(function()
                if PlayerControll ~= nil then
                    if PlayerControll.Character then
                        if Humanoid and Humanoid.Sit == true then
                            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                         end
                        char:FindFirstChild("HumanoidRootPart").CFrame = PlayerControll.Character:FindFirstChild("HumanoidRootPart").CFrame
                    end
                end
            end)
        end
        
        if LoopTeleportBring == true then
            task.spawn(function()
                if PlayerControll ~= nil then
                    if PlayerControll.Character then
                        local targetroot = PlayerControll.Character:FindFirstChild("HumanoidRootPart").CFrame
                        for i = 1, 5 do
                            char:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(targetroot.X + 1, targetroot.Y + -1, targetroot.Z - 0.5)
                            char:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(targetroot.X - 1, targetroot.Y - -1, targetroot.Z + 0.5)
                        end
                    end
                end
            end)
        end

        if KillAuraToggle == true then
            task.spawn(function()
                for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v ~= plr then
                        if v.Character then
                            if v.Character:FindFirstChild("HumanoidRootPart") then
                                if (v.Character:FindFirstChild("HumanoidRootPart").Position.Magnitude - HumanoidRootPart.Position.Magnitude) < 20 then
                                    task.wait(.5)
                                    local args = {
                                        [1] = v
                                    }
                
                                    game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                                end
                            end
                        end
                    end
                 end
            end)
        end

        if InfAmmoEnabled == true then
            if Gunmodule ~= nil then
                Gunmodule["MaxAmmo"] = 10000
                Gunmodule["CurrentAmmo"] = 10000
            end
        end

        if LessFireRateEnabled == true then
            if Gunmodule ~= nil then
                Gunmodule["FireRate"] = 0.1
            end
        end

        if ConsoleSpammerEnabled == true then
            if game:GetService("ReplicatedStorage"):FindFirstChild("ServerConsoleError") then
                local args = {
                    [1] = game:GetService("ReplicatedStorage"):FindFirstChild("ServerConsoleError")
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            end
        end

        if KillPunch == true then
            if PlayerControll ~= nil then
                if PlayerControll.Character:FindFirstChild("HumanoidRootPart") then
                    if (PlayerControll.Character:FindFirstChild("HumanoidRootPart").Position.Magnitude - HumanoidRootPart.Position.Magnitude) < 50 then
                        local args = {
                            [1] = PlayerControll
                        }
            
                        game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                    else
                        LoopTeleportAllowed = true
                        task.wait(.1)
                        local args = {
                            [1] = PlayerControll
                        }
            
                        game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                        task.wait(.1)
                        LoopTeleportAllowed = false
                    end
                end
            end
        end

        if LoopKillToggle == true then
            task.spawn(function()
                if PlayerControll ~= nil and PlayerControll.Character then
                    local plrlastteam = nil
            
                    local args = {
                        [1] = {
                            [1] = {
                                ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-391.1522521972656, 8.655600547790527, -83.21669006347656)),
                                ["Distance"] = 3.2524313926697,
                                ["Cframe"] = CFrame.new(Vector3.new(840.310791015625, 101.33413696289062, 2267.8798828125), Vector3.new(0.9864164590835571, -0.15174193680286407, -0.06290365755558014)),
                                ["Hit"] = PlayerControll.Character.Head
                            },
                            [2] = {
                                ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-392.4814758300781, -8.449393272399902, -76.72613525390625)),
                                ["Distance"] = 3.2699294090271,
                                ["Cframe"] = CFrame.new(Vector3.new(840.2904663085938, 101.18418884277344, 2267.93505859375), Vector3.new(0.9935879707336426, -0.05921658128499985, -0.096314437687397)),
                                ["Hit"] = PlayerControll.Character.Head
                            },
                            [3] = {
                                ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-389.2170104980469, -2.5053632259368896, -92.21631622314453)),
                                ["Distance"] = 3.1665518283844,
                                ["Cframe"] = CFrame.new(Vector3.new(840.3388671875, 101.23649597167969, 2267.8037109375), Vector3.new(0.9954167008399963, -0.09418468177318573, -0.016576465219259262)),
                                ["Hit"] = PlayerControll.Character.Head
                            },
                            [4] = {
                                ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-393.3539733886719, 3.139889717102051, -72.54520416259766)),
                                ["Distance"] = 3.3218522071838,
                                ["Cframe"] = CFrame.new(Vector3.new(840.2772216796875, 101.28595733642578, 2267.970703125), Vector3.new(0.9859949350357056, -0.11956311762332916, -0.11626961082220078)),
                                ["Hit"] = PlayerControll.Character.Head
                            },
                            [5] = {
                                ["RayObject"] = Ray.new(Vector3.new(845.555908203125, 101.42933654785156, 2269.439453125), Vector3.new(-390.7317199707031, 3.2097764015197754, -85.5477523803711)),
                                ["Distance"] = 3.222757101059,
                                ["Cframe"] = CFrame.new(Vector3.new(840.3179931640625, 101.28642272949219, 2267.8603515625), Vector3.new(0.9910106658935547, -0.12353070080280304, -0.05136203020811081)),
                                ["Hit"] = PlayerControll.Character.Head
                            }
                        },
                        [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Remington 870")
                    }
                    
                    game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
                    game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
                end
            end)
        end

        if SpeedEnabled == true then
            if Humanoid.MoveDirection.Magnitude > 0 then
                if SpeedNumber and char and Humanoid and Humanoid.Parent then
                    char:TranslateBy(Humanoid.MoveDirection * tonumber(SpeedNumber/500))
                    Humanoid.JumpPower = tonumber(SpeedJumpPower)
                else
                    char:TranslateBy(Humanoid.MoveDirection)
                end
            end
        end

        if HackerDetectorEnabled == true then
            local AlreadyTeamDetect = {}
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= game:GetService("Players").LocalPlayer then
                    if v.Team == nil then
                        task.spawn(function()
                            for i, TeamDetectRun in pairs(AlreadyTeamDetect) do
                                if not TeamDetectRun:FindFirstChild(v.Name) and HackerDetectorEnabled == true then
                                    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
                                        Text = tostring(v.Name).." Black Dark Team Detected!",
                                        Font = Enum.Font.SourceSansBold,
                                        TextSize = 20,
                                        Color = Color3.new(255, 255, 255)
                                    })
                                    table.insert(AlreadyTeamDetect, v.Name)
                                end
                            end
                        end)
                    end

                    if char:FindFirstChild("HumanoidRootPart") then
                        task.spawn(function()
                            local anotherguychar = v.Character or v.CharacterAdded
                                local AnotherHumanoidRootPart = anotherguychar:FindFirstChild("HumanoidRootPart")
                                local OldPos = AnotherHumanoidRootPart.Position
                                task.wait(1)
                                local NewPos = AnotherHumanoidRootPart.Position
                                if anotherguychar:FindFirstChildWhichIsA("Humanoid") and Humanoid.MoveDirection.X ~= 0 and Humanoid.MoveDirection.Z ~= 0 and HackerDetectorEnabled == true then
                                    if (NewPos - OldPos).Magnitude > 80 and anotherguychar:FindFirstChildWhichIsA("Humanoid").Sit == false then
                                        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
                                            Text = tostring(v.Name).." Speed Cheating, Type: Can't Detect!",
                                            Font = Enum.Font.SourceSansBold,
                                            TextSize = 20,
                                            Color = Color3.new(255, 255, 255)
                                        })
                                    end
                                end
                                if anotherguychar:FindFirstChildWhichIsA("Humanoid") and Humanoid.MoveDirection.X ~= 0 and Humanoid.MoveDirection.Z ~= 0 and HackerDetectorEnabled == true then
                                    if anotherguychar:FindFirstChildWhichIsA("Humanoid").PlatformStand == true then
                                        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
                                            Text = tostring(v.Name).." Fly Cheating, Type: Normal!",
                                            Font = Enum.Font.SourceSansBold,
                                            TextSize = 20,
                                            Color = Color3.new(255, 255, 255)
                                        })
                                    end
                                end

                                if not anotherguychar:FindFirstChildWhichIsA("Humanoid") then
                                    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
                                        Text = tostring(v.Name).." No Humanoid Detector, Type: RE!",
                                        Font = Enum.Font.SourceSansBold,
                                        TextSize = 20,
                                        Color = Color3.new(255, 255, 255)
                                    })
                                end
                            end)
                        end
                    end
            end
        end

        if CrashServerMode == true then
            if CrashServerType == "GunCrash" then
                for crashdude = 1, MaxCrashPacket do
                    local args = {
                        [1] = PacketCrashTable,
                        [2] = GunCrashModule
                    }
                    
                    game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
                end
            elseif CrashServerType == "CarSpamCrash" then
                for carspam = 1, MaxCrashPacket do
                    local args = {
                        [1] = workspace.Prison_ITEMS.buttons:FindFirstChild("Car Spawner"):FindFirstChild("Car Spawner")
                    }

                    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                end
            elseif CrashServerType == "RespawnCrash" then
                for RespawnCrashgobr = 1, MaxCrashPacket do
                    if char and Humanoid and HumanoidRootPart then
                        local oldpos = HumanoidRootPart.CFrame
                        Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                        task.wait(.1)
                        local args = {
                            [1] = plr.Name
                        }
                        
                        loadchar()
                        task.wait(.1)
                        HumanoidRootPart.CFrame = oldpos
                    end
                end
            elseif CrashServerType == "PunchCrash" then
                for punchforkill = 1, MaxCrashPacket do
                    for i, playerinpair in pairs(game:GetService("Players"):GetPlayers()) do
                        local plrrandom = playerinpair.Name[math.random(1, #playerinpair.Name)]
                        if plrrandom.Character and plrrandom.Character:FindFirstChild("HumanoidRootPart") then
                            HumanoidRootPart.CFrame = plrrandom.Character:FindFirstChild("HumanoidRootPart").CFrame
                            local args = {
                                [1] = plrrandom
                            }
            
                            game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                        end
                    end
                end
            end
         end

        if AlwaysJumpCheck == true then
            if Humanoid.FloorMaterial ~= Enum.Material.Air and Humanoid.MoveDirection.X ~= 0 and Humanoid.MoveDirection.Z ~= 0 and SpeedEnabled == true then
                Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end

        if RemoteAllDoorLoop == true then
            for i, v in pairs(game:GetService("Workspace"):FindFirstChild("Doors"):GetChildren()) do
                if v:FindFirstChild("block") then
                    for looprun = 1, 10 do
                        firetouchinterest(char:FindFirstChild("Head"), v:FindFirstChild("block"):FindFirstChild("hitbox"), 0)
                        firetouchinterest(char:FindFirstChild("Head"), v:FindFirstChild("block"):FindFirstChild("hitbox"), 1)
                    end
                end
            end
        end

        Humanoid = char:FindFirstChildWhichIsA("Humanoid")
    end)

    game:GetService("Players").PlayerAdded:Connect(function()
        GetPlayerTable()
        PlayerControllerDropDown:Refresh(PlayerInGame)
    end)

    game:GetService("Players").PlayerRemoving:Connect(function()
        GetPlayerTable()
        PlayerControllerDropDown:Refresh(PlayerInGame)
    end)
else
    print("You join the wrong game, the script only work for Prison Life".." The game here: https://www.roblox.com/games/155615604/Prison-Life-Cars-fixed. Also i copied the link to your clipboard")
    setclipboard("https://www.roblox.com/games/155615604/Prison-Life-Cars-fixed")
end
