local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()

local savedtheme = nil
local Window = Library:CreateWindow({
    Name = 'KarpiWare V4',
    IntroText = 'Proton Utilities | KarpiWare V4',
    IntroIcon = 'rbxassetid://0',
    IntroBlur = true,
    IntroBlurIntensity = 15,
    Theme =  Library.Themes.scriptware,
    Position = 'Bottom',
    Draggable = true,
    Prefix = _G.Prefix
})

local HttpService = game:GetService("HttpService");
local file = "karpi_ware_settings.txt";

function load()
	print("loading sets")
	if (readfile and isfile and isfile(file)) then
        print('file found, loading settings')
		savedtheme = HttpService:JSONDecode(readfile(file));
		Window:ChangeTheme(savedtheme)
        Window:CreateNotification('KarpiWare', 'Loaded saved theme')
	end
end

function save(tosave)
    print("saving sets")
    local json;
    if (writefile) then
    json = HttpService:JSONEncode(tosave)
    writefile(file, json);
    print("saved sets")
    else
        print("writefile function dosen't exist on this executor")
    end
end

load()

local plr1 = game.Players.LocalPlayer
local character = plr1.Character
local humanoid = character.Humanoid
local others = game:GetService("Players")
local target = nil
local foundtarg = nil
local mgogpos = nil
local autofarm = false
local Waypoints = {

}


Window:AddCommand('ChangeTheme', {'Theme'}, 'Dark, Light, Red, Orange, Purple, Blue', function(Arguments, Speaker)
    if Arguments[1] == "Dark" then
        Window:ChangeTheme('dark')
        save('dark')
    elseif Arguments[1] == "dark" then
        Window:ChangeTheme('dark')
        save('dark')
    elseif Arguments[1] == "Light" then
        Window:ChangeTheme('light')
        save('light')
    elseif Arguments[1] == "Red" then
        Window:ChangeTheme('redandblack')
        save('redandblack')
    elseif Arguments[1] == "Orange" then
        Window:ChangeTheme('kiriot')
        save('kiriot')
    elseif Arguments[1] == "Purple" then
        Window:ChangeTheme('purple')
        save('purple')
    elseif Arguments[1] == "Blue" then
        Window:ChangeTheme('scriptware')
        save('scriptware')
    elseif Arguments[1] == "light" then
        Window:ChangeTheme('light')
        save('light')
    elseif Arguments[1] == "red" then
        Window:ChangeTheme('redandblack')
        save('redandblack')
    elseif Arguments[1] == "orange" then
        Window:ChangeTheme('kiriot')
        save('kiriot')
    elseif Arguments[1] == "purple" then
        Window:ChangeTheme('purple')
        save('purple')
    elseif Arguments[1] == "blue" then
        Window:ChangeTheme('scriptware')
        save('scriptware')
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

-- No Reoil
Window:AddCommand('NoRecoil', {}, 'Removes Gun Recoil', function(Arguments, Speaker)
    for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
        if v:IsA('Camera') then
            v:Destroy()
        end
    end
    local Camera2 = Instance.new('Camera',game.Workspace)
    Camera2.Name = 'Camera'
    Camera2.CameraType = 'Custom'
    Camera2.CameraSubject = humanoid
    Camera2.HeadLocked = true
    Camera2.HeadScale = 1
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end)

-- Rejoin
Window:AddCommand('Rejoin', {}, 'Rejoins the game', function(Arguments, Speaker)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
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

local function IsBeamHit(Beam, MousePos)
    local Character = LocalPlayer.Character
    local Attachment = Beam.Attachment1

    local Origin = Beam.Attachment0.WorldPosition
    local Direction = MousePos - Origin

    local raycastParms = RaycastParams.new()
    raycastParms.FilterDescendantsInstances = {Character, Workspace.CurrentCamera}
    local RaycastResult = Workspace:Raycast(Origin, Direction * 2, raycastParms)
    if (not RaycastResult) then
        Beam.Color = Colours.Away
        Attachment.WorldPosition = MousePos
        return
    end

    if (Character) then
        Beam.Color = RaycastResult.Instance:IsDescendantOf(Character) and Colours.At or Colours.Away
    end

    Attachment.WorldPosition = RaycastResult.Position
end

local function CreateBeam(Character)
    local Beam = Instance.new("Beam", Character)

    Beam.Attachment0 = Character:WaitForChild("Head"):WaitForChild("FaceCenterAttachment")
    Beam.Enabled = Character:FindFirstChild("GunScript", true) ~= nil

    Beam.Width0 = 0.1
    Beam.Width1 = 0.1

    table.insert(Beams, Beam)

    -- // Return
    return Beam
end

local function OnCharacter(Character)
    if (not Character) then
        return
    end

    local MousePos = Character:WaitForChild("BodyEffects"):WaitForChild("MousePos")

    local Beam = CreateBeam(Character)

    local Attachment = Instance.new("Attachment", Terrain)
    Beam.Attachment1 = Attachment
    IsBeamHit(Beam, MousePos.Value)
    MousePos.Changed:Connect(function()
        IsBeamHit(Beam, MousePos.Value)
    end)

    Character.DescendantAdded:Connect(function(Descendant)
        if (Descendant.Name == "GunScript") then
            Beam.Enabled = true
        end
    end)

    Character.DescendantRemoving:Connect(function(Descendant)
        if (Descendant.Name == "GunScript") then
            Beam.Enabled = false
        end
    end)
end

local function OnPlayer(Player)
    OnCharacter(Player.Character)
    Player.CharacterAdded:Connect(OnCharacter)
end

for _, v in ipairs(Players:GetPlayers()) do
    OnPlayer(v)
end

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

-- Cash ESP
Window:AddCommand('Autofarm', {}, 'Cash autofarm, rejoin to stop', function(Arguments, Speaker)
-- Revamped

if autofarm == true then -- to stop from lagging
else
    autofarm = true
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    local tool = game.Players.LocalPlayer.Backpack.Combat

    local function Collect()
        task.wait(0.5)
        for i, v in ipairs(game.Workspace.Ignored.Drop:GetChildren()) do
            if v.Name == "MoneyDrop" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 20 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                fireclickdetector(v.ClickDetector)
                task.wait(0.5)
            end
        end
    end

    local function Start()
            humanoid:EquipTool(tool)
            for i, v in ipairs(game.Workspace.Cashiers:GetChildren()) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Open.CFrame * CFrame.new(0, 0, 2)
                for i = 0, 10 do
                    task.wait(0.5)
                    tool:Activate()
                end
            Collect()
        task.wait(0.5)
    end
    end
    Start()
end
end)

-- Chams ESP
Window:AddCommand('Chams', {}, 'Not mine | Puts chams on every player', function(Arguments, Speaker)
local dwRunService = game:GetService("RunService")

for i, v in pairs(game.Players:GetChildren()) do
repeat wait() until game:IsLoaded() and others and plr1 and character and v.Character and v.Character.Head ~= nil and v.Character.HumanoidRootPart ~= nil
end

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

        for k,v in next, others:GetPlayers() do

            if v ~= plr1 then

                if v.Character and
                v.Character:FindFirstChild("HumanoidRootPart") and
                v.Character:FindFirstChild("Humanoid") and
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then

                        local char = v.Character

                        for k,b in next, char:GetChildren() do

                            if b:IsA("BasePart") and
                            b.Transparency ~= 1 then

                                    if not b:FindFirstChild("Glow") and
                                    not b:FindFirstChild("Chams") then

                                        local chams_box = Instance.new("BoxHandleAdornment", b)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true
                                        chams_box.ZIndex = 4
                                        chams_box.Adornee = b
                                        chams_box.Color3 = Color3.fromRGB(110,153,202)
                                        chams_box.Transparency = 0.1
                                        chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)

                                        local glow_box = Instance.new("BoxHandleAdornment", b)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false
                                        glow_box.ZIndex = 3
                                        glow_box.Adornee = b
                                        glow_box.Color3 = Color3.fromRGB(110,153,202)
                                        glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)

                                    end
                            end

                        end

                    else

                        if v.Team == plr1.Team then
                            destroy_chams(v.Character)
                        end

                    end

                else

                    destroy_chams(v.Character)

                end

            end

end)
end)

-- ClickTP
Window:AddCommand('ClickTP', {}, 'Teleports you where you hover over (Q)', function(Arguments, Speaker)
local plr = game.Players.LocalPlayer
local hum = plr.Character.HumanoidRootPart
local mouse = plr:GetMouse()
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
		Weld.Part1 = character.LowerTorso
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
			humanoid.PlatformStand=true
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
		humanoid.PlatformStand=false
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

Window:AddCommand('Inviskill', {}, 'Hover over to read description, aim at someone and press Z to shoot them (Revolver needed)"', function(Arguments, Speaker)
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
                Enabled = true,
                Mode = "Target",
                Toggle = "C",
                Prediction = 0.12471,
                Parts = {"Head","LowerTorso","UpperTorso"}
            },
            FOV = {
                ShowFOV = true,
                Radius = 40,
                Color = Color3.fromRGB(0, 71, 171),
                Filled = false,
                Transparency = 0.2
            }
        },
        Camlock = {
            Main = {
                Enabled = true,
                Key = "T",
                UnlockKey = "B",
                SmoothLock = true,
                Smoothness = 0.90,
                PredictMovement = true,
                Prediction = 0.51,
                Shake = false,
                ShakeValue = 7,
                Parts = {"UpperTorso"}
            },
            FOV = {
                UseFOV = true,
                ShowFOV = true,
                Radius = 40,
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


Window:AddCommand('Target', {'Player'}, 'Sets the target player (Username only)', function(Arguments, Speaker)
    local str = string.gsub(Arguments[1], " ", "")
    local PartialName = str

    local Players = game.Players:GetPlayers()
    foundtarg = false

    for i = 1, #Players do
        local CurrentPlayer = Players[i]
        if string.lower(CurrentPlayer.Name):sub(1, #PartialName) == string.lower(PartialName) then
            target = CurrentPlayer.Name
            foundtarg = true
            Window:CreateNotification('KarpiWare', 'Target: '..target, 5)
            break
        end
    end

    if not foundtarg then
        Window:CreateNotification('KarpiWare', 'Unable to find target.', 5)
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


Window:AddCommand('GetCash', {}, 'Tells you the set targets cash amount', function(Arguments, Speaker)
    if target == nil then
        Window:CreateNotification('KarpiWare', 'Set your target using SetTarget command first!', 5)
    else
        if game.Players:FindFirstChild(target) then
            local cashtarget = game:GetService('Players'):FindFirstChild(target)

            local nmb = (function (n)
                n = tostring(n)
                return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
            end)
            cashtarget = game:GetService('Players'):FindFirstChild(target)
            Window:CreateNotification('KarpiWare', 'Cash: '..nmb(cashtarget.DataFolder.Currency.Value), 5)

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
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-883.099976, 18.7245655, -129.749939)
fireclickdetector(game.Workspace.Ignored.Shop['[Money Gun] - $800'].ClickDetector)
task.wait(3)
character.HumanoidRootPart.CFrame = mgogpos
end)


Window:AddCommand('Armor', {}, 'Buys armor', function(Arguments, Speaker)
    mgogpos = character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-510.3179626464844, 20.275625228881836, -285.819885253906259)
    fireclickdetector(game.Workspace.Ignored.Shop['[Money Gun] - $800'].ClickDetector)
    task.wait(3)
    character.HumanoidRootPart.CFrame = mgogpos
    end)


Window:AddCommand('CombatPhone', {}, 'Need Phone and Bat | Kill people with a phone', function(Arguments, Speaker)
    plr1.Backpack["[Phone]"].Parent = plr1.Character
                  plr1.Backpack["[Bat]"].Parent = plr1.Character
                   local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,-100)
task.wait(0.01)
plr1.Character["[Phone]"].Parent = plr1.Backpack
plr1.Character["[Bat]"].Parent = plr1.Backpack
task.wait(0.01)
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
task.wait(0.01)
plr1.Character["[FlowersTool]"].Parent = plr1.Backpack
plr1.Character["[Bat]"].Parent = plr1.Backpack
task.wait(0.01)
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
task.wait(0.01)
plr1.Character["[Chicken]"].Parent = plr1.Backpack
plr1.Character["[Bat]"].Parent = plr1.Backpack
task.wait(0.01)
    plr1.Backpack["[Chicken]"].Parent = plr1.Character
    plr1.Backpack["[Bat]"].Parent = plr1.Character
     local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,100)
end)


-- Teleports

Window:AddCommand('Panic', {}, 'Teleports you to a Safe spot', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196.7130584716797, -7.202033042907715, 204.46034240722656)
end)


Window:AddCommand('Bank', {}, 'Teleports to Bank', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-447.26019287109375, 23.003671646118164, -283.8965759277344)
end)


Window:AddCommand('Police', {}, 'Teleports to Police station', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265.4961853027344, 21.797977447509766, -116.37294006347656)
end)


Window:AddCommand('Boxing', {}, 'Teleports to Boxing', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-235.43539428710938, 22.065319061279297, -1121.0645751953125)
end)


Window:AddCommand('Military', {}, 'Teleports to Military', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.51276397705078, 25.253023147583008, -875.2348022460938)
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


Window:AddCommand('Joses', {}, 'Teleports to Joses', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(583.9660034179688, 51.05943298339844, -479.64508056640625)
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


Window:AddCommand('Club', {}, 'Teleports to Club', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262.5336608886719, 22.628089904785156, -453.33203125)
end)


Window:AddCommand('School', {}, 'Teleports to School', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-652.6968383789062, 21.982521057128906, 306.2254943847656)
end)


Window:AddCommand('UphillGuns', {}, 'Teleports to Uphill Guns', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(483.9078369140625, 48.06851577758789, -623.2725219726562)
end)


Window:AddCommand('DownhillGuns', {}, 'Teleports to Downhill Guns', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582.5549926757812, 8.312807083129883, -737.0886840820312)
end)


Window:AddCommand('RPG', {}, 'Teleports to RPG', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.18929290771484, -26.752010345458984, -276.26934814453125)
end)


Window:AddCommand('Revolver', {}, 'Teleports to Revolver', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-643.6868286132812, 21.748022079467773, -121.32481384277344)
end)


Window:AddCommand('DBshotgun', {}, 'Teleports to DBshotgun', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.364553451538086, 25.628028869628906, -834.4078369140625)
end)


Window:AddCommand('TacShotgun', {}, 'Teleports to Tactical Shotgun', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.364553451538086, 25.628028869628906, -834.4078369140625)
end)


Window:AddCommand('Rifle', {}, 'Teleports to Rifle', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-167.8747100830078, -18.040834426879883, -311.8492431640625)
end)


Window:AddCommand('AUG', {}, 'Teleports to AUG', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-273.3023376464844, 52.261661529541016, -216.994140625)
end)


Window:AddCommand('Knife', {}, 'Teleports to Knife', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-278.2847900390625, 21.74802017211914, -239.21456909179688)
end)


Window:AddCommand('Sledgehammer', {}, 'Teleports to Sledgehammer', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-901.64404296875, 21.74802017211914, -296.5692443847656)
end)


Window:AddCommand('Bat', {}, 'Teleports to Bat', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.242919921875, 21.748022079467773, -293.10821533203125)
end)


Window:AddCommand('Pitchfork', {}, 'Teleports to Pitchfork', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.8275604248047, 21.747995376586914, -28.456567764282227)
end)


Window:AddCommand('Shovel', {}, 'Teleports to Shovel', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150.86940002441406, 21.747995376586914, 31.57048988342285)
end)


Window:AddCommand('StopSign', {}, 'Teleports to StopSign', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225.90127563476562, 21.74802017211914, -81.81007385253906)
end)


Window:AddCommand('Tazer', {}, 'Teleports to Tazer', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.2383728027344, 21.7979793548584, -98.4942855834961)
end)


Window:AddCommand('TearGas', {}, 'Teleports to TearGas', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.40107727050781, 25.637149810791016, -891.5840454101562)
end)


Window:AddCommand('Lockpick', {}, 'Teleports to Lockpick', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.5516357421875, 21.748022079467773, -238.6057891845703)
end)


Window:AddCommand('Key', {}, 'Teleports to Key', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-271.192138671875, 21.748022079467773, -239.74179077148438)
end)


Window:AddCommand('Grenade', {}, 'Teleports to Grenade', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.70999145507812, -26.75200653076172, -273.833251953125)
end)


Window:AddCommand('Weights', {}, 'Teleports to Weights', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.78539276123047, 22.948291778564453, -654.3751220703125)
end)


Window:AddCommand('Lettuce', {}, 'Teleports to Lettuce', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-81.97262573242188, 22.698314666748047, -632.7714233398438)
end)


Window:AddCommand('Antibodies', {}, 'Teleports to Antibodies', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109.00323486328125, 22.798017501831055, -471.5952453613281)
end)


Window:AddCommand('Mask', {}, 'Teleports to Mask', function(Arguments, Speaker)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(107.610595703125, 22.798015594482422, -486.6477966308594)
end)
