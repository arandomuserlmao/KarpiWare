local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()

local Window = Library:CreateWindow({
    Name = 'KarpiWare V4',
    IntroText = 'Proton Utilities | KarpiWare V4',
    IntroIcon = 'rbxassetid://0',
    IntroBlur = true,
    IntroBlurIntensity = 15,
    Theme =  Library.Themes.dark,
    Position = 'Bottom',
    Draggable = true,
    Prefix = _G.Prefix
})

if _G.Theme == "Dark" then
    Window:ChangeTheme('dark')

elseif _G.Theme == "Light" then
    Window:ChangeTheme('light')

elseif _G.Theme == "Red" then
    Window:ChangeTheme('redandblack')

elseif _G.Theme == "Orange" then
    Window:ChangeTheme('kiriot')

elseif _G.Theme == "Purple" then
    Window:ChangeTheme('purple')

elseif _G.Theme == "Blue" then
    Window:ChangeTheme('scriptware')

elseif _G.Theme == nil then
    Window:ChangeTheme('scriptware')
end

local plr1 = game.Players.LocalPlayer
local character = plr1.Character
local target = nil
local mgogpos = nil
local Waypoints = {

}


Window:AddCommand('ChangeTheme', {'Theme'}, 'Dark, Light, Red, Orange, Purple, Blue', function(Arguments, Speaker)
    if Arguments[1] == "Dark" then
        Window:ChangeTheme('dark')
    elseif Arguments[1] == "dark" then
            Window:ChangeTheme('dark')
    
    elseif Arguments[1] == "Light" then
        Window:ChangeTheme('light')
    
    elseif Arguments[1] == "Red" then
        Window:ChangeTheme('redandblack')
    
    elseif Arguments[1] == "Orange" then
        Window:ChangeTheme('kiriot')
    
    elseif Arguments[1] == "Purple" then
        Window:ChangeTheme('purple')
    
    elseif Arguments[1] == "Blue" then
        Window:ChangeTheme('scriptware')

    elseif Arguments[1] == "light" then
        Window:ChangeTheme('light')
    
    elseif Arguments[1] == "red" then
        Window:ChangeTheme('redandblack')
    
    elseif Arguments[1] == "orange" then
        Window:ChangeTheme('kiriot')
    
    elseif Arguments[1] == "purple" then
        Window:ChangeTheme('purple')
    
    elseif Arguments[1] == "blue" then
        Window:ChangeTheme('scriptware')
    
    elseif Arguments[1] == nil then
        Window:ChangeTheme('scriptware')
    end
end)


Window:AddCommand('Discord', {}, 'Copies discord link', function(Arguments, Speaker)
    setclipboard("https://discord.gg/sbZNGNVdE9")
    Window:CreateNotification('KarpiWare', 'Copied Discord link')
end)


Window:AddCommand('Legacy', {}, 'Loads Legacy KW ChatCMDS (not supported)', function(Arguments, Speaker)
wait()
		
getgenv().Settings = {
   A = {
      prefix = ".", -- what you will use to signal that this is a command
      
        command = "tool", -- cmd for equip tool
        command2 = "unequip", -- this is the cmd for unequip tool
        command3 = "male", --  cmd for PP (need DB shotgun)
        command4 = "reset", -- resets all commands
        command5 = "spawncash", -- uses mg to make it seem like you spawned cash (use .mg command and get mg)
        command6 = "antislow", -- makes it so your WS and JP stays at 16 and 50
        command7 = "mg", -- gets mg for spawncash cmd
        command8 = "combatphone", -- kill ppl with a phone (get bat)
        command9 = "combatflowers", -- kill ppl with a flower (get flower and bat)
        command10 = "combatchicken", -- kill ppl with a chicken (get chicken and bat)
        command11 = nil, -- this was antikick, it autoenables when you execute this script
        command12 = "tp", -- q to tp
        command13 = "fly", -- x to fly
        command14 = nil, -- this was antifreeze, it autoenables when you execute this script
        command15 = "inviskill", -- Need revolver (aim at plr and press Z to fire)
        command16 = "rj", --  Rejoins the current server
        command17 = "chatspy", -- dehoisted chat spy
        command18 = "male2", -- same as .male but uses a RPG
        command19 = "esp", -- my custom Highlight ESP
        command20 = "savegame", -- saves game JobId incase you get kicked or something
        command21 = "joinsave", -- joins saved game
        command22 = "male3", -- bat PP (get bat)
        command23 = "curvemale", -- get old phone from phone store
        command24 = "destroyseats", -- destroys seats
        command25 = "aimview", -- views the aim of people using guns
        command26 = "antiak", -- prevents people from using autokill (beta, not tested against autokill users)
        command27 = "antiav", -- prevents people from using aim view on you (if you use .aimview yourself you can see ur beam but others still cant)
        command28 = "cmds", -- prints all commands into output (press F9 to get to output)
        command29 = "target", -- sets target to <string> (no display name, dosent have to be full name but is recommended to do so)
        command30 = "test", -- ignore this
        command31 = "spectate", -- spectates target (use .target to set your target)
        command32 = "unspectate", -- un spectates target
        command33 = "goto", -- teleports to your target (again, use .target first to set target)
     },
     
        B = {
        -- anti sp
        FreezeProtection = true, -- Protects you from being frozen
        
        -- future stuff
        Cam_lock = true, -- Bool for DNS Cam lock
        Silent_Aim = true, -- Bool for DNS Silent Aim
        Cam_Lock_Prediction = 0.51, -- Value for DNS Cam lock prediction
        Silent_Aim_Prediction = 0.12471, -- Value for DNS Silent Aim prediction
        Prediction_Enabled = true, -- Bool for Cam Lock Prediction
        Smooth_Lock = true, -- Bool for Smooth Cam Lock
        Smoothing = 0.90, -- Value for Smooth Lock smoothing (Lower = Smoother)
        Fov_Size = 40, -- Value for Size of FOV circle
        Lock_Key = "T", -- Key for Lock
        Unlock_Key = "B", -- Key for Unlock
        Cam_Lock_Parts = {"UpperTorso"}, -- What cam lock will aim at (Use "Head" for max damage, "UpperTorso" for accuracy
     }
     
   }
   
   
   
   loadstring(game:HttpGet("https://raw.githubusercontent.com/arandomuserlmao/KarpiWare/main/chatdpdncs"))()
end)

-- antislow
Window:AddCommand('AntiSlow', {}, 'Prevents you from being slowed down while in combat or shooting a gun.', function(Arguments, Speaker)
    --// ws antislow
    local mt = getrawmetatable(game)
    local backup
        backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
            if key == "WalkSpeed" and value < 16 then
            value = 16
        end
    return backup(self, key, value)
end))
--// jp antislow
    local mt = getrawmetatable(game)
    local backup
        backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
            if key == "JumpPower" and value < 50 then
            value = 50
        end
    return backup(self, key, value)
end))
end)

-- equiptool
Window:AddCommand('Equip', {'Tool'}, 'Equips a tool from your inventory, you can equip multiple tools with this', function(Arguments, Speaker)
    plr1.Backpack[Arguments[1]].Parent = character
end)

-- double barrel sg pp
Window:AddCommand('Male1', {}, 'Double-Barrel SG | PP', function(Arguments, Speaker)
    local PPname2 = "[Double-Barrel SG]"

    local PPlocation2 = character:WaitForChild(PPname2)
    PPlocation2.GripPos = Vector3.new(1.3,1,-0.3)
end)

-- rpg pp
Window:AddCommand('Male2', {}, 'RPG | PP', function(Arguments, Speaker)
    local PPname2 = "[RPG]"

    local PPlocation2 = character:WaitForChild(PPname2)
    PPlocation2.GripPos = Vector3.new(-0.55,2,-1)
end)

-- bat pp
Window:AddCommand('Male3', {}, 'Bat | PP', function(Arguments, Speaker)
    local PPname2 = "[Bat]"
    local PPlocation2 = character:WaitForChild(PPname2)
    PPlocation2.GripForward = Vector3.new(0,10,0)
    PPlocation2.GripPos = Vector3.new(-2,-0.5,0.3)
end)

-- Curved PP
Window:AddCommand('CurvedMale', {}, 'Get Old Phone from phone store to use this', function(Arguments, Speaker)
    local PPname2 = "[Phone]"
    local PPlocation2 = character:WaitForChild(PPname2)
    print(Vector3.new(PPlocation2.GripPos))
    PPlocation2.GripPos = Vector3.new(-1.85,1.5,1.2)
end)

-- Destroy Seats
Window:AddCommand('AntiSit', {}, 'Destroys all seats in the game', function(Arguments, Speaker)
    for _,a in pairs(workspace:GetDescendants()) do
        if a:IsA("Seat") then
            a:Remove()
        end
    end
end)

-- AimView
Window:AddCommand('AimView', {}, 'Not mine | Allows you to see where others are aiming', function(Arguments, Speaker)
    -- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

-- // Vars
local Terrain = Workspace.Terrain
local LocalPlayer = Players.LocalPlayer
local Beams = {}

local Colours = {
    At = ColorSequence.new(Color3.new(123, 123, 123), Color3.new(123, 123, 123)),
    Away = ColorSequence.new(Color3.new(123, 123, 123), Color3.new(123, 123, 123))
}

-- // Checks if the beam is hitting our character and can't go through walls
local function IsBeamHit(Beam, MousePos)
    -- // Get our character
    local Character = LocalPlayer.Character
    local Attachment = Beam.Attachment1

    -- // Workout the direction
    local Origin = Beam.Attachment0.WorldPosition
    local Direction = MousePos - Origin

    -- // Fire the ray, making sure it hits something (should unless aiming at sky?)
    local raycastParms = RaycastParams.new()
    raycastParms.FilterDescendantsInstances = {Character, Workspace.CurrentCamera}
    local RaycastResult = Workspace:Raycast(Origin, Direction * 2, raycastParms) -- // Multiplied by 2 as ray might fall too short
    if (not RaycastResult) then
        Beam.Color = Colours.Away
        Attachment.WorldPosition = MousePos
        return
    end

    -- // Set the colour based upon if aiming at us or not
    if (Character) then
        Beam.Color = RaycastResult.Instance:IsDescendantOf(Character) and Colours.At or Colours.Away
    end

    -- // Set the position so the beam can't go through walls
    Attachment.WorldPosition = RaycastResult.Position
end

-- // Creates a beam with the default properties
local function CreateBeam(Character)
    -- // Create beam
    local Beam = Instance.new("Beam", Character)

    -- // Set important properties
    Beam.Attachment0 = Character:WaitForChild("Head"):WaitForChild("FaceCenterAttachment")
    Beam.Enabled = Character:FindFirstChild("GunScript", true) ~= nil

    -- // Set visual properties
    Beam.Width0 = 0.1
    Beam.Width1 = 0.1

    -- // Add to beam table so can modify all at once
    table.insert(Beams, Beam)

    -- // Return
    return Beam
end

-- // Apply whenever we get a new character
local function OnCharacter(Character)
    -- // Make sure character exists
    if (not Character) then
        return
    end

    -- // Wait for the MousePos
    local MousePos = Character:WaitForChild("BodyEffects"):WaitForChild("MousePos")

    -- // Create the beam
    local Beam = CreateBeam(Character)

    -- // Attachment for the mouse position
    local Attachment = Instance.new("Attachment", Terrain)
    Beam.Attachment1 = Attachment

    -- // Constantly update when MousePos updates
    IsBeamHit(Beam, MousePos.Value)
    MousePos.Changed:Connect(function()
        IsBeamHit(Beam, MousePos.Value)
    end)

    -- // See whenever they equip a gun
    Character.DescendantAdded:Connect(function(Descendant)
        -- // Check if it is a gun, set enabled
        if (Descendant.Name == "GunScript") then
            Beam.Enabled = true
        end
    end)

    -- // See whenever they unequip a gun
    Character.DescendantRemoving:Connect(function(Descendant)
        -- // Check if it is a gun, set disabled
        if (Descendant.Name == "GunScript") then
            Beam.Enabled = false
        end
    end)
end

-- // Apply on each player
local function OnPlayer(Player)
    OnCharacter(Player.Character)
    Player.CharacterAdded:Connect(OnCharacter)
end

for _, v in ipairs(Players:GetPlayers()) do
    OnPlayer(v)
end

-- // Redo for each new player
Players.PlayerAdded:Connect(OnPlayer)
end)

-- Anti AutoKill
Window:AddCommand('AntiAutoKill', {}, 'Prevents people from autokilling you, Reset to stop', function(Arguments, Speaker)
    if game.Workspace:FindFirstChild("AntiAutoKillPart") then
        game.Workspace:FindFirstChild("AntiAutoKillPart"):Destroy()
    end
        game.Workspace.FallenPartsDestroyHeight = -15000
        local part = Instance.new("Part")
            part.Name = "AntiAutoKillPart"
            part.Size = Vector3.new(1000, 10, 1000)
            part.Parent = game.Workspace
            part.Anchored = true
            part.Position = Vector3.new(-897.6600952148438, -650.0717163085938, -709.875732421875)
        character.HumanoidRootPart.CFrame = part.CFrame
end)

-- Chams ESP
Window:AddCommand('Chams', {}, 'Not mine | Puts chams on every player', function(Arguments, Speaker)
    local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer 
local dwRunService = game:GetService("RunService")

for i, v in pairs(game.Players:GetChildren()) do
repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and v.Character and v.Character.Head ~= nil and v.Character.HumanoidRootPart ~= nil
end

local sets = {
    ESP_Enabled = true,
    ESP_TeamCheck = false,
    Chams = true,
    Chams_Color = Color3.fromRGB(110,153,202),
    Chams_Transparency = 0.1,
    Chams_Glow_Color = Color3.fromRGB(110,153,202)
}

function destroy_chams(char)

    for k,v in next, char:GetChildren() do 

        if v:IsA("BasePart") and v.Transparency ~= 1 then

            if v:FindFirstChild("Glow") and 
            v:FindFirstChild("Chams") then

                v.Glow:Destroy()
                v.Chams:Destroy() 

            end 

        end 

    end 

end

dwRunService.Heartbeat:Connect(function()

    if sets.ESP_Enabled then

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer then

                if v.Character and
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then

                    if sets.ESP_TeamCheck == false then

                        local char = v.Character 

                        for k,b in next, char:GetChildren() do 

                            if b:IsA("BasePart") and 
                            b.Transparency ~= 1 then
                                
                                if sets.Chams then

                                    if not b:FindFirstChild("Glow") and
                                    not b:FindFirstChild("Chams") then

                                        local chams_box = Instance.new("BoxHandleAdornment", b)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true 
                                        chams_box.ZIndex = 4 
                                        chams_box.Adornee = b 
                                        chams_box.Color3 = sets.Chams_Color
                                        chams_box.Transparency = sets.Chams_Transparency
                                        chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)

                                        local glow_box = Instance.new("BoxHandleAdornment", b)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false 
                                        glow_box.ZIndex = 3 
                                        glow_box.Adornee = b 
                                        glow_box.Color3 = sets.Chams_Glow_Color
                                        glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)

                                    end

                                else

                                    destroy_chams(char)

                                end
                            
                            end

                        end

                    else

                        if v.Team == dwLocalPlayer.Team then
                            destroy_chams(v.Character)
                        end

                    end

                else

                    destroy_chams(v.Character)

                end

            end

        end

    else 

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer and 
            v.Character and 
            v.Character:FindFirstChild("HumanoidRootPart") and 
            v.Character:FindFirstChild("Humanoid") and 
            v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                
                destroy_chams(v.Character)

            end

        end

    end

end)
end)

-- ClickTP
Window:AddCommand('ClickTP', {}, 'Teleports you where you click (Q)', function(Arguments, Speaker)
    plr = game.Players.LocalPlayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "q" then
if mouse.Target then
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
end
end
end)
end)

-- Fly
Window:AddCommand('Fly', {}, 'Allows your character to fly (X)', function(Arguments, Speaker)
    local mouse = plr1:GetMouse()

	localplayer = plr1

	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end

	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)

	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = localplayer.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)

	workspace:WaitForChild("Core")

	local torso = workspace.Core
	flying = true
	local speed=10
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.cframe = torso.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=5
			end
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>10 then
				speed=5
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		localplayer.Character.Humanoid.PlatformStand=false
		speed=10
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
end)


Window:AddCommand('WP', {'WaypointName'}, 'Teleports to a waypoint', function(Arguments, Speaker)
    character.HumanoidRootPart.CFrame = Waypoints[Arguments[1]]
    Window:CreateNotification('KarpiWare', 'Teleported to '..Arguments[1], 5)
end)    


Window:AddCommand('AddWP', {'WaypointName'}, 'Sets a waypoint', function(Arguments, Speaker)
    Waypoints[Arguments[1]] = character.HumanoidRootPart.CFrame
    print(Waypoints[Arguments[1]])
    Window:CreateNotification('KarpiWare', 'Added '..Arguments[1], 5)
end)


Window:AddCommand('RemoveWP', {'WaypointName'}, 'Removes a waypoint', function(Arguments, Speaker)
    Waypoints[Arguments[1]] = nil
    Window:CreateNotification('KarpiWare', 'Removed '..Arguments[1], 5)
end)    

Window:AddCommand('Inviskill', {}, 'Hover over to read description, aim at someone and press Z to shoot them !!Broken on some Emulators!! (Revolver needed)"', function(Arguments, Speaker)
    local PPname = "[Revolver]"
plr = game.Players.LocalPlayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyUp:connect(function(key)
if key == "z" then
plr.Backpack[PPname].Parent = plr.Character
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-10,-10,0)
plr.Character.Humanoid:UnequipTools()
plr.Backpack[PPname].Parent = plr.Character
PPlocation:Activate()
plr.Character.Humanoid:UnequipTools()
end
end)
end)


Window:AddCommand('ChatSpy', {}, 'Not Mine | Allows you to view chat messages', function(Arguments, Speaker)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/dehoisted/Chat-Spy/main/source/main.lua'))()
end)


Window:AddCommand('Lock', {}, 'Not Mine | DNS Paid Lock leak', function(Arguments, Speaker)
    getgenv().DNS = {
        General = {
            Notifications = true,
            FOVMode = "PredictionPoint"
        },
        Silent = {
            Main = {
                Enabled = pa.Silent_Aim,
                Mode = "Target",
                Toggle = "C",
                Prediction = pa.Silent_Aim_Prediction,
                Parts = {"Head","LowerTorso","UpperTorso"}
            },
            FOV = {
                ShowFOV = true,
                Radius = pa.Fov_Size,
                Color = Color3.fromRGB(0, 71, 171),
                Filled = false,
                Transparency = 0.8
            }
        },
        Camlock = {
            Main = {
                Enabled = pa.Cam_lock,
                Key = pa.Lock_Key,
                UnlockKey = pa.Unlock_Key,
                SmoothLock = pa.Smooth_Lock,
                Smoothness = pa.Smoothing,
                PredictMovement = pa.Prediction_Enabled,
                Prediction = pa.Cam_Lock_Prediction,
                Shake = false,
                ShakeValue = 7,
                Parts = pa.Cam_Lock_Parts
            },
            FOV = {
                UseFOV = true,
                ShowFOV = true,
                Radius = pa.Fov_Size,
                Color = Color3.fromRGB(0, 71, 171),
                Filled = false,
                Transparency = 0.4
            }
        },
        Tracer = {
            Enabled = false,
            Color = Color3.fromRGB(137, 207, 240),
            Transparency = 0.4,
            Visible = false
        },
        AutoPrediction = { -- the numbers are pings ( this is for silent + Current sets not recommended )
            Enabled = true,
            ping20_30 = 0.12588,
            ping30_40 = 0.11911,
            ping40_50 = 0.12471,
            ping50_60 = 0.12766,
            ping60_70 = 0.12731,
            ping70_80 = 0.12951,
            ping80_90 = 0.13181,
            ping90_100 = 0.138,
            ping100_110 = 0.146,
            ping110_120 = 0.1367,
            ping120_130 = 0.1401,
            ping130_140 = 0.1437,
            ping140_150 = 0.153,
            ping150_160 = 0.1514,
            ping160_170 = 0.1663,
            ping170_180 = 0.1672,
            ping180_190 = 0.1848,
            ping190_200 = 0.1865,
        }
     }
     
     local function getnamecall()
        if game.PlaceId == 2788229376 then
            return "UpdateMousePos"
        elseif game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then
            return "MousePos"
        elseif game.PlaceId == 9825515356 then
            return "GetMousePos"
        end
     end
     
     local namecalltype = getnamecall()
     
     function MainEventLocate()
        for _,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
            if v.Name == "MainEvent" then
                return v
            end
        end
     end
     
     local mainevent = MainEventLocate()
     
     -- // Shorthand
     local uwuDNS = getgenv().DNS
     local uwuMain = uwuDNS.General
     local uwuCamMain = uwuDNS.Camlock.Main
     local uwuCamFOV = uwuDNS.Camlock.FOV
     local uwuSilentMain = uwuDNS.Silent.Main
     local uwuSilentFOV = uwuDNS.Silent.FOV
     local uwuTrace = uwuDNS.Tracer
     local uwuAutoPred = uwuDNS.AutoPrediction
     
     -- // Optimization
     local vect3 = Vector3.new
     local vect2 = Vector2.new
     local cnew = CFrame.new
     
     -- // Libraries
     local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
     local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
     
     -- // Services
     local uis = game:GetService("UserInputService")
     local rs = game:GetService("RunService")
     local plrs = game:GetService("Players")
     local ws = game:GetService("Workspace")
     
     -- // Script Variables
     local CToggle = false
     local lplr = plrs.LocalPlayer
     local CTarget = nil
     local CPart = nil
     local SToggle = false
     local STarget = nil
     local SPart = nil
     
     -- // Client Variables
     local m = lplr:GetMouse()
     local c = ws.CurrentCamera
     
     -- // Notification Function
     local function SendNotification(text)
        Notification:Notify(
            {Title = "DNS Rewrite", Description = "pl#0001 - "..text},
            {OutlineColor = Color3.fromRGB(50,76,110),Time = 2, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(50,76,110)}
        )
     end 
     
     -- // Call notification function
     if uwuMain.Notifications then
        SendNotification("DNS LOCK ")
     end
     
     -- // Camlock FOV
     local CamlockFOV = Drawing.new("Circle")
     CamlockFOV.Visible = uwuCamFOV.ShowFOV
     CamlockFOV.Thickness = 1
     CamlockFOV.NumSides = 30
     CamlockFOV.Radius = uwuCamFOV.Radius * 3
     CamlockFOV.Color = uwuCamFOV.Color
     CamlockFOV.Filled = uwuCamFOV.Filled
     CamlockFOV.Transparency = uwuCamFOV.Transparency
     
     --Silent FOV
     local SilentFOV = Drawing.new("Circle")
     SilentFOV.Visible = uwuSilentFOV.ShowFOV
     SilentFOV.Thickness = 1
     SilentFOV.NumSides = 30
     SilentFOV.Radius = uwuSilentFOV.Radius * 3
     SilentFOV.Color = uwuSilentFOV.Color
     SilentFOV.Filled = uwuSilentFOV.Filled
     SilentFOV.Transparency = uwuSilentFOV.Transparency
     
     --Tracer
     local Line = Drawing.new("Line")
     Line.Color = uwuTrace.Color
     Line.Transparency = uwuTrace.Transparency
     Line.Thickness = 1
     Line.Visible = uwuTrace.Visible
     
     -- // Script Functions
     local function uwuFindTawget() -- // Find target
        local d, t = math.huge, nil
        for _,v in pairs (plrs:GetPlayers()) do
            local _,os = c:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            if v ~= lplr and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and os then
                local pos = c:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (vect2(pos.X, pos.Y) - vect2(m.X, m.Y + 36)).magnitude
                if magnitude < d then
                    t = v
                    d = magnitude
                end
            end
        end
        return t
     end
     
     local function uwuFindPart() -- // Find aimpart
        local d, p = math.huge, nil
        if CTarget then
            for _,v in pairs(CTarget.Character:GetChildren()) do
                if table.find(uwuCamMain.Parts, v.Name) then
                    local pos = c:WorldToViewportPoint(v.Position)
                    local Magn = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
                    if Magn < d then
                        d = Magn
                        p = v
                    end
                end
            end
            return p.Name
        end
     end
     
     local function uwuFindSilentPart() -- // Find aimpart
        local d, p = math.huge, nil
        if CTarget then
            for _,v in pairs(CTarget.Character:GetChildren()) do
                if table.find(uwuSilentMain.Parts, v.Name) then
                    local pos = c:WorldToViewportPoint(v.Position)
                    local Magn = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
                    if Magn < d then
                        d = Magn
                        p = v
                    end
                end
            end
            return p.Name
        end
     end
     
     local function uwuCheckAnti(targ) -- // Anti-aim detection
        if (targ.Character.HumanoidRootPart.Velocity.Y < -5 and targ.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall) or targ.Character.HumanoidRootPart.Velocity.Y < -50 then
            return true
        elseif targ and (targ.Character.HumanoidRootPart.Velocity.X > 35 or targ.Character.HumanoidRootPart.Velocity.X < -35) then
            return true
        elseif targ and targ.Character.HumanoidRootPart.Velocity.Y > 60 then
            return true
        elseif targ and (targ.Character.HumanoidRootPart.Velocity.Z > 35 or targ.Character.HumanoidRootPart.Velocity.Z < -35) then
            return true
        else
            return false
        end
     end
     
     local function InSilentRadiuwus(target, section, fov) -- // Check if player is in the fov
        if target then
            local pos = nil
            if not uwuCheckAnti(target) then
                pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + target.Character.PrimaryPart.Velocity * section.Prediction)
            else
                pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + ((target.Character.Humanoid.MoveDirection * target.Character.Humanoid.WalkSpeed) * section.Prediction))
            end
            local mag = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
            if mag < fov * 3 then
                return true
            else
                return false
            end
        end
     end
     
     local function Silent()
        if STarget then
            if SPart and InSilentRadiuwus(STarget, uwuSilentMain, SilentFOV.Radius) then
                if not uwuCheckAnti(STarget) then
                    mainevent:FireServer(namecalltype, STarget.Character[SPart].Position + (STarget.Character[SPart].Velocity * uwuSilentMain.Prediction))
                else
                    mainevent:FireServer(namecalltype, STarget.Character[SPart].Position + ((STarget.Character.Humanoid.MoveDirection * STarget.Character.Humanoid.WalkSpeed) * uwuSilentMain.Prediction))
                end
            end
        end
     end
     
     
     local function InRadiuwus(target, section, fov) -- // Check if player is in the fov
        if target then
            if uwuCamFOV.UseFOV then
                local pos = nil
                if not uwuCheckAnti(target) then
                    pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + target.Character.PrimaryPart.Velocity * section.Prediction)
                else
                    pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + ((target.Character.Humanoid.MoveDirection * target.Character.Humanoid.WalkSpeed) * section.Prediction))
                end
                local mag = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
                if mag < fov * 3 then
                    return true
                else
                    return false
                end
            else
                return true
            end
        end
     end
     
     uis.InputBegan:Connect(function(k,t)
        if not t then
            if k.KeyCode == Enum.KeyCode[uwuCamMain.Key:upper()] then
                CToggle = true
                CTarget = uwuFindTawget()
                if uwuMain.Notifications then
                    SendNotification("locked onto "..CTarget.Name)
                end
            elseif k.KeyCode == Enum.KeyCode[uwuCamMain.UnlockKey:upper()] then
                if CToggle then
                    CToggle = false
                    CTarget = nil
                    if uwuMain.Notifications then
                        SendNotification("unlocked")
                    end
                end
            elseif k.KeyCode == Enum.KeyCode[uwuSilentMain.Toggle:upper()] and uwuSilentMain == "Regular" then
                if SToggle then
                    SToggle = false
                    if uwuMain.Notifications then
                        SendNotification("silent disabled")
                    end
                else
                    SToggle = true
                    if uwuMain.Notifications then
                        SendNotification("silent enabled")
                    end
                end
            end
        end
     end)
     
     rs.RenderStepped:Connect(function()
        if CTarget then
            CPart = uwuFindPart()
            local pos = nil
            local cum = nil
            if CTarget.Character.BodyEffects["K.O"].Value == true or lplr.Character.BodyEffects["K.O"].Value == true then
                CToggle = false
                CTarget = nil
            else
                if uwuCamMain.Shake then
                    if uwuCamMain.PredictMovement then
                        if not uwuCheckAnti(CTarget) then
                            cum = CTarget.Character[CPart].Position + CTarget.Character[CPart].Velocity * uwuCamMain.Prediction + (vect3(
                                math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                                math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                                math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue)
                            ) * 0.1)
                        else
                            cum = CTarget.Character[CPart].Position + ((CTarget.Character.Humanoid.MoveDirection * CTarget.Character.Humanoid.WalkSpeed) * uwuCamMain.Prediction + (vect3(
                                math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                                math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                                math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue)
                            ) * 0.1))
                        end
                        pos = c:WorldToViewportPoint(cum)
                    else
                        cum = CTarget.Character[CPart].Position + (vect3(
                            math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                            math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                            math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue)
                        ) * 0.1)
                        pos = c:WorldToViewportPoint(cum)
                    end
                else
                    if uwuCamMain.PredictMovement then
                        if not uwuCheckAnti(CTarget) then
                            cum = CTarget.Character[CPart].Position + CTarget.Character[CPart].Velocity * uwuCamMain.Prediction
                        else
                            cum = CTarget.Character[CPart].Position + ((CTarget.Character.Humanoid.MoveDirection * CTarget.Character.Humanoid.WalkSpeed) * uwuCamMain.Prediction)
                        end
                        pos = c:WorldToViewportPoint(cum)
                    else
                        cum = CTarget.Character[CPart].Position
                        pos = c:WorldToViewportPoint(cum)
                    end
                end
                if InRadiuwus(CTarget, uwuCamMain, CamlockFOV.Radius) then
                    local main = nil
                    if uwuCamMain.SmoothLock then
                        main = cnew(c.CFrame.p, cum)
                        c.CFrame = c.CFrame:Lerp(main, uwuCamMain.Smoothness, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                    else
                        c.CFrame = cnew(c.CFrame.p, cum)
                    end
                end
                if uwuMain.FOVMode == "Mouse" then
                    if uwuCamFOV.ShowFOV then
                        CamlockFOV.Position = vect2(m.X, m.Y + 36)
                    end
                    if uwuSilentFOV.ShowFOV then
                        SilentFOV.Position = vect2(m.X, m.Y + 36)
                    end
                elseif uwuMain.FOVMode == "PredictionPoint" then
                    if uwuCamFOV.ShowFOV then
                        CamlockFOV.Position = vect2(pos.X, pos.Y)
                    end
                    if uwuSilentFOV.ShowFOV then
                        SilentFOV.Position = vect2(pos.X, pos.Y)
                    end
                end
                if uwuTrace.Enabled then
                    Line.Visible = true
                    Line.From = vect2(m.X, m.Y + 36)
                    Line.To = vect2(pos.X, pos.Y)
                end
            end
        else
            CamlockFOV.Position = vect2(m.X, m.Y + 36)
            SilentFOV.Position = vect2(m.X, m.Y + 36)
            Line.Visible = false
        end
     end)
     
     lplr.Character.ChildAdded:Connect(function(tool)
        if tool:IsA("Tool") then
            tool.Activated:connect(function()
                if uwuSilentMain.Mode == "Regular" then
                    if SToggle then
                        STarget = uwuFindTawget()
                        if STarget then
                            SPart = uwuFindSilentPart()
                            if SPart then
                                Silent()
                            end
                        end
                    end
                elseif uwuSilentMain.Mode == "Target" then
                    if CToggle then
                        STarget = CTarget
                        if STarget then
                            SPart = uwuFindSilentPart()
                            if SPart then
                                Silent()
                            end
                        end
                    end
                end
            end)
        end
     end)
     
     lplr.CharacterAdded:Connect(function(char)
        char.ChildAdded:Connect(function(tool)
            tool.Activated:connect(function()
                if uwuSilentMain.Mode == "Regular" then
                    if SToggle then
                        STarget = uwuFindTawget()
                        if STarget then
                            SPart = uwuFindSilentPart()
                            if SPart then
                                Silent()
                            end
                        end
                    end
                elseif uwuSilentMain.Mode == "Target" then
                    if CToggle then
                        STarget = CTarget
                        if STarget then
                            SPart = uwuFindSilentPart()
                            if SPart then
                                Silent()
                            end
                        end
                    end
                end
            end)
        end)
     end)
     
     --Auto Prediction
     coroutine.resume(coroutine.create(function()
        while true do
            if uwuAutoPred.Enabled then
                local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
                if ping <= 40 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping30_40
                elseif ping <= 50 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping40_50
                elseif ping <= 60 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping50_60
                elseif ping <= 70 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping60_70
                elseif ping <= 80 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping70_80
                elseif ping <= 90 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping80_90
                elseif ping <= 100 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping90_100
                elseif ping <= 110 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping100_110
                elseif ping <= 120 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping110_120
                elseif ping <= 130 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping120_130
                elseif ping <= 140 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping130_140
                elseif ping <= 150 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping140_150
                elseif ping <= 160 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping150_160
                elseif ping <= 170 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping160_170
                elseif ping <= 180 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping170_180
                elseif ping <= 190 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping180_190
                elseif ping <= 200 then
                    uwuSilentMain.Prediction = uwuAutoPred.ping190_200
                end
                task.wait(0.7)
            end
        end
     end))
end)


Window:AddCommand('SetTarget', {'Player'}, 'Sets the target player (Username only)', function(Arguments, Speaker)
    local str = string.gsub(Arguments[1], " ", "")
    local PartialName = str


local Players = game.Players:GetPlayers()
for i = 1, #Players do
local CurrentPlayer = Players[i]
if string.lower(CurrentPlayer.Name):sub(1, #PartialName) == string.lower(PartialName) then
target = CurrentPlayer.Name
break
end
end
end)


Window:AddCommand('View', {}, 'Sets camerasubject to your target', function(Arguments, Speaker)
    if target == nil then
        Window:CreateNotification('KarpiWare', 'Set your target using SetTarget command first!', 5)
    else
        if game.Players:FindFirstChild(target) then
            local plr2 = game.Players:FindFirstChild(target)
            game.Workspace.CurrentCamera.CameraSubject = plr2.Character
        else
            Window:CreateNotification('KarpiWare', 'Unable to find set target', 5)
        end
    end
end)


Window:AddCommand('Unview', {}, 'Sets camerasubject to your player', function(Arguments, Speaker)
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end)


Window:AddCommand('Goto', {}, 'Teleports to set target', function(Arguments, Speaker)
    if target == nil then
        Window:CreateNotification('KarpiWare', 'Set your target using SetTarget command first!', 5)
    else
        if game.Players:FindFirstChild(target) then
            local plr2 = game.Players:WaitForChild(target)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        else
            Window:CreateNotification('KarpiWare', 'Unable to find set target', 5)
        end
    end
end)


Window:AddCommand('SpawnCash', {}, 'Fake spawns cash using moneygun, get moneygun first.', function(Arguments, Speaker)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    local tool = game.Players.LocalPlayer.Backpack["[Money Gun]"]

    humanoid:EquipTool(tool)
    tool:Activate()
    humanoid:UnequipTools(tool)
end)


Window:AddCommand('MoneyGun', {}, 'Teleports to moneygun for SpawnCash Command', function(Arguments, Speaker)
mgogpos = character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-885.24609375, 21.597984313964844, -129.31216430664062)
wait(3)
character.HumanoidRootPart.CFrame = mgogpos
end)


Window:AddCommand('CombatPhone', {}, 'Need Phone and Bat | Kill people with a phone', function(Arguments, Speaker)
    plr1.Backpack["[Phone]"].Parent = plr1.Character
                  plr1.Backpack["[Bat]"].Parent = plr1.Character
                   local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,-100)
wait(0.01)
plr1.Character["[Phone]"].Parent = plr1.Backpack
plr1.Character["[Bat]"].Parent = plr1.Backpack
wait(0.01)
                  plr1.Backpack["[Phone]"].Parent = plr1.Character
                  plr1.Backpack["[Bat]"].Parent = plr1.Character
                   local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,100)
end)


Window:AddCommand('CombatFlowers', {}, 'Need Flowers and Bat | Kill people with flowers', function(Arguments, Speaker)
    plr1.Backpack["[FlowersTool]"].Parent = plr1.Character
    plr1.Backpack["[Bat]"].Parent = plr1.Character
     local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,-100)
wait(0.01)
plr1.Character["[FlowersTool]"].Parent = plr1.Backpack
plr1.Character["[Bat]"].Parent = plr1.Backpack
wait(0.01)
    plr1.Backpack["[FlowersTool]"].Parent = plr1.Character
    plr1.Backpack["[Bat]"].Parent = plr1.Character
     local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,100)
end)


Window:AddCommand('CombatChicken', {}, 'Kill People with chicken', function(Arguments, Speaker)
    plr1.Backpack["[Chicken]"].Parent = plr1.Character
    plr1.Backpack["[Bat]"].Parent = plr1.Character
     local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,-100)
wait(0.01)
plr1.Character["[Chicken]"].Parent = plr1.Backpack
plr1.Character["[Bat]"].Parent = plr1.Backpack
wait(0.01)
    plr1.Backpack["[Chicken]"].Parent = plr1.Character
    plr1.Backpack["[Bat]"].Parent = plr1.Character
     local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,100)
end)


-- Teleports
Window:AddCommand('Bank', {}, 'Teleports to bank', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-447.26019287109375, 23.003671646118164, -283.8965759277344)
end)


Window:AddCommand('Revolver', {}, 'Teleports to revolver', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-643.6868286132812, 21.748022079467773, -121.32481384277344)
end)


Window:AddCommand('Police', {}, 'Teleports to Police station', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265.4961853027344, 21.797977447509766, -116.37294006347656)
end)


Window:AddCommand('Drumgun', {}, 'Teleports to drumgun', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-81.06612396240234, 22.575956344604492, -86.40039825439453)
end)


Window:AddCommand('MediumArmor', {}, 'Teleports to Medium Armor', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(410.32427978515625, 48.02492904663086, -50.341190338134766)
end)


Window:AddCommand('Boxing', {}, 'Teleports to Boxing', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-235.43539428710938, 22.065319061279297, -1121.0645751953125)
end)


Window:AddCommand('Military', {}, 'Teleports to Military', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.51276397705078, 25.253023147583008, -875.2348022460938)
end)


Window:AddCommand('DBshotgun', {}, 'Teleports to DBshotgun', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.364553451538086, 25.628028869628906, -834.4078369140625)
end)


Window:AddCommand('PhoneStore', {}, 'Teleports to Phone Store', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-235.43539428710938, 22.065319061279297, -1121.0645751953125)
end)


Window:AddCommand('Fitness', {}, 'Teleports to Fitness', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.6124267578125, 22.69831657409668, -632.8761596679688)
end)


Window:AddCommand('Hospital', {}, 'Teleports to Hospital', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.38876342773438, 22.798017501831055, -483.2912902832031)
end)


Window:AddCommand('UphillGuns', {}, 'Teleports to UphillGuns', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(483.9078369140625, 48.06851577758789, -623.2725219726562)
end)


Window:AddCommand('Joses', {}, 'Teleports to Joses', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(583.9660034179688, 51.05943298339844, -479.64508056640625)
end)


Window:AddCommand('Bat', {}, 'Teleports to Bat', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.242919921875, 21.748022079467773, -293.10821533203125)
end)


Window:AddCommand('Food', {}, 'Teleports to Food', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-325.65826416015625, 23.680667877197266, -293.7251281738281)
end)


Window:AddCommand('SkatePark', {}, 'Teleports to Skate Park', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-850.03955078125, 21.79800796508789, -531.6365356445312)
end)


Window:AddCommand('Casino', {}, 'Teleports to Casino', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-864.4593505859375, 21.597980499267578, -101.7231216430664)
end)


Window:AddCommand('Sledgehammer', {}, 'Teleports to Sledgehammer', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-901.64404296875, 21.74802017211914, -296.5692443847656)
end)


Window:AddCommand('DownhillGuns', {}, 'Teleports to Downhill Guns', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582.5549926757812, 8.312807083129883, -737.0886840820312)
end)


Window:AddCommand('Panic', {}, 'Teleports you to a hidden spot', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196.7130584716797, -7.202033042907715, 204.46034240722656)
end)
