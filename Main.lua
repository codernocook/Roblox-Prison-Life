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
    local ItemTab = ScriptWindows:NewTab("Item")
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
    --
    local Damage = nil
    local MaxAmmo = nil
    local CurrentAmmo = nil
    local StoredAmmo = nil
    local FireRate = nil
    local Range = nil
    local Spread = nil
    local ReloadTime = nil
    local Bullets = nil
    local FireSoundId = nil
    local SecondarySoundId = nil
    local ReloadSoundId = nil
    --
    local GunChoose = "Remington 870"
    local CrashServerMode = false
    local GunCrashModule = nil
    local GunCrashChoose = "Remington 870"
    local tpwalking = false
    local Heartbeat = game:GetService("RunService").Heartbeat
    local PlayerInGame = {}
    local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
    --------------
    

    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Home"):WaitForChild("fadeFrame").Visible = false

    plr.OnTeleport:Connect(function(State)
        if State == Enum.TeleportState.Started then
            if queueteleport then
                queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/codernocook/prisonlife/main/Main.lua'))()")
            end
        end
    end)    

    --PlayerTab
    local Speed = PlayerTab:NewSection("Speed")
    Speed:NewToggle("Toggle", "Improve your movement.", function(state)
        if state then
            task.spawn(function()
                tpwalking = true
                local chr = char
	            local hum = chr and Humanoid
	                while tpwalking and Heartbeat:Wait() and chr and hum and hum.Parent do
		                 if hum.MoveDirection.Magnitude > 0 then
			                if hum.MoveDirection.Magnitude > 0 then
                                chr:TranslateBy(hum.MoveDirection * tonumber(SpeedNumber / 200))
                            else
                                chr:TranslateBy(hum.MoveDirection)
                            end
		                end
	                end
            end)
        else
            task.spawn(function()
                Humanoid.WalkSpeed = 16
                tpwalking = false
            end)
        end
    end)
    Speed:NewSlider("Speed", "SliderInfo", 500, 16, function(speedcallback)
        task.spawn(function()
            SpeedNumber = tonumber(speedcallback)
        end)
    end)

    local Character = PlayerTab:NewSection("Character")
    Character:NewButton("LoadCharacter", "Make your character respawn server side type", function()
        task.spawn(function()
            local args = {
                [1] = plr.Name
            }
            
            workspace.Remote.loadchar:InvokeServer(unpack(args))
        end)
    end)
    Character:NewButton("RemoveCharacter", "Remove your Character", function()
       task.spawn(function()
            local args = {
                [1] = plr,
                [2] = "Medium stone grey"
            }
            
            workspace.Remote.loadchar:InvokeServer(unpack(args))
       end)
    end)

    local Team = PlayerTab:NewSection("Team")
    Team:NewButton("Guards", "Change your team to Guards", function()
        task.spawn(function()
            local args = {
                [1] = "Bright blue"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(args))
        end)
    end)

    Team:NewButton("Inmates", "Change your team to Inmates", function()
        task.spawn(function()
            local args = {
                [1] = "Bright orange"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(args))
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
                local args = {
                    [1] = "Bright orange"
                }
                
                workspace.Remote.TeamEvent:FireServer(unpack(args))
                firetouchinterest(char:WaitForChild("Head"), game:GetService("Workspace"):WaitForChild("Criminals Spawn"):WaitForChild("SpawnLocation"), 0)
                task.wait(.1)
                firetouchinterest(char:WaitForChild("Head"), game:GetService("Workspace"):WaitForChild("Criminals Spawn"):WaitForChild("SpawnLocation"), 1)
            else
                firetouchinterest(char:WaitForChild("Head"), game:GetService("Workspace"):WaitForChild("Criminals Spawn"):WaitForChild("SpawnLocation"), 0)
                task.wait(.1)
                firetouchinterest(char:WaitForChild("Head"), game:GetService("Workspace"):WaitForChild("Criminals Spawn"):WaitForChild("SpawnLocation"), 1)
            end
        end)
    end)

    Team:NewButton("Black Team", "Turn you into black team so everyone thing you are hacker lol", function()
        task.spawn(function()
            local oldpos = char:WaitForChild("HumanoidRootPart").CFrame
            task.wait(.1)
            local args = {
                [1] = plr,
                [2] = "Really black"
            }

            workspace.Remote.loadchar:InvokeServer(unpack(args))
            task.wait(.1)
            char:WaitForChild("HumanoidRootPart").CFrame = oldpos
        end)
    end)
    ----------

    --ItemTab--
        local GiveItem = ItemTab:NewSection("Give Item")
        
        GiveItem:NewButton("Give All Item", "Get all of Item in Jailbreak i don't think it will work", function()
            task.spawn(function()
                for i, v in pairs(game:GetService("Workspace"):WaitForChild("Prison_ITEMS"):WaitForChild("single"):GetChildren()) do
                    local args = {
                        [1] = v:WaitForChild("ITEMPICKUP")
                    }
                    
                    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                end
                for i, v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
                local args = {
                    [1] = v:WaitForChild("ITEMPICKUP")
                }
                
                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
                end
            end)
        end)
    -----------

    --GunTab--
    local GiveGun = GunTab:NewSection("Give gun")

    GiveGun:NewButton("Give Choosen gun", "Get your gun you want.", function()
        task.spawn(function()
            if GunChoose == "Remington 870" then
                local args = {
                    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
                }

                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            elseif GunChoose == "M9" then
                local args = {
                    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP
                }

                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            elseif GunChoose == "AK-47" then
                local args = {
                    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP
                }

                workspace.Remote.ItemHandler:InvokeServer(unpack(args))
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
                [1] = v:WaitForChild("ITEMPICKUP")
            }
            
            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            end
           end)
    end)


    local GunMod = GunTab:NewSection("Gun mod")
    local Gunmodule = nil

    GunMod:NewButton("Mod All!", "Make your gun OP!", function()
        task.spawn(function()
            if Gunmodule ~= nil then
                Gunmodule["Damage"] = 100
                Gunmodule["MaxAmmo"] = math.huge
                Gunmodule["CurrentAmmo"] = math.huge
                Gunmodule["FireRate"] = math.huge
                Gunmodule["Spread"] = math.huge
                Gunmodule["ReloadTime"] = 0.00001
                Gunmodule["Bullets"] = math.huge
            end
        end)
    end)

    GunMod:NewDropdown("Gun Mod Option", "Choose your gun", {"Remington 870", "M9", "AK-47"}, function(toolselect)
        task.spawn(function()
            if plr.Backpack:FindFirstChild(toolselect) then
                Gunmodule = require(plr.Backpack:WaitForChild(toolselect):WaitForChild("GunStates"))
            elseif char:FindFirstChild(toolselect) then
                Gunmodule = require(char:WaitForChild(toolselect):WaitForChild("GunStates"))
            end
        end)
    end)

    GunMod:NewButton("Mod with your custom settings", "Make your gun OP like you want!", function()
        task.spawn(function()
            if Gunmodule ~= nil then
                Gunmodule["Damage"] = tonumber(Damage) or Gunmodule["Damage"]
                Gunmodule["MaxAmmo"] = tonumber(MaxAmmo) or Gunmodule["MaxAmmo"]
                Gunmodule["StoredAmmo"] = tonumber(StoredAmmo) or Gunmodule["StoredAmmo"]
                Gunmodule["CurrentAmmo"] = tonumber(CurrentAmmo) or Gunmodule["CurrentAmmo"]
                Gunmodule["FireRate"] = tonumber(FireRate) or Gunmodule["FireRate"]
                Gunmodule["Range"] = tonumber(Range) or Gunmodule["Range"]
                Gunmodule["Spread"] = tonumber(Spread) or Gunmodule["Spread"]
                Gunmodule["ReloadTime"] = tonumber(ReloadTime) or Gunmodule["ReloadTime"]
                Gunmodule["Bullets"] = tonumber(Bullets) or Gunmodule["Bullets"]
                Gunmodule["FireSoundId"] = tostring(FireSoundId) or Gunmodule["FireSoundId"]
                Gunmodule["SecondarySoundId"] = tostring(SecondarySoundId) or Gunmodule["SecondarySoundId"]
                Gunmodule["ReloadSoundId"] = tostring(ReloadSoundId) or Gunmodule["ReloadSoundId"]
            end
        end)
    end)

    GunMod:NewTextBox("Damage", "Change the gun damage!", function(DamageCallBack)
        Damage = DamageCallBack
    end)

    GunMod:NewTextBox("MaxAmmo", "Change the gun Max Ammo!", function(MaxAmmoCallBack)
        MaxAmmo = MaxAmmoCallBack
    end)

    GunMod:NewTextBox("StoredAmmo", "Change the gun StoredAmmo!", function(StoredAmmoCallBack)
        StoredAmmo = StoredAmmoCallBack
    end)

    GunMod:NewTextBox("CurrentAmmo", "Change the gun CurrentAmmo!", function(CurrentAmmoCallBack)
        CurrentAmmo = CurrentAmmoCallBack
    end)

    GunMod:NewTextBox("FireRate", "Change the gun FireRate!", function(FireRateCallBack)
        FireRate = FireRateCallBack
    end)
    
    GunMod:NewTextBox("Range", "Change the gun damage!", function(RangeCallBack)
        Range = RangeCallBack
    end)

    GunMod:NewTextBox("Spread", "Change the gun Spread!", function(SpreadCallBack)
        Spread = SpreadCallBack
    end)

    GunMod:NewTextBox("ReloadTime", "Change the gun ReloadTime!", function(ReloadTimeCallBack)
        ReloadTime = ReloadTimeCallBack
    end)

    GunMod:NewTextBox("Bullets", "Change the gun Bullets!", function(BulletsCallBack)
        Bullets = BulletsCallBack
    end)

    GunMod:NewTextBox("FireSoundId", "Change the gun FireSoundId!", function(FireSoundIdCallBack)
        FireSoundId = "rbxassetid://"..FireSoundIdCallBack
    end)

    GunMod:NewTextBox("SecondarySoundId", "Change the gun SecondarySoundId!", function(SecondarySoundIdCallBack)
        SecondarySoundId = "rbxassetid://"..SecondarySoundIdCallBack
    end)

    GunMod:NewTextBox("ReloadSoundId", "Change the gun ReloadSoundId!", function(ReloadSoundIdCallBack)
        ReloadSoundId = "rbxassetid://"..ReloadSoundIdCallBack
    end)
    ----------

    --ServerModerator--
    local PlayerController = ServerModerator:NewSection("PlayerController")
    local PlayerControll = nil
    local KillGunModule
    local LoopTeleportAllowed = false
    local SpectateStatus = false

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
        end
        end)
    end)

    PlayerController:NewButton("InstaKill", "Fix Kill Problem and kill player you want!", function()
        task.spawn(function()
            local lastposInstakill = char:WaitForChild("HumanoidRootPart").Position
            local NeutralTeamSwitch = {
                [1] = "Medium stone grey"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(NeutralTeamSwitch))

            local InmatesTeamSwitch = {
                [1] = "Bright orange"
            }
            
            workspace.Remote.TeamEvent:FireServer(unpack(InmatesTeamSwitch))
        local loadchar = {
            [1] = plr.Name
        }
        
        workspace.Remote.loadchar:InvokeServer(unpack(loadchar))

        if SpectateStatus == true then
            if PlayerControll.Character then
                game:GetService("Workspace").CurrentCamera.CameraSubject = PlayerControll.Character
                SpectateStatus = true
            end
        end

        char:WaitForChild("HumanoidRootPart").Position = lastposInstakill

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
        end
        end)
    end)

    PlayerController:NewButton("Arrest", "Arrest the player you want!", function()
       task.spawn(function()
        local BeforeArrestOldpos
        local OldTeamBeforeArrest
        if PlayerControll ~= nil then
            OldTeamBeforeArrest = "Bright orange"

            if plr.Team == "Guards" then
                BeforeArrestOldpos = char:WaitForChild("HumanoidRootPart").CFrame
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
                char:WaitForChild("HumanoidRootPart").CFrame = BeforeArrestOldpos
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
                BeforeArrestOldpos = char:WaitForChild("HumanoidRootPart").CFrame
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
                char:WaitForChild("HumanoidRootPart").CFrame = BeforeArrestOldpos
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

    PlayerController:NewButton("Bring", "Bring player you want to you!", function()
        local loadcharbefore = {
            [1] = plr.Name
        }

        workspace.Remote.loadchar:InvokeServer(unpack(loadcharbefore))

        local oldposbeforebring = char:WaitForChild("HumanoidRootPart").CFrame

        local gunpickup = {
            [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
        }

        workspace.Remote.ItemHandler:InvokeServer(unpack(gunpickup))

        task.wait(.1)

        char:FindFirstChildWhichIsA("Humanoid"):Destroy()
        Instance.new("Humanoid", char)

        if plr.Backpack:FindFirstChild("Remington 870") then
            plr.Backpack:WaitForChild("Remington 870").Parent = char
        elseif char:FindFirstChild("Remington 870") then
            task.wait()
        elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
            }

            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            plr.Backpack:WaitForChild("Remington 870").Parent = char
        end
        LoopTeleportBring = true
        task.wait(.5)
        LoopTeleportBring = false
        char:WaitForChild("HumanoidRootPart").CFrame = oldposbeforebring
        task.wait(.5)
        local loadcharafter = {
            [1] = plr.Name
        }

        workspace.Remote.loadchar:InvokeServer(unpack(loadcharafter))
        task.wait(.1)
        char:WaitForChild("HumanoidRootPart").CFrame = oldposbeforebring
    end)

    PlayerController:NewButton("Trap", "Trap player you want into a building!", function()
        local loadcharbefore = {
            [1] = plr.Name
        }

        workspace.Remote.loadchar:InvokeServer(unpack(loadcharbefore))

        local oldposbeforebring = char:WaitForChild("HumanoidRootPart").CFrame

        local gunpickup = {
            [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
        }

        workspace.Remote.ItemHandler:InvokeServer(unpack(gunpickup))

        task.wait(.1)

        char:FindFirstChildWhichIsA("Humanoid"):Destroy()
        Instance.new("Humanoid", char)

        if plr.Backpack:FindFirstChild("Remington 870") then
            plr.Backpack:WaitForChild("Remington 870").Parent = char
        elseif char:FindFirstChild("Remington 870") then
            task.wait()
        elseif not plr.Backpack:FindFirstChild("Remington 870") or char:FindFirstChild("Remington 870") then
            local args = {
                [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
            }

            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
            plr.Backpack:WaitForChild("Remington 870").Parent = char
        end
        LoopTeleportBring = true
        task.wait(.5)
        LoopTeleportBring = false
        char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-328.772797, 84.2401199, 1953.56274, -0.774003625, 3.31737269e-08, -0.633181155, 4.14672492e-08, 1, 1.70239745e-09, 0.633181155, -2.49386201e-08, -0.774003625)
        task.wait(.5)
        local loadcharafter = {
            [1] = plr.Name
        }

        workspace.Remote.loadchar:InvokeServer(unpack(loadcharafter))
        task.wait(.1)
        char:WaitForChild("HumanoidRootPart").CFrame = oldposbeforebring
    end)

    PlayerController:NewToggle("Spectate", "Wiew player cam", function(state)
        if state then
            if PlayerControll ~= nil then
                task.spawn(function()
                    if PlayerControll.Character then
                        game:GetService("Workspace").CurrentCamera.CameraSubject = PlayerControll.Character
                        SpectateStatus = true
                    end
                end)
            end
        else
           task.spawn(function()
            game:GetService("Workspace").CurrentCamera.CameraSubject = char
            SpectateStatus = false
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
                char:WaitForChild("HumanoidRootPart").CFrame = PlayerControll.Character:WaitForChild("HumanoidRootPart").CFrame
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
    -------------------

    --ExploitTab--
    local CrashServer = ExploitTab:NewSection("ServerCrasher")
    local MaxCrashPacket = 100
    local Raypos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local RayRotatepos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local PacketCount = 0
    local PacketCrashTable = {
        [1] = {
            ["RayObject"] = Ray.new(Raypos, RayRotatepos),
            ["Distance"] = 5.194826602935791,
            ["Cframe"] = CFrame.new(0, 0, 0),
            ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
        },
    }
    CrashServer:NewToggle("Crash!", "Make the server laggy roblox will shut down it!", function(state)
        if state == true then
            task.spawn(function()
                CrashServerMode = true
    game:GetService("RunService").Heartbeat:Connect(function()
        if CrashServerMode == true then
            local args = {
                [1] = PacketCrashTable,
                [2] = GunCrashModule
            }
            
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
        else
            CrashServerMode = false
        end
    end)
            end)
        else
            task.spawn(function()
                CrashServerMode = false
                table.clear(PacketCrashTable)
            end)
        end
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
            table.clear(PacketCrashTable)
            PacketCount = 0
            repeat task.wait()
                PacketCount += 1
                local PacketTemplate = {
                    [PacketCount] = {
                        ["RayObject"] = Ray.new(Raypos, RayRotatepos),
                        ["Distance"] = 5.194826602935791,
                        ["Cframe"] = CFrame.new(0, 0, 0),
                        ["Hit"] = workspace.Prison_Cafeteria.Prison_table1.table1.Part
                    },
                }
                table.insert(PacketCrashTable, PacketTemplate)
                if PacketCount == MaxCrashPacket then
                    break
                end
            until PacketCount == MaxCrashPacket
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
                    local args = {
                        [1] = "Bright blue"
                    }
                    
                    workspace.Remote.TeamEvent:FireServer(unpack(args))
                    RemoteAllDoorLoop = true
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

    local InstantRespawn = ExploitTab:NewSection("InstantRespawn")

    local function RespawnPlayer(newstate)
        if newstate == Enum.HumanoidStateType.Dead then
            local args = {
                [1] = plr.Name
            }
            
            workspace.Remote.loadchar:InvokeServer(unpack(args))
            task.wait(game:GetService("Players").RespawnTime)
            RespawnPlayer()
        end
    end

    InstantRespawn:NewToggle("Toggle", "Respawn you char instantly!", function(state)
        if state then
           repeat
            task.wait()
            Humanoid.StateChanged:Connect(function(oldstate, newstate)
                RespawnPlayer(newstate)
            end)
           until state == false
        else
            state = false
        end
    end)

    --------------
    game:GetService("RunService").Heartbeat:Connect(function()
        if LoopTeleportAllowed == true then
            task.spawn(function()
                if PlayerControll ~= nil then
                    if PlayerControll.Character then
                        if Humanoid and Humanoid.Sit == true then
                            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                         end
                        char:WaitForChild("HumanoidRootPart").CFrame = PlayerControll.Character:WaitForChild("HumanoidRootPart").CFrame
                    end
                end
            end)
        end
        
        if LoopTeleportBring == true then
            task.spawn(function()
                if PlayerControll ~= nil then
                    if Humanoid and Humanoid.Sit == true then
                        Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                     end
                    if PlayerControll.Character then
                        local targetroot = PlayerControll.Character:WaitForChild("HumanoidRootPart").CFrame
                        for i = 1, 5 do
                            char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(targetroot.X + 1, targetroot.Y + -1, targetroot.Z - 0.5)
                            char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(targetroot.X - 1, targetroot.Y - -1, targetroot.Z + 0.5)
                        end
                    end
                end
            end)
        end

        if SpectateStatus == true then
            if PlayerControll ~= nil then
                task.spawn(function()
                    if PlayerControll.Character then
                        game:GetService("Workspace").CurrentCamera.CameraSubject = PlayerControll.Character
                        SpectateStatus = true
                    end
                end)
            end
        else
           task.spawn(function()
            game:GetService("Workspace").CurrentCamera.CameraSubject = char
            SpectateStatus = false
           end)
        end

        if RemoteAllDoorLoop == true then
            for i, v in pairs(game:GetService("Workspace"):WaitForChild("Doors"):GetChildren()) do
                if v:FindFirstChild("block") then
                    for looprun = 1, 50 do
                        firetouchinterest(char:WaitForChild("Head"), v:WaitForChild("block"):WaitForChild("hitbox"), 0)
                        firetouchinterest(char:WaitForChild("Head"), v:WaitForChild("block"):WaitForChild("hitbox"), 1)
                    end
                end
            end
        end
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
