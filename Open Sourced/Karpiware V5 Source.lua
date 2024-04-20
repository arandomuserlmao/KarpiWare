  --// i was really burnt out during this update and fucked some functions up while trying to optimize it will fix later but im tires asf rn

  --// ignore the fact that everything is unorganized, unoptimized, and ugly as hell

    getfenv().LPH_NO_VIRTUALIZE = function(f) return f end; --// this shit was for luarmor but the script is free now so just ignore it

    --// Variables
            local newtargguiname = game:GetService('HttpService'):GenerateGUID(true)
            local Version = 5.1
            local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/biggaboy212/Libraries/main/newproj2/xsx%20Lib%20Source.lua'))()
            local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/biggaboy212/Libraries/main/newproj1/Elements/senseadjusted'))()
            Sense.Load()
            Sense.sharedSettings.textSize = 12
            Sense.sharedSettings.textFont = 0
            
            library.title = "KarpiWare V5 | Paid access"
            
            local Notif = library:InitNotifications()
            Notif:Notify("Loading | Version " .. tostring(Version), 3, "information")
            
            local players = game:GetService("Players")
            local mouse = players.LocalPlayer:GetMouse()
        
            local mainrunservice
            
            local BillboardGui = Instance.new("BillboardGui")
            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui.Active = true
            BillboardGui.LightInfluence = 1
            BillboardGui.AlwaysOnTop = true
            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
            BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
            BillboardGui.Parent = game:GetService('CoreGui')
            
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Size = UDim2.new(0, 200, 0, 50)
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BackgroundTransparency = 1
            TextLabel.BorderSizePixel = 0
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.FontSize = Enum.FontSize.Size18
            TextLabel.TextStrokeTransparency = 0
            TextLabel.TextSize = 15
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.Text = "Target"
            TextLabel.Font = Enum.Font['Code']
            TextLabel.Parent = BillboardGui
            
            local Folder = Instance.new('Folder')
            Folder.Parent = game:GetService('CoreGui')
            
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.fromRGB(255, 255, 255)
            Highlight.Parent = Folder
            
            local ScriptVariables = {
                TargetSetKey = 'T',
            
                CurrentTarget = nil,
                TargetGui = false,
            
                ViewTarget= false,

                SilentAim = false,
                BlatantLock = nil,
                LockSmoothing = false,
                LockSmoothingValue = 0.90,
                Prediction = 0,
                AutoPrediction = false,
                AddToAutoPredict = 0,
            
                TargetFOV = true,
                VisualizeTargetSetRadius = 100, -- aka target fov rad
            
                VisualizeTargetSet = true,
            
                TargetStrafe = false,
                StrafeHeight = 1,
                StrafeDistance = 1,
                StrafeSpeed = 1,
            
                RandomOrbit = false,
                RandomRange = 3,
            
                UnderGroundFollow = false,
                UnderGroundDistance = 5,
            
                PredFollow = false,
            
                NoRecoil = false,
            
                CFrameWalking = false,
                CFrameWalkingSpeed = 1.25,
            
                AntiSlow = false,
                AntiJumpSlow = false,
            
                R = 255,
                G = 255,
                B = 255,
            
                AutoStomp = false,
        
                Selfdestroyuponknock = false,
            
                SpawnCashCommand = false,
                
                HighTool = false,

                InvisKill = false,
                OffsetikVal = 1,
            
                ArrowLock = false,
                RPGlock = false,
            
                HellTarget = false,
                HeavenTarget = false,
            
                BreakArrows = false,
                BreakGrenades = false,
                BreakRPG = false,
        
                VelocityAntiLock = false,
                Veloantilockval = 5,
        
                originalposition = nil,
        
                Teleports = {
                    ['Bank'] = CFrame.new(-442.976105, 22.9941406, -284.505615, -0.999580204, -6.94428124e-08, -0.0289722364, -6.72757423e-08, 1, -7.5772931e-08, 0.0289722364, -7.37919947e-08, -0.999580204),
                    ['Central food'] = CFrame.new(-326.214478, 23.682642, -290.926422, -0.0226096045, -1.06158339e-07, -0.999744356, 2.46211265e-08, 1, -1.06742299e-07, 0.999744356, -2.70282339e-08, -0.0226096045),
                    ['Police Station'] = CFrame.new(-264.251862, 21.7999516, -95.0567474, 0.0185360964, 7.45045554e-08, 0.999828219, -3.61734855e-08, 1, -7.38467278e-08, -0.999828219, -3.47984397e-08, 0.0185360964),
                    ['Alley'] = CFrame.new(-269.879181, 21.7499943, -255.347824, 0.0175872892, 4.96562365e-08, -0.999845326, 8.54943139e-08, 1, 5.11677634e-08, 0.999845326, -8.6380993e-08, 0.0175872892),
                    ['Fire Station'] = CFrame.new(-146.302383, 27.8117008, -98.5700836, -0.00784248486, -2.54683528e-08, 0.999969244, -5.30910249e-08, 1, 2.50527581e-08, -0.999969244, -5.28929185e-08, -0.00784248486),
                    ['Gas Station'] = CFrame.new(593.424377, 49.0000343, -257.033905, 0.0289099347, -4.17257944e-08, -0.999581993, 2.83573893e-08, 1, -4.09230871e-08, 0.999581993, -2.71624536e-08, 0.0289099347),
                    ["Jeff's Tacos"] = CFrame.new(554.594177, 51.0613976, -492.142487, -0.0588217117, 4.00280022e-08, -0.998268485, 2.37181847e-08, 1, 3.86998664e-08, 0.998268485, -2.14007247e-08, -0.0588217117),
                    ['Uphill Guns'] = CFrame.new(480.311768, 48.0704918, -620.834045, 0.999999285, 2.20782219e-08, 0.00117743493, -2.20856773e-08, 1, 6.31826103e-09, -0.00117743493, -6.34426112e-09, 0.999999285),
                    ['Downhill Guns'] = CFrame.new(-578.935181, 8.31478119, -736.089294, 0.0347245596, -4.44027065e-10, 0.99939692, 7.65927599e-10, 1, 4.17682444e-10, -0.99939692, 7.50961848e-10, 0.0347245596),
                    ['Military Base'] = CFrame.new(23.3120995, 25.2549973, -870.789795, -0.0126924589, -6.14530649e-09, -0.999919474, -3.24205125e-08, 1, -5.73427217e-09, 0.999919474, 3.23451204e-08, -0.0126924589),
                    ['Corner Store'] = CFrame.new(-209.758347, 21.7549973, -822.321167, 0.00544439116, -1.53070945e-09, 0.999985158, -8.04504765e-08, 1, 1.9687425e-09, -0.999985158, -8.04600049e-08, 0.00544439116),
                    ['Central Park'] = CFrame.new(376.529053, 49.7234383, -405.829987, 0.038778007, 5.71957202e-08, 0.999247849, 7.43797983e-08, 1, -6.01252452e-08, -0.999247849, 7.66553896e-08, 0.038778007),
                    ['Skate park'] = CFrame.new(-844.723206, 21.9248619, -405.528137, 0.999996364, -1.2053051e-08, -0.00270111789, 1.20028387e-08, 1, -1.86054763e-08, 0.00270111789, 1.85729867e-08, 0.999996364),
                    ['Casino'] = CFrame.new(-874.710205, 21.7999554, -145.104156, -0.999980867, 6.07123996e-09, 0.00618906133, 6.18836182e-09, 1, 1.8904851e-08, -0.00618906133, 1.89427887e-08, -0.999980867),
                    ['Da Theatre'] = CFrame.new(-997.229126, 24.600008, -155.52446, 0.00728441169, 8.21538819e-08, 0.999973476, -8.255026e-09, 1, -8.20959301e-08, -0.999973476, -7.6567872e-09, 0.00728441169),
                    ['School'] = CFrame.new(-531.510315, 21.8749943, 302.496704, -0.999647439, 6.32035224e-08, 0.0265514478, 6.33025721e-08, 1, 2.89009128e-09, -0.0265514478, 4.56984717e-09, -0.999647439),
                    ['Sewer'] = CFrame.new(111.364464, -26.7500362, -275.483246, -1, 3.79550471e-08, -0.000156272028, 3.79596869e-08, 1, -2.9679029e-08, 0.000156272028, -2.96849603e-08, -1),
                    ['Sewer Waste Exit'] = CFrame.new(-842.113647, -29.1773624, 254.483109, -0.475037456, 7.57168479e-08, 0.879965544, 2.75148988e-08, 1, -7.11916925e-08, -0.879965544, -9.60655822e-09, -0.475037456),
                    ['Bar Entrance'] = CFrame.new(-632.538269, 21.7499943, -135.326874, -0.0381496102, -5.72266892e-08, 0.999272048, 6.54368151e-08, 1, 5.97665846e-08, -0.999272048, 6.76692551e-08, -0.0381496102),
                    ['Hood Fitness'] = CFrame.new(-76.3324127, 22.700285, -615.682007, 0.999868393, 6.78806629e-08, -0.0162222646, -6.79595615e-08, 1, -4.31254588e-09, 0.0162222646, 5.41443645e-09, 0.999868393),
                    ['Medical Center'] = CFrame.new(102.807045, 22.7999897, -484.263763, 0.00388274621, 7.95328035e-08, -0.99999249, 7.82662379e-09, 1, 7.95637973e-08, 0.99999249, -8.13549139e-09, 0.00388274621),
                    ['Phone store'] = CFrame.new(-119.731033, 21.9104748, -983.26001, -0.0148799652, 3.69542867e-08, -0.999889314, -3.89743064e-08, 1, 3.75383813e-08, 0.999889314, 3.95285618e-08, -0.0148799652),
                    ['Da Boxing Club'] = CFrame.new(-255.642838, 22.5704575, -1120.72058, 0.999999642, 8.17423214e-08, 0.000870136777, -8.16970598e-08, 1, -5.20516572e-08, -0.000870136777, 5.19805496e-08, 0.999999642),
                    ['Subway station'] = CFrame.new(-420.814362, -21.2500057, 23.4286633, -0.999387741, 6.69224889e-08, 0.0349874459, 6.83048214e-08, 1, 3.83140453e-08, -0.0349874459, 4.06803977e-08, -0.999387741),
                    ['Jewelry store'] = CFrame.new(-624.405579, 23.2457352, -273.195404, -0.0222378597, -1.07451124e-08, 0.9997527, 5.58778375e-08, 1, 1.19906813e-08, -0.9997527, 5.61306663e-08, -0.0222378597),
                    ['Studio'] = CFrame.new(-506.188721, 48.6023636, -213.490585, -0.0415798686, 3.95682562e-08, -0.999135196, 2.02907593e-08, 1, 3.87580883e-08, 0.999135196, -1.86616553e-08, -0.0415798686),
                    ['Da Furniture'] = CFrame.new(-486.972595, 21.8498478, -106.891312, -0.996326089, -9.95216851e-08, -0.0856406838, -9.28136288e-08, 1, -8.23095192e-08, 0.0856406838, -7.4058498e-08, -0.996326089),
                    ['Construction Site'] = CFrame.new(-42.7806664, 22.9874191, -281.026337, -0.0636679828, -2.48137191e-08, 0.997971117, 3.157189e-08, 1, 2.68783698e-08, -0.997971117, 3.3219127e-08, -0.0636679828),
                    ['Tree house'] = CFrame.new(-74.140976, 55.3749847, -256.842804, -0.000167925784, -1.50291815e-08, 1, -3.86072241e-09, 1, 1.50285331e-08, -1, -3.85819865e-09, -0.000167925784),
                    ['Graveyard'] = CFrame.new(157.975494, 21.7499924, 18.9793816, -0.999991059, -7.0520989e-10, 0.00423450302, -4.63298566e-10, 1, 5.71296077e-08, -0.00423450302, 5.7127135e-08, -0.999991059),
                }
            }
        
            local Converted = {
                ["_TargetGUI"] = Instance.new("ScreenGui");
                ["_Holder"] = Instance.new("Frame");
                ["_Outline"] = Instance.new("Frame");
                ["_Name"] = Instance.new("TextLabel");
                ["_Container"] = Instance.new("Frame");
                ["_TargetFrame"] = Instance.new("ImageLabel");
                ["_Armour"] = Instance.new("TextLabel");
                ["_bar"] = Instance.new("Frame");
                ["_UIGradient"] = Instance.new("UIGradient");
                ["_Healthbar"] = Instance.new("Frame");
                ["_UIGradient1"] = Instance.new("UIGradient");
                ["_Target"] = Instance.new("TextLabel");
                ["_Divider"] = Instance.new("Frame");
                ["_Health"] = Instance.new("TextLabel");
                ["_bar1"] = Instance.new("Frame");
                ["_UIGradient2"] = Instance.new("UIGradient");
                ["_Healthbar1"] = Instance.new("Frame");
                ["_UIGradient3"] = Instance.new("UIGradient");
            }
            
            
            --// Functions
                local targguicurrentpos = nil
        
            coroutine.wrap(function()
                    
                    Converted["_TargetGUI"].IgnoreGuiInset = true
                    Converted["_TargetGUI"].ScreenInsets = Enum.ScreenInsets.None
                    Converted["_TargetGUI"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    Converted["_TargetGUI"].Name = newtargguiname
                    Converted["_TargetGUI"].Parent = game:GetService("CoreGui")
            
                    Converted["_TargetGUI"].Enabled = ScriptVariables.TargetGui;
                    
                    
                    Converted["_Holder"].AnchorPoint = Vector2.new(0.5, 0.5)
                    Converted["_Holder"].BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933)
                    Converted["_Holder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    if targguicurrentpos == nil then
                        Converted["_Holder"].Position = UDim2.new(0.543272793, 0, 0.880403101, 0)
                    else
                        Converted["_Holder"].Position = targguicurrentpos
                    end
                    Converted["_Holder"].Size = UDim2.new(0, 467, 0, 153)
                    Converted["_Holder"].Name = "Holder"
                    Converted["_Holder"].Parent = Converted["_TargetGUI"]
                    
                    Converted["_Outline"].AnchorPoint = Vector2.new(0.5, 0.5)
                    Converted["_Outline"].BackgroundColor3 = Color3.fromRGB(27.000000290572643, 27.000000290572643, 27.000000290572643)
                    Converted["_Outline"].BorderColor3 = Color3.fromRGB(82.00000271201134, 50.000000819563866, 124.00000020861626)
                    Converted["_Outline"].Position = UDim2.new(0.499999881, 0, 0.500000179, 0)
                    Converted["_Outline"].Size = UDim2.new(0, 462, 0, 147)
                    Converted["_Outline"].Name = "Outline"
                    Converted["_Outline"].Parent = Converted["_Holder"]
                    
                    Converted["_Name"].Font = Enum.Font.RobotoMono
                    Converted["_Name"].Text = "Target"
                    Converted["_Name"].TextColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Name"].TextSize = 15
                    Converted["_Name"].TextXAlignment = Enum.TextXAlignment.Left
                    Converted["_Name"].TextYAlignment = Enum.TextYAlignment.Top
                    Converted["_Name"].AnchorPoint = Vector2.new(0.5, 0.5)
                    Converted["_Name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Name"].BackgroundTransparency = 1
                    Converted["_Name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Name"].BorderSizePixel = 0
                    Converted["_Name"].Position = UDim2.new(0.5, 0, 0.500000238, 0)
                    Converted["_Name"].Size = UDim2.new(0, 448, 0, 134)
                    Converted["_Name"].Name = "Name"
                    Converted["_Name"].Parent = Converted["_Outline"]
                    
                    Converted["_Container"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Container"].BackgroundTransparency = 0.5
                    Converted["_Container"].BorderColor3 = Color3.fromRGB(82.00000271201134, 50.000000819563866, 124.00000020861626)
                    Converted["_Container"].Position = UDim2.new(0.0134180905, 0, 0.201457262, 0)
                    Converted["_Container"].Size = UDim2.new(0, 448, 0, 110)
                    Converted["_Container"].Name = "Container"
                    Converted["_Container"].Parent = Converted["_Outline"]
                    
                    Converted["_TargetFrame"].AnchorPoint = Vector2.new(0, 0.5)
                    Converted["_TargetFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_TargetFrame"].BackgroundTransparency = 1
                    Converted["_TargetFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_TargetFrame"].BorderSizePixel = 0
                    Converted["_TargetFrame"].Position = UDim2.new(0.0189883374, 0, 0.5, 0)
                    Converted["_TargetFrame"].Size = UDim2.new(0, 81, 0, 82)
                    Converted["_TargetFrame"].Name = "TargetFrame"
                    Converted["_TargetFrame"].Parent = Converted["_Container"]
                    
                    Converted["_Armour"].Font = Enum.Font.RobotoMono
                    Converted["_Armour"].Text = "Armour"
                    Converted["_Armour"].TextColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Armour"].TextSize = 14
                    Converted["_Armour"].TextStrokeTransparency = 0
                    Converted["_Armour"].TextXAlignment = Enum.TextXAlignment.Left
                    Converted["_Armour"].TextYAlignment = Enum.TextYAlignment.Top
                    Converted["_Armour"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Armour"].BackgroundTransparency = 1
                    Converted["_Armour"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Armour"].BorderSizePixel = 0
                    Converted["_Armour"].LayoutOrder = 3
                    Converted["_Armour"].Position = UDim2.new(0.232999936, 0, 0.654999971, 0)
                    Converted["_Armour"].Size = UDim2.new(0, 332, 0, 20)
                    Converted["_Armour"].Name = "Armour"
                    Converted["_Armour"].Parent = Converted["_Container"]
                    
                    Converted["_bar"].AnchorPoint = Vector2.new(1, 0)
                    Converted["_bar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_bar"].BorderSizePixel = 0
                    Converted["_bar"].Position = UDim2.new(1.00672364, 0, 1.00730586, 0)
                    Converted["_bar"].Size = UDim2.new(0, 332, 0, 10)
                    Converted["_bar"].Name = "bar"
                    Converted["_bar"].Parent = Converted["_Armour"]
                    
                    Converted["_UIGradient"].Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(57.00000040233135, 57.00000040233135, 57.00000040233135)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(29.000000171363354, 29.000000171363354, 29.000000171363354))
                    }
                    Converted["_UIGradient"].Rotation = 90
                    Converted["_UIGradient"].Parent = Converted["_bar"]
                    
                    Converted["_Healthbar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Healthbar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Healthbar"].BorderSizePixel = 0
                    Converted["_Healthbar"].Position = UDim2.new(-1.83840825e-07, 0, 0, 0)
                    Converted["_Healthbar"].Size = UDim2.new(0.5, 0, 1, 0)
                    Converted["_Healthbar"].Name = "Healthbar"
                    Converted["_Healthbar"].Parent = Converted["_bar"]
                    
                    Converted["_UIGradient1"].Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 52.000000700354576, 135.00000715255737)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 21.000000648200512, 77.00000301003456))
                    }
                    Converted["_UIGradient1"].Rotation = 90
                    Converted["_UIGradient1"].Parent = Converted["_Healthbar"]
                    
                    Converted["_Target"].Font = Enum.Font.RobotoMono
                    Converted["_Target"].Text = "Target"
                    Converted["_Target"].TextColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Target"].TextSize = 14
                    Converted["_Target"].TextStrokeTransparency = 0
                    Converted["_Target"].TextXAlignment = Enum.TextXAlignment.Left
                    Converted["_Target"].TextYAlignment = Enum.TextYAlignment.Top
                    Converted["_Target"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Target"].BackgroundTransparency = 1
                    Converted["_Target"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Target"].BorderSizePixel = 0
                    Converted["_Target"].LayoutOrder = 1
                    Converted["_Target"].Position = UDim2.new(0.232999995, 0, 0.0700000003, 0)
                    Converted["_Target"].Size = UDim2.new(0, 332, 0, 20)
                    Converted["_Target"].Name = "Target"
                    Converted["_Target"].Parent = Converted["_Container"]
                    
                    Converted["_Divider"].AnchorPoint = Vector2.new(1, 1)
                    Converted["_Divider"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Divider"].BackgroundTransparency = 0.800000011920929
                    Converted["_Divider"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Divider"].BorderSizePixel = 0
                    Converted["_Divider"].Position = UDim2.new(1.00672364, 0, 1.00730515, 0)
                    Converted["_Divider"].Size = UDim2.new(0, 332, 0, 1)
                    Converted["_Divider"].Name = "Divider"
                    Converted["_Divider"].Parent = Converted["_Target"]
                    
                    Converted["_Health"].Font = Enum.Font.RobotoMono
                    Converted["_Health"].Text = "Health - nil"
                    Converted["_Health"].TextColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Health"].TextSize = 14
                    Converted["_Health"].TextStrokeTransparency = 0
                    Converted["_Health"].TextXAlignment = Enum.TextXAlignment.Left
                    Converted["_Health"].TextYAlignment = Enum.TextYAlignment.Top
                    Converted["_Health"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Health"].BackgroundTransparency = 1
                    Converted["_Health"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Health"].BorderSizePixel = 0
                    Converted["_Health"].LayoutOrder = 2
                    Converted["_Health"].Position = UDim2.new(0.233284399, 0, 0.310909212, 0)
                    Converted["_Health"].Size = UDim2.new(0, 332, 0, 20)
                    Converted["_Health"].Name = "Health"
                    Converted["_Health"].Parent = Converted["_Container"]
                    
                    Converted["_bar1"].AnchorPoint = Vector2.new(1, 0)
                    Converted["_bar1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_bar1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_bar1"].BorderSizePixel = 0
                    Converted["_bar1"].Position = UDim2.new(1.00672364, 0, 1.00730586, 0)
                    Converted["_bar1"].Size = UDim2.new(0, 332, 0, 10)
                    Converted["_bar1"].Name = "bar"
                    Converted["_bar1"].Parent = Converted["_Health"]
                    
                    Converted["_UIGradient2"].Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(57.00000040233135, 57.00000040233135, 57.00000040233135)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(29.000000171363354, 29.000000171363354, 29.000000171363354))
                    }
                    Converted["_UIGradient2"].Rotation = 90
                    Converted["_UIGradient2"].Parent = Converted["_bar1"]
                    
                    Converted["_Healthbar1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Converted["_Healthbar1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Converted["_Healthbar1"].BorderSizePixel = 0
                    Converted["_Healthbar1"].Position = UDim2.new(-1.83840825e-07, 0, 0, 0)
                    Converted["_Healthbar1"].Size = UDim2.new(0.5, 0, 1, 0)
                    Converted["_Healthbar1"].Name = "Healthbar"
                    Converted["_Healthbar1"].Parent = Converted["_bar1"]
                    
                    Converted["_UIGradient3"].Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(32.00000189244747, 135.00000715255737, 0)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 77.00000301003456, 13.000000175088644))
                    }
                    Converted["_UIGradient3"].Rotation = 90
                    Converted["_UIGradient3"].Parent = Converted["_Healthbar1"]
        
                    local Players = players
                    local UIS = game:GetService("UserInputService")
        
                    local UI = Converted["_Holder"]
                    
                    local Player = Players.LocalPlayer
                    local Mouse = Player:GetMouse()
                    
                    local Hovered = false
                    local Holding = false
                    local MoveCon = nil
                    
                    local InitialX, InitialY, UIInitialPos
                    
                    local function Drag()
                        if Holding == false then MoveCon:Disconnect(); return end
                        local distanceMovedX = InitialX - Mouse.X
                        local distanceMovedY = InitialY - Mouse.Y
                    
                        UI.Position = UIInitialPos - UDim2.new(0, distanceMovedX, 0, distanceMovedY)
                        targguicurrentpos = UI.Position
                    end
                    
                    UI.MouseEnter:Connect(function()
                        Hovered = true
                    end)
                    
                    UI.MouseLeave:Connect(function()
                        Hovered = false
                    end)
                    
                    UIS.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                            Holding = Hovered
                            if Holding then
                                InitialX, InitialY = Mouse.X, Mouse.Y
                                UIInitialPos = UI.Position
                    
                                MoveCon = Mouse.Move:Connect(Drag)
                            end
                        end
                    end)
                    
                    UIS.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                            Holding = false
                        end
                    end)
            end)()
            
            local function transfernetworkowenership(arg1, arg2, truebreak, usinrpglock)
                local arg3 = truebreak or false
                local arg4 = usinrpglock or false
                if not arg3 then
                    if arg4 then
                        arg1.CFrame = arg2.CFrame + Vector3.new(0,8,0)
                    else
                        arg1.CFrame = arg2.CFrame
                    end
                elseif arg3 then
                    arg1.CFrame = arg2.CFrame - Vector3.new(-1000,-1000,-1000)
                end
            end
            
            players.LocalPlayer.Chatted:Connect(
                function(Chat)
                    if Chat == '!SpawnCash' and ScriptVariables.SpawnCashCommand then
                        local humanoid = game.Players.LocalPlayer.Character.Humanoid
                        local tool = game.Players.LocalPlayer.Backpack["[Money Gun]"]
            
                        humanoid:EquipTool(tool)
                        tool:Activate()
                        humanoid:UnequipTools(tool)
                    end
                end
            )
            
            local oldspeed = 0
            
            local mt = getrawmetatable(game)
            local backup
            backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
                if key == "WalkSpeed" and value < 16 and ScriptVariables.AntiSlow then
                    return 16
            elseif key == "JumpPower" and value < 50 and ScriptVariables.AntiJumpSlow then
                    return 50
                end
            return backup(self, key, value)
            end))
            
            local function calculatePredictionValue(ping)
                local pingTenths = math.floor(ping / 10) / 10
                local prediction = pingTenths * 0.1
                prediction = math.max(math.min(prediction, 1), 0)
                return prediction
            end
            
            local function getUserPing()
                local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
                return ping or 0
            end
            
            local function updatePredictionValue()
                while true do
                    if ScriptVariables.AutoPrediction then
                        local userPing = getUserPing()
                        local predictionValue = calculatePredictionValue(userPing)
                        ScriptVariables.Prediction = predictionValue + ScriptVariables.AddToAutoPredict
                    end
                    task.wait(.5)
                end
            end
            
            spawn(updatePredictionValue)
            
            
            -- AntiCheat 1 [1/2]
            --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
            local old old = hookmetamethod(game, "__namecall", newcclosure(LPH_NO_VIRTUALIZE(function(...) local args = {...} if args[1] and typeof(args[2]) == "Instance" and args[2].Name == "TeleportDetect" and getnamecallmethod() == "FireServer" then return task.wait(9e9) end return old(...) end)))
            
            
            local Players = game:GetService("Players")
            local Workspace = game:GetService("Workspace")
            local GuiService = game:GetService("GuiService")
            local RunService = game:GetService("RunService")
            local UserInputService = game:GetService("UserInputService")
            
            local LocalPlayer = Players.LocalPlayer
            local CurrentCamera = Workspace.CurrentCamera
            local Mouse = LocalPlayer:GetMouse()
            
            local circle = {
                Instance = Drawing.new("Circle"),
                Visible = ScriptVariables.TargetFOV,
                Radius = ScriptVariables.VisualizeTargetSetRadius,
                Color = Color3.fromRGB(255, 255, 255),
                Thickness = 1,
                Filled = false,
                PlayerInRadius = false
            }
            
            circle.Instance.Transparency = 1
            circle.Instance.Thickness = circle.Thickness
            circle.Instance.Color = circle.Color
            circle.Instance.Filled = circle.Filled
            
            function circle:Update()
                if not (self.Instance) then
                    return
                end
            
                self.Instance.Visible = self.Visible
                self.Instance.Radius = self.Radius
                self.Instance.Position = Vector2.new(Mouse.X, Mouse.Y + GuiService:GetGuiInset().Y)
            
                self.PlayerInRadius = self:CheckPlayerInRadius()
            
                self.Instance.Thickness = self.PlayerInRadius and 3 or self.Thickness
            end
            
            function circle:Destroy()
                self.Instance:Remove()
                self = nil
            end
            
            function circle:CheckPlayerInRadius()
                for _, player in ipairs(Players:GetPlayers()) do
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local part = player.Character.HumanoidRootPart
                        local pos, onScreen = CurrentCamera:WorldToViewportPoint(part.Position)
                        local distance = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                        if onScreen and distance <= ScriptVariables.VisualizeTargetSetRadius then
                            return true
                        end
                    end
                end
                return false
            end
            
            function GetClosestTargetPartToCursor(Character)
                local TargetParts = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "RightUpperLeg", "LeftHand", "LeftLowerArm", "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm"}
                local ClosestPart = nil
                local ClosestPartPosition = nil
                local ClosestPartOnScreen = false
                local ClosestPartMagnitudeFromMouse = nil
                local ShortestDistance = math.huge
            
                local function CheckTargetPart(TargetPart)
                    if (typeof(TargetPart) == "string") then
                        TargetPart = Character:FindFirstChild(TargetPart)
                    end
                    if not TargetPart then
                        return
                    end
                    local PartPos, OnScreen = CurrentCamera:WorldToViewportPoint(TargetPart.Position)
                    local GuiInset = GuiService:GetGuiInset(GuiService)
                    local Magnitude = (Vector2.new(PartPos.X, PartPos.Y - GuiInset.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if Magnitude < ShortestDistance then
                        ClosestPart = TargetPart
                        ClosestPartPosition = PartPos
                        ClosestPartOnScreen = OnScreen
                        ClosestPartMagnitudeFromMouse = Magnitude
                        ShortestDistance = Magnitude
                    end
                end
            
                for _, TargetPartName in ipairs(TargetParts) do
                    CheckTargetPart(TargetPartName)
                end
            
                return ClosestPart, ClosestPartPosition, ClosestPartOnScreen, ClosestPartMagnitudeFromMouse
            end
            
            function GetClosestPlayerToCursor()
                local ClosestPlayer = nil
                local ShortestDistance = math.huge
            
                for _, Player in ipairs(Players:GetPlayers()) do
                    local Character = Player.Character
                    if Character then
                        local TargetPart, _, _, Magnitude = GetClosestTargetPartToCursor(Character)
                        if TargetPart then
                            if circle.Radius > Magnitude and Magnitude < ShortestDistance then
                                ClosestPlayer = Player
                                ShortestDistance = Magnitude
                            end
                        end
                    end
                end
            
                return ClosestPlayer
            end
            
            function UnsetTarget()
                ScriptVariables.CurrentTarget = nil
                if Highlight and BillboardGui then
                    Highlight.Adornee = nil
                    BillboardGui.Adornee = nil
                    BillboardGui.Enabled = false
                end
                Notif:Notify("Target Unset", 3, "information")
            end
            
            function SetClosest()
                local ClosestPlayer = GetClosestPlayerToCursor()
                if ClosestPlayer ~= nil and ClosestPlayer.Name ~= players.LocalPlayer.Name then
                    if ScriptVariables.CurrentTarget == ClosestPlayer.Name then
                        UnsetTarget()
                    else
                        ScriptVariables.CurrentTarget = ClosestPlayer.Name
                        if ScriptVariables.VisualizeTargetSet and ScriptVariables.CurrentTarget ~= nil and game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character and Highlight and BillboardGui then
                            BillboardGui.Enabled = true
                            Highlight.Adornee = game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character
                            BillboardGui.Adornee = game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character:FindFirstChild("Head")
                        end
                        Notif:Notify("Target Set: " .. ScriptVariables.CurrentTarget, 3, "information")
                    end
                else
                    UnsetTarget()
                end
            end
            
            
            UserInputService.InputBegan:Connect(
                function(input, isProcessed)
                    if not isProcessed and input.KeyCode == Enum.KeyCode[ScriptVariables.TargetSetKey] then
                        SetClosest()
                    end
                end
            )
            
            local function updateStrafe()
                local targetPlayer = players:FindFirstChild(ScriptVariables.CurrentTarget)
                if not targetPlayer then
                    return
                end
            
                local targetHumanoidRootPart = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not targetHumanoidRootPart then
                    return
                end
            
                local rootPart = players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not rootPart then
                    return
                end
            
            
                oldspeed = oldspeed + ScriptVariables.StrafeSpeed
            
                rootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(oldspeed), 0) * CFrame.new(0, ScriptVariables.StrafeHeight, ScriptVariables.StrafeDistance)
            end
            local oldval = false
            local timer = 150
            local restarting = false

            function restart()
                coroutine.wrap(function ()
                    restarting = true
                    task.wait(1)
                    restarting = false
                end)()
            end

            function GetRE()
                for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                    if v.Name == "MainEvent" and v:IsA('RemoteEvent')then
                        return v
                    end
                end
            end
            
            mainrunservice = game:GetService("RunService").RenderStepped:Connect(
               
                LPH_NO_VIRTUALIZE(function() --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine

                    if ScriptVariables.TargetGui and ScriptVariables.CurrentTarget ~= nil then
                        Converted["_TargetGUI"].Enabled = true
            
                        Converted["_Target"].Text = ScriptVariables.CurrentTarget
                        local player = players:FindFirstChild(ScriptVariables.CurrentTarget)
                        if player then
                            local userId = player.UserId
                            local thumbType = Enum.ThumbnailType.HeadShot
                            local thumbSize = Enum.ThumbnailSize.Size420x420
                            local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
                    
                            local bar = Converted["_Healthbar1"]
                            local hpText = Converted["_Health"]
                            if ScriptVariables.CurrentTarget ~= nil then
                                local player = players:FindFirstChild(ScriptVariables.CurrentTarget)
                                if player then
                                    repeat wait() until player.Character
                                    local character = player.Character
                            
                                    local function update()
                                        local humanoid = character:WaitForChild("Humanoid")
                                        bar.Size = UDim2.new(humanoid.Health / humanoid.MaxHealth, 0, 1, 0)
                                        hpText.Text = 'Health - '.. math.ceil(humanoid.Health) .. '/'.. math.ceil(humanoid.MaxHealth)
                                    end
                            
                                    local function setConnections()
                                        local humanoid = character:WaitForChild("Humanoid")
                                        if humanoid then
                                            humanoid:GetPropertyChangedSignal("Health"):Connect(update)
                                            humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(update)
                                        end
                                        update()
                                    end
                            
                                    local newbar = Converted["_Healthbar"]
                                    local newhptext = Converted["_Armour"]
            
                                    local function updatea()
                                        newbar.Size = UDim2.new(character.BodyEffects.Armor.Value / 100, 0, 1, 0)
                                        newhptext.Text = 'Armour - '.. math.ceil(character.BodyEffects.Armor.Value) .. '/'.. math.ceil(100)
                                    end
                                    
                                    local function setConnectionsa()
                                        local arm = character:FindFirstChild('BodyEffects'):FindFirstChild('Armor')
                                        if arm then
                                            arm:GetPropertyChangedSignal("Value"):Connect(updatea)
                                        end
                                        updatea()
                                    end
                            
                                    setConnections()
                                    setConnectionsa()
                                    if isReady and content ~= nil then
                                        Converted["_TargetFrame"].Image = (content)
                                    else
                                        Converted["_TargetFrame"].Image = "rbxassetid://17074640692"
                                    end
                                end
                            end
                        end
                    else
                        Converted["_TargetGUI"].Enabled = false
                    end

                    if ScriptVariables.InvisKill and ScriptVariables.CurrentTarget and game.Players:FindFirstChild(ScriptVariables.CurrentTarget) and game.Players:FindFirstChild(ScriptVariables.CurrentTarget).Character and game.Players:FindFirstChild(ScriptVariables.CurrentTarget).Character:FindFirstChild('HumanoidRootPart') and players.LocalPlayer and players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                        local targ = game.Players:FindFirstChild(ScriptVariables.CurrentTarget)
                        GetRE():FireServer("UpdateMousePos", targ.Character:FindFirstChild('HumanoidRootPart').Position + (targ.Character:FindFirstChild('HumanoidRootPart').Velocity * ScriptVariables.Prediction))
                    end

                    if ScriptVariables.Selfdestroyuponknock and players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild('UpperTorso') and players.LocalPlayer.Character:FindFirstChild('UpperTorso'):FindFirstChild("ElectricuteParticle") then
                        players.LocalPlayer.Character:FindFirstChild('UpperTorso'):Destroy()
                    end
        
                    if ScriptVariables.ArrowLock and ScriptVariables.CurrentTarget ~= nil and game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget) then
                        local Arrow = game:GetService('Workspace'):FindFirstChild('Arrow')
                        local TW = game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character or game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).CharacterAdded:Wait()
                        if Arrow and TW then
                            local RootPart = TW:FindFirstChild('HumanoidRootPart')
                            if RootPart then
                                transfernetworkowenership(Arrow, RootPart)
                            end
                        end

                    --[[elseif ScriptVariables.RPGlock and ScriptVariables.CurrentTarget ~= nil and game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget) and game:GetService("Workspace").Ignored:FindFirstChild('Model') and game:GetService("Workspace").Ignored:FindFirstChild('Model'):FindFirstChild('Launcher') then
                        local RPG = game:GetService("Workspace").Ignored:FindFirstChild('Model'):FindFirstChild('Launcher')
                        local TW = game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character or game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).CharacterAdded:Wait()
                        if RPG and TW then
                            local RootPart = TW:FindFirstChild('HumanoidRootPart')
                            if RootPart then
                                if timer > 0 then 
                                    RPG.CFrame = RootPart.CFrame + Vector3.new(0,8,0)
                                    timer = timer - 1
                                elseif not restarting then
                                    RPG.CFrame = RootPart.CFrame + Vector3.new(0,0,0)
                                    timer = 150
                                    restart()
                                end
                            end
                        end]]
                
                    elseif ScriptVariables.BreakArrows then
                        local Arrow = game:GetService('Workspace'):FindFirstChild('Arrow')
                        if Arrow then
                            local RootPart = workspace['Ignored']['CENTER_OF_MAP']
                            if RootPart then
                                transfernetworkowenership(Arrow, RootPart)
                            end
                        end
                
                    elseif ScriptVariables.BreakGrenades then
                        local grenade = game.Workspace['Ignored']:FindFirstChild('Handle')
                        if grenade then
                            local RootPart = workspace['Ignored']['CENTER_OF_MAP']
                            if RootPart then
                                transfernetworkowenership(grenade, RootPart, true)
                            end
                        end
                
                    elseif ScriptVariables.BreakRPG then
                        local localhrp = players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if game:GetService("Workspace").Ignored:FindFirstChild('Model') and game:GetService("Workspace").Ignored:FindFirstChild('Model'):FindFirstChild('Launcher') and localhrp then
                            local RootPart = workspace['Ignored']['CENTER_OF_MAP']
                            if RootPart and game:GetService("Workspace").Ignored:FindFirstChild('Model'):FindFirstChild('Launcher') then
                                localhrp.Position = game:GetService("Workspace").Ignored:FindFirstChild('Model'):FindFirstChild('Launcher').CFrame
                                transfernetworkowenership(game:GetService("Workspace").Ignored:FindFirstChild('Model'):FindFirstChild('Launcher'), RootPart, false)
                            end
                        end
                    end
        
                    if ScriptVariables.VelocityAntiLock and game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character then
                        oldval = false
                        local minMagnitude = 5
                        local maxMagnitude = ScriptVariables.Veloantilockval
                        local randomMagnitude = math.random(minMagnitude, maxMagnitude)
        
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity.Unit * randomMagnitude
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
                        ScriptVariables.CFrameWalking = true
                    else
                        if oldval == false then
                            ScriptVariables.CFrameWalking = false
                            oldval = true
                        end
                    end
        
                    if ScriptVariables.VisualizeTargetSet and ScriptVariables.CurrentTarget ~= nil and game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget) and game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character then
                        BillboardGui.Enabled = true
                        Highlight.Adornee = game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character
                        BillboardGui.Adornee = game:GetService('Players'):FindFirstChild(ScriptVariables.CurrentTarget).Character:FindFirstChild("Head")
                    else
                        BillboardGui.Enabled = false
                        Highlight.Adornee = nil
                        BillboardGui.Adornee = nil
                    end
            
                    if ScriptVariables.ViewTarget and ScriptVariables.CurrentTarget and players:FindFirstChild(ScriptVariables.CurrentTarget) then
                        workspace.CurrentCamera.CameraSubject = players:FindFirstChild(ScriptVariables.CurrentTarget).Character
                    else
                        if players.LocalPlayer.Character then
                            workspace.CurrentCamera.CameraSubject = players.LocalPlayer.Character
                        end
                    end
            
                    circle:Update()
            
                    if ScriptVariables.TargetStrafe then
                        updateStrafe()
                    end
                
                    if ScriptVariables.CFrameWalking and players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local rootPart = players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                
                        rootPart.CFrame = rootPart.CFrame + LocalPlayer.Character.Humanoid.MoveDirection * ScriptVariables.CFrameWalkingSpeed
                    end
            
                    if ScriptVariables.AutoStomp then
                        game:GetService('ReplicatedStorage').MainEvent:FireServer('Stomp')
                    end
            
                    circle.Instance.Radius = ScriptVariables.VisualizeTargetSetRadius
                    circle.Instance.Visible = ScriptVariables.TargetFOV
            
                if ScriptVariables.BlatantLock == true then
                    local Workspace = game:GetService("Workspace")
                    local Players = game:GetService("Players")
        
                    function Down()
                        local Character = Players.LocalPlayer.Character
        
                        if (Character:WaitForChild("BodyEffects")["K.O"].Value or Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil) then
                            return true
                        else
                            return false
                        end
                    end
        
                    if not Down() then
                        if ScriptVariables.CurrentTarget ~= nil and players:FindFirstChild(ScriptVariables.CurrentTarget) then
                            local find = players:FindFirstChild(ScriptVariables.CurrentTarget)
                            local character = find.Character
                    
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                local humanoidRootPart = character.HumanoidRootPart
                                local velocity = humanoidRootPart.Velocity
                                local hit = humanoidRootPart.CFrame + (velocity * ScriptVariables.Prediction)
                                local targethit = CFrame.new(Workspace.CurrentCamera.CFrame.p, humanoidRootPart.Position + (velocity * ScriptVariables.Prediction))
                                
                                if ScriptVariables.LockSmoothing then
                                    Workspace.CurrentCamera.CFrame = Workspace.CurrentCamera.CFrame:Lerp(targethit, ScriptVariables.LockSmoothingValue)
                                else
                                    Workspace.CurrentCamera.CFrame = CFrame.lookAt(Workspace.CurrentCamera.CFrame.Position, hit.Position)
                                end
                            end
                        end
                    end
                end
            end
            ))
            
            -- AntiCheat 2 [2/2]
            local Gmt = getrawmetatable(game)
            local Old = Gmt.__namecall
            local NewIndex
            
            assert(getrawmetatable)
            setreadonly(Gmt, false)
            
            game.CorePackages.Packages:Destroy()
            
            Gmt.__namecall = newcclosure(LPH_NO_VIRTUALIZE(function(self, ...) --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
                local Args = {...}
            
                if tostring(Args[1]) == "BreathingHAMON" then
                    return
                elseif tostring(Args[1]) == "TeleportDetect" then
                    return
                elseif tostring(Args[1]) == "JJARC" then
                    return
                elseif tostring(Args[1]) == "TakePoisonDamage" then
                    return
                elseif tostring(Args[1]) == "CHECKER_1" then
                    return
                elseif tostring(Args[1]) == "CHECKER" then
                    return
                elseif tostring(Args[1]) == "GUI_CHECK" then
                    return
                elseif tostring(Args[1]) == "OneMoreTime" then
                    return
                elseif tostring(Args[1]) == "checkingSPEED" then
                    return
                elseif tostring(Args[1]) == "BANREMOTE" then
                    return
                elseif tostring(Args[1]) == "PERMAIDBAN" then
                    return
                elseif tostring(Args[1]) == "KICKREMOTE" then
                    return
                elseif tostring(Args[1]) == "BR_KICKPC" then
                    return
                elseif tostring(Args[1]) == "FORCEFIELD" then
                    return
                elseif tostring(Args[1]) == "Christmas_Sock" then
                    return
                elseif tostring(Args[1]) == "VirusCough" then
                    return
                elseif tostring(Args[1]) == "Symbiote" then
                    return
                elseif tostring(Args[1]) == "Symbioted" then
                    return
                end
                return Old(self, ...)
            end))

            RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function() --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
                if ScriptVariables.PredFollow then
                    local targetPlayer = players:FindFirstChild(ScriptVariables.CurrentTarget)
                    if not targetPlayer then
                        return
                    end
            
                    local targetHumanoidRootPart = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not targetHumanoidRootPart then
                        return
                    end
            
                    local rootPart = players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not rootPart then
                        return
                    end
            
                    local center = targetHumanoidRootPart
            
                    local userPing = getUserPing()
                    local predictionValue = calculatePredictionValue(userPing)
            
                    local newPosition = center.Position + (center.Velocity * predictionValue)
            
                    rootPart.CFrame = CFrame.new(newPosition)
                end
            end))
            
            --// Library Startup
            task.wait(1)
            local Init = library:Init()
            
            Init:UpdateKeybind(Enum.KeyCode.End)
            local user = --[[LRM_LinkedDiscordID or ]] 'Paid User' --// ignore (LRM_LinkedDiscordID) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
            local Watermark = library:Watermark(user ..' | '.. library.fps ..'FPS | '.. getUserPing() ..'ms')
            coroutine.wrap(function ()
                while true do
                    Watermark:Text(user ..' | '.. library.fps ..'FPS | '.. math.ceil(getUserPing()) ..'ms')
                    task.wait(.5)
                end
            end)()
            Notif:Notify("Set menu keybind: ".. 'End', 10, "information")
            --
            -- Tabs
            local Combat = Init:NewTab("Combat")
            local CombatSection = Combat:NewSection("Combat")

            local Visuals = Init:NewTab("Visuals")
            local VisualsSection = Visuals:NewSection("Visuals")

            local Movement = Init:NewTab("Movement")
            local MovementSection = Movement:NewSection("Movement")

            local World = Init:NewTab("World")
            local WorldSection = World:NewSection("World")

            local Teleports = Init:NewTab("Teleports")
            local TeleportsSection = Teleports:NewSection("Teleports")

            local Misc = Init:NewTab("Misc")
            local MiscSection = Misc:NewSection("Misc")

            local Settings = Init:NewTab("Settings")
            local SettingsSection = Settings:NewSection("Settings")
            
            --// Elements
            local originalfogend = game:GetService('Lighting').FogEnd

            local FogOff =
                World:NewToggle(
                "Fog",
                true,
                function(value)
                   if value then
                        game:GetService('Lighting').FogEnd = originalfogend
                   else
                    game:GetService('Lighting').FogEnd = 9e9
                   end
                end
            )

            local r = 0
            local b = 0
            local g = 0

            local espr = World:NewSlider("Fog Red", "", true, "/", {min = 0, max = 255, default = 0}, function(value)
                r = tonumber(value) / 255
                game:GetService('Lighting').FogColor = Color3.new(r, g, b)
            end)
        
            local espg = World:NewSlider("Fog Green", "", true, "/", {min = 0, max = 255, default = 0}, function(value)
                g = tonumber(value) / 255
                game:GetService('Lighting').FogColor = Color3.new(r, g, b)
            end)
        
            local espb = World:NewSlider("Fog Blue", "", true, "/", {min = 0, max = 255, default = 0}, function(value)
                b = tonumber(value) / 255
                game:GetService('Lighting').FogColor = Color3.new(r, g, b)
            end)

            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://1848354536"
            sound.Looped = true
            sound.Parent = game:GetService('CoreGui')

            local PlayMusic = World:NewTextbox("Play Music", "Music ID", "", "all", "medium", true, false, function(val)
                sound:Stop()
                sound.SoundId = "rbxassetid://".. val
                sound:Play()
            end)

            local Looped =
                World:NewToggle(
                "Looped",
                true,
                function(value)
                    sound.Looped = value
                end
            )

            local MusicVolume = World:NewSlider("Music Volume", "", true, "/", {min = 0, max = 100, default = 5}, function(value)
                sound.Volume = value / 10
            end)

            local SetTarget =
                Combat:NewKeybind(
                "Set Target",
                Enum.KeyCode.T,
                function(input)
                    ScriptVariables.TargetSetKey = input 
                end
            )
            
            local VisualizeTargetSet =
                Combat:NewToggle(
                "Visualize Target Set",
                true,
                function(value)
                    ScriptVariables.VisualizeTargetSet = value
                    if not value and Highlight and BillboardGui then
                        Highlight.Adornee = nil
                        BillboardGui.Adornee = nil
                        BillboardGui.Enabled = false
                    elseif value and ScriptVariables.CurrentTarget and Highlight and BillboardGui then
                        if game:GetService("Players"):FindFirstChild(ScriptVariables.CurrentTarget) and game:GetService("Players"):FindFirstChild(ScriptVariables.CurrentTarget).Character then
                            Highlight.Adornee = game:GetService("Players"):FindFirstChild(ScriptVariables.CurrentTarget).Character
                            BillboardGui.Adornee = game:GetService("Players"):FindFirstChild(ScriptVariables.CurrentTarget).Character:FindFirstChild('Head')
                            BillboardGui.Enabled = true
                        end
                    end
                end
            )
            
            local targgui = 
            Combat:NewToggle(
                "Target Gui",
                false,
                function(value)
                    ScriptVariables.TargetGui = value
                end
            )
            
            local ShowFOV =
                Combat:NewToggle(
                "Show FOV Circle",
                true,
                function(value)
                    ScriptVariables.TargetFOV = value
                end
            )
            
            local FOVRadius = Combat:NewSlider("FOV Circle Radius", "", true, "/", {min = 1, max = 1000, default = 100}, function(value)
                ScriptVariables.VisualizeTargetSetRadius = value
            end)

            local SilentAim =
                Combat:NewToggle(
                "Silent Aim [Target]",
                false,
                function(value)
                    if value then
                        ScriptVariables.InvisKill = true
                        Notif:Notify("Enabled Silent Aim", 3, "information")
                    else
                        ScriptVariables.InvisKill = false
                        Notif:Notify("Disabled Silent Aim", 3, "information")
                    end
                end
            ):AddKeybind(Enum.KeyCode.X)
            
            local BlatantLock =
                Combat:NewToggle(
                "Lock [Target]",
                false,
                function(value)
                    if value then
                        ScriptVariables.BlatantLock = true
                        Notif:Notify("Enabled Lock", 3, "information")
                    else
                        ScriptVariables.BlatantLock = false
                        Notif:Notify("Disabled Lock", 3, "information")
                    end
                end
            ):AddKeybind(Enum.KeyCode.E)

           --[[ local LockSmoothing =
                Combat:NewToggle(
                "Lock Smoothing",
                false,
                function(value)
                    ScriptVariables.LockSmoothing = value
                end
            )

            local Smoothing = Combat:NewSlider("Smoothing amount", "", true, "/", {min = 1, max = 200, default = 90}, function(value)
                ScriptVariables.LockSmoothingValue = value / 100
            end)]]
            
            local AutoPrediction =
                Combat:NewToggle(
                "Prediction (Auto)",
                false,
                function(value)
                    if value then
                        ScriptVariables.AutoPrediction = true
                    else
                        ScriptVariables.AutoPrediction = false
                    end
                end
            )
            
            local AddToAutoPredict = Combat:NewTextbox("Add/Subtract Extra Prediction", "Value", "", "all", "medium", true, false, function(val)
                ScriptVariables.AddToAutoPredict = val
            end)
            
            local ChatSpy = Misc:NewButton("ChatSpy [Creator - Dehoisted]", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/dehoisted/Chat-Spy/main/source/main.lua'))()
            end)
            
            NewIndex = hookmetamethod(game, "__newindex", (function(Self, Index, Value)
                if tostring(getcallingscript()) == "Framework" and tostring(Self):lower():find("camera") and tostring(Index) == "CFrame" and ScriptVariables.NoRecoil then
                    return
                end
                return NewIndex(Self, Index, Value)
            end))
            
            local NoRecoil =
                Combat:NewToggle(
                "No Recoil",
                false,
                function(value)
                    if value then
                        ScriptVariables.NoRecoil = true
                    else
                        ScriptVariables.NoRecoil = false
                    end
                end
            )
            
            local HighTool =
                Combat:NewToggle(
                "High Tool",
                false,
                function(value)
                    ScriptVariables.HighTool = value
            
                    if ScriptVariables.HighTool then
                        local tool = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool')
            
                        if tool then
                            tool.GripPos = Vector3.new(0,-10,0)
                            tool.Parent = game.Players.LocalPlayer.Backpack
                            tool.Parent = game.Players.LocalPlayer.Character
                        end
                    else
                        local tool = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool')
                        if tool then
                            tool.GripPos = Vector3.new(0,0,0)
                            tool.Parent = game.Players.LocalPlayer.Backpack
                            tool.Parent = game.Players.LocalPlayer.Character
                        end
                    end
                end
            )

            local Inviskill =
            Combat:NewKeybind(
            "Inviskill (Target)",
            nil,
            function() 
                local PPname = "[Revolver]"
                if players.LocalPlayer and players.LocalPlayer.Backpack and players.LocalPlayer.Backpack[PPname] and players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                    ScriptVariables.InvisKill = true
                    local revolver = players.LocalPlayer.Backpack[PPname]
                    
                    revolver.Parent = players.LocalPlayer.Character
            
                    local PPlocation = players.LocalPlayer.Character:WaitForChild(PPname)
                    local oldgripos = PPlocation.GripPos
                    if ScriptVariables.OffsetikVal == 1 then
                        PPlocation.GripPos = Vector3.new(-10, 0, 0)
                    elseif ScriptVariables.OffsetikVal == 2 then
                        PPlocation.GripPos = Vector3.new(0, -10, 0)
                    elseif ScriptVariables.OffsetikVal == 3 then
                        PPlocation.GripPos = Vector3.new(0, 0, -10)
                    elseif ScriptVariables.OffsetikVal == 4 then
                        PPlocation.GripPos = Vector3.new(-5, -5, -5)
                    end
            
                    players.LocalPlayer.Character.Humanoid:UnequipTools()
            
                    revolver.Parent = players.LocalPlayer.Character
                    players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                    PPlocation:Activate()
            
                    players.LocalPlayer.Character.Humanoid:UnequipTools()
                    PPlocation.GripPos = oldgripos
                    revolver.Parent = players.LocalPlayer.Character
                    players.LocalPlayer.Character.Humanoid:UnequipTools()
                end
            end
        )

        local Ikoffsetselector = Combat:NewSelector("InvisKill Offset Value", "Mix (Reccommended)", {"X", "Y", "Z", "Mix (Reccommended)"}, function(d)
            if d == "X" then
                ScriptVariables.OffsetikVal = 1
            elseif d == "Y" then
                ScriptVariables.OffsetikVal = 2
            elseif d == "Z" then
                ScriptVariables.OffsetikVal = 3
            elseif d == "Mix (Reccommended)" then
                ScriptVariables.OffsetikVal = 4
            end
        end)

            local CombatPhone = Misc:NewButton("Convert held item into melee weapon", function() 
                if players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChildOfClass('Tool') then
                    if players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                        local backpack = players.LocalPlayer.Backpack
                        local characterItems = {
                            FakeItem = players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name,
                            Hit = "Combat",
                        }
                        
                        backpack[characterItems.Hit].Parent = players.LocalPlayer.Character
                        
                        local PPlocation = players.LocalPlayer.Character:WaitForChild(characterItems.Hit)
                        wait()
                        
                        players.LocalPlayer.Character[characterItems.FakeItem].Parent = backpack
                        players.LocalPlayer.Character[characterItems.Hit].Parent = backpack
                        wait()
                        
                        backpack[characterItems.FakeItem].Parent = players.LocalPlayer.Character
                        backpack[characterItems.Hit].Parent = players.LocalPlayer.Character
                        
                        PPlocation = players.LocalPlayer.Character:WaitForChild(characterItems.Hit)
                        end
                else
                    Notif:Notify("Please equip a tool first.", 5, "information")
                end
            end)
            
            local Rejoin = Misc:NewButton("Rejoin", function()
                mainrunservice:Disconnect()
                cleardrawcache()
                for _,instance in pairs(Converted) do
                    instance:Destroy()
                end
                Sense:Unload()
                Init:Remove()
        
                local placeid = game.PlaceId
        
                players.LocalPlayer:Kick('Rejoining, please wait')
                game:GetService("TeleportService"):Teleport(placeid, players.LocalPlayer)
            end)
            
            local AntiSit = Misc:NewButton("Anti-Sit", function()
                for _,a in pairs(workspace:GetDescendants()) do
                    if a:IsA("Seat") then
                        a:Remove()
                    end
                end
            end)
            
            local ShowMasked = Misc:NewButton("Show Masked Names", function()
                local players = game.Players:GetChildren()
            
                for _, player in pairs(players) do
                    local character = player.Character
                    if character then
                        local humanoid = character:FindFirstChildWhichIsA('Humanoid')
                        if humanoid then
                            humanoid.DisplayDistanceType = 'Subject'
                        end
                    end
                end
            end)
            
            local Creeper = Misc:NewButton("Creeper Script", function()
                ScriptVariables.CreeperEnabled = false
                local old
            
                local CoreGui = game:GetService("StarterGui")
                    CoreGui:SetCore("SendNotification", {
                        Title = "Creeper script | biggaboy212";
                        Text = "B - Boom | J - Teleport to Grenades | U - Go Back";
                        Duration = math.huge;
                })
                
                local FindPlayer
                local Handle
                
                game:GetService("RunService").Heartbeat:Connect(LPH_NO_VIRTUALIZE(function() --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
                    Handle = game.Workspace['Ignored']:FindFirstChild('Handle')
                    FindPlayer = game:GetService("Players").LocalPlayer
                    if Handle and FindPlayer then
                        if FindPlayer.Character then
                            Handle.Position = FindPlayer.Character.UpperTorso.Position
                            Handle.CanCollide = false
                        end
                    end
                end))
                
                    mouse.KeyDown:connect(function(key)
                        if key == 'b' then
                        CoreGui:SetCore("SendNotification", {
                            Title = "Creeper! aww man...";
                            Text = "BOOM!!";
                            Duration = 5;
                        })
                        
                            local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                            local grenade = game.Players.LocalPlayer.Character:FindFirstChild('[Grenade]') or game.Players.LocalPlayer.Backpack:FindFirstChild('[Grenade]')
                        
                            if grenade then
                            grenade.Parent = game.Players.LocalPlayer.Character
                            grenade:Activate()
                            grenade:Activate()
                            grenade.Parent = game.Players.LocalPlayer.Backpack
                            end
                            task.wait(.5)
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💣💣💣", "All")
                        task.wait(.5)
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💣💣", "All")
                        task.wait(.5)
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💣", "All")
                        task.wait(1.5)
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Creeper! Aww mannn...", "All")
                        task.wait(.5)
                        startantinetworktransfer = false
                        elseif key == 'j' then
                        old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.18929290771484, -26.752010345458984, -276.26934814453125)
                        elseif key == 'u' then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
                        end
                    end)
            end)
            
            local fpsboost = Misc:NewButton("[+] FPS Boost", function()
                local disableDecals = false -- Leaving this on makes games look shitty but the fps goes up by at least 20.
                local gameService = game
                local workspace = gameService.Workspace
                local lighting = gameService.Lighting
                local terrain = workspace.Terrain
            
                sethiddenproperty(lighting, "Technology", 2)
                sethiddenproperty(terrain, "Decoration", false)
                terrain.WaterWaveSize = 0
                terrain.WaterWaveSpeed = 0
                terrain.WaterReflectance = 0
                terrain.WaterTransparency = 0
                lighting.GlobalShadows = 0
                lighting.FogEnd = 9e9
                lighting.Brightness = 0
            
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                    elseif (descendant:IsA("Decal") or descendant:IsA("Texture")) and disableDecals then
                        descendant.Transparency = 1
                    elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
                        descendant.Lifetime = NumberRange.new(0)
                    elseif descendant:IsA("Explosion") then
                        descendant.BlastPressure = 1
                        descendant.BlastRadius = 1
                    elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
                        descendant.Enabled = false
                    elseif descendant:IsA("MeshPart") and disableDecals then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                        descendant.TextureID = 10385902758728957
                    elseif descendant:IsA("SpecialMesh") and disableDecals then
                        descendant.TextureId = 0
                    elseif descendant:IsA("ShirtGraphic") and disableDecals then
                        descendant.Graphic = 0
                    elseif (descendant:IsA("Shirt") or descendant:IsA("Pants")) and disableDecals then
                        descendant[descendant.ClassName .. "Template"] = 0
                    end
                end
            
                for _, effect in ipairs(lighting:GetChildren()) do
                    if effect:IsA("BlurEffect") or effect:IsA("SunRaysEffect") or effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or effect:IsA("DepthOfFieldEffect") then
                        effect.Enabled = false
                    end
                end
            
                workspace.DescendantAdded:Connect(function(descendant)
                    wait() -- prevent errors and shit
                    if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                    elseif descendant:IsA("Decal") or descendant:IsA("Texture") and disableDecals then
                        descendant.Transparency = 1
                    elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
                        descendant.Lifetime = NumberRange.new(0)
                    elseif descendant:IsA("Explosion") then
                        descendant.BlastPressure = 1
                        descendant.BlastRadius = 1
                    elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
                        descendant.Enabled = false
                    elseif descendant:IsA("MeshPart") and disableDecals then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                        descendant.TextureID = 10385902758728957
                    elseif descendant:IsA("SpecialMesh") and disableDecals then
                        descendant.TextureId = 0
                    elseif descendant:IsA("ShirtGraphic") and disableDecals then
                        descendant.ShirtGraphic = 0
                    elseif (descendant:IsA("Shirt") or descendant:IsA("Pants")) and disableDecals then
                        descendant[descendant.ClassName .. "Template"] = 0
                    end
                end)
            end)
            
            local superfpsboost = Misc:NewButton("[++] FPS Boost", function()
                local disableDecals = true
                local gameService = game
                local workspace = gameService.Workspace
                local lighting = gameService.Lighting
                local terrain = workspace.Terrain
            
                sethiddenproperty(lighting, "Technology", 2)
                sethiddenproperty(terrain, "Decoration", false)
                terrain.WaterWaveSize = 0
                terrain.WaterWaveSpeed = 0
                terrain.WaterReflectance = 0
                terrain.WaterTransparency = 0
                lighting.GlobalShadows = 0
                lighting.FogEnd = 9e9
                lighting.Brightness = 0
            
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                    elseif (descendant:IsA("Decal") or descendant:IsA("Texture")) and disableDecals then
                        descendant.Transparency = 1
                    elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
                        descendant.Lifetime = NumberRange.new(0)
                    elseif descendant:IsA("Explosion") then
                        descendant.BlastPressure = 1
                        descendant.BlastRadius = 1
                    elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
                        descendant.Enabled = false
                    elseif descendant:IsA("MeshPart") and disableDecals then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                        descendant.TextureID = 10385902758728957
                    elseif descendant:IsA("SpecialMesh") and disableDecals then
                        descendant.TextureId = 0
                    elseif descendant:IsA("ShirtGraphic") and disableDecals then
                        descendant.Graphic = 0
                    elseif (descendant:IsA("Shirt") or descendant:IsA("Pants")) and disableDecals then
                        descendant[descendant.ClassName .. "Template"] = 0
                    end
                end
            
                for _, effect in ipairs(lighting:GetChildren()) do
                    if effect:IsA("BlurEffect") or effect:IsA("SunRaysEffect") or effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or effect:IsA("DepthOfFieldEffect") then
                        effect.Enabled = false
                    end
                end
            
                workspace.DescendantAdded:Connect(function(descendant)
                    wait() -- prevent errors and shit
                    if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                    elseif descendant:IsA("Decal") or descendant:IsA("Texture") and disableDecals then
                        descendant.Transparency = 1
                    elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
                        descendant.Lifetime = NumberRange.new(0)
                    elseif descendant:IsA("Explosion") then
                        descendant.BlastPressure = 1
                        descendant.BlastRadius = 1
                    elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
                        descendant.Enabled = false
                    elseif descendant:IsA("MeshPart") and disableDecals then
                        descendant.Material = "Plastic"
                        descendant.Reflectance = 0
                        descendant.TextureID = 10385902758728957
                    elseif descendant:IsA("SpecialMesh") and disableDecals then
                        descendant.TextureId = 0
                    elseif descendant:IsA("ShirtGraphic") and disableDecals then
                        descendant.ShirtGraphic = 0
                    elseif (descendant:IsA("Shirt") or descendant:IsA("Pants")) and disableDecals then
                        descendant[descendant.ClassName .. "Template"] = 0
                    end
                end)
            end)

            local Destroychar = Misc:NewButton("Destroy Character", function()
                if players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild('UpperTorso') then
                    players.LocalPlayer.Character:FindFirstChild('UpperTorso'):Destroy()
                end
            end)

            local Destroycharupontaze =
            Misc:NewToggle(
            "Destroy Character upon tazed",
            false,
            function(value)
                ScriptVariables.Selfdestroyuponknock = value
            end
        )
            
            local AutoStomp =
                Misc:NewToggle(
                "Auto Stomp",
                false,
                function(value)
                    if value then
                        ScriptVariables.AutoStomp = true
                    else
                        ScriptVariables.AutoStomp = false
                    end
                end
            )
                local currentval = 'V'
                local plr = players.LocalPlayer
                local mouse = plr:GetMouse()
                game:GetService("UserInputService").InputEnded:Connect(function (input, gpe)
                    if not gpe and input.KeyCode == Enum.KeyCode[currentval] and mouse.Target and plr.Character and plr.Character.HumanoidRootPart then
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
                    end
                end)
            
            local TeleportMouse =
                Movement:NewKeybind(
                "Teleport [Mouse]",
                Enum.KeyCode.V,
                function(input)
                    currentval = tostring(string.upper(input))
                end
            )

            local cb_lockfunc = function(arg1)
                if workspace['Ignored']['Shop']['[StopSign] - $318'] and workspace['Ignored']['Shop']['[StopSign] - $318']['Head'] then
                    arg1.CFrame = workspace['Ignored']['Shop']['[StopSign] - $318']['Head'].CFrame
                    fireclickdetector(wworkspace['Ignored']['Shop']['[StopSign] - $318']['ClickDetector'], 1)
                end
            end
            

            local View =
                Combat:NewToggle(
                "View [Target]",
                false,
                function(value)
                    if ScriptVariables.CurrentTarget ~= nil then
                        if value then
                            ScriptVariables.ViewTarget = value
                            Notif:Notify("Now Viewing " .. ScriptVariables.CurrentTarget, 3, "information")
                        else
                            ScriptVariables.ViewTarget = value
                        end
                    else
                        Notif:Notify("Target is nil | Please set a target", 3, "information")
                    end
                end
            )
            
            local Goto = Combat:NewButton("Teleport To [Target]", function()
                if ScriptVariables.CurrentTarget ~= nil then
                    players.LocalPlayer.Character.HumanoidRootPart.CFrame = players:FindFirstChild(ScriptVariables.CurrentTarget).Character.HumanoidRootPart.CFrame * CFrame.new(0,3,0)
                else
                    Notif:Notify("Target is nil | Please set a target", 3, "information")
                end
            end)
            
            local Getcash = Combat:NewButton("Get Cash [Target]", function()
                if ScriptVariables.CurrentTarget ~= nil then
                    local function formatCurrency(currency)
                        return string.format("%0.2f", currency):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
                    end
                    
                    local cashValue = formatCurrency(players:FindFirstChild(ScriptVariables.CurrentTarget).DataFolder.Currency.Value) 
                    Notif:Notify("Target: " .. ScriptVariables.CurrentTarget .. "'s Cash amount is: " .. cashValue, 3, "information")    
                else
                    Notif:Notify("Target is nil | Please set a target", 3, "information")
                end
            end)
            
            local aafd = Combat:NewSection("Anti Aim / Follow / Desync")
        
            local antilockvelo =
            Combat:NewToggle(
            "Velocity anti lock Beta (Blatant)",
            false,
            function(value)
                if value then
                    ScriptVariables.VelocityAntiLock = value
                    Notif:Notify("Enabled velocity anti lock", 3, "information")
                else
                    ScriptVariables.VelocityAntiLock = value
                    Notif:Notify("Disabled velocity anti lock", 3, "information")
                end
            end
        ):AddKeybind(Enum.KeyCode.F1)
        
        local velocityvalue = Combat:NewSlider("Velocity range", "", true, "/", {min = 5, max = 100, default = 50}, function(value)
            ScriptVariables.Veloantilockval = value
        end)
            
            local TargetStrafe =
                Combat:NewToggle(
                "Target Strafe",
                false,
                function(value)
                    if value then
                        ScriptVariables.TargetStrafe = true
                        Notif:Notify("Enabled Target Strafing", 3, "information")
                    else
                        ScriptVariables.TargetStrafe = false
                        Notif:Notify("Disabled Target Strafing", 3, "information")
                    end
                end
            ):AddKeybind(Enum.KeyCode.F2)
            
            
            
            local StrafeHeight = Combat:NewSlider("Strafe Height", "", true, "/", {min = 1, max = 100, default = 1}, function(value)
                ScriptVariables.StrafeHeight = value
            end)
            
            local StrafeDistance = Combat:NewSlider("Strafe Distance", "", true, "/", {min = 1, max = 100, default = 1}, function(value)
                ScriptVariables.StrafeDistance = value
            end)
            
            local StrafeDistance = Combat:NewSlider("Strafe Speed", "", true, "/", {min = 1, max = 100, default = 1}, function(value)
                ScriptVariables.StrafeSpeed = value
            end)
            
            RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function() --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
                if ScriptVariables.RandomOrbit then
                    local targetPlayer = players:FindFirstChild(ScriptVariables.CurrentTarget)
                    if not targetPlayer then
                        return
                    end
        
                    local targetHumanoidRootPart = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not targetHumanoidRootPart then
                        return
                    end
        
                    local rootPart = players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not rootPart then
                        return
                    end
        
                    local center = targetHumanoidRootPart.Position
        
                    local xOffset = math.random(-ScriptVariables.RandomRange, ScriptVariables.RandomRange)
                    local yOffset = math.random(-ScriptVariables.RandomRange, ScriptVariables.RandomRange)
                    local zOffset = math.random(-ScriptVariables.RandomRange, ScriptVariables.RandomRange)
        
                    local newPosition = center + Vector3.new(xOffset, yOffset, zOffset)
        
                    rootPart.CFrame = CFrame.new(newPosition)
                end
            end))
            
            local RandomOrbit =
                Combat:NewToggle(
                "Random Orbit",
                false,
                function(value)
                    if value then
                        ScriptVariables.RandomOrbit = true
            
                        Notif:Notify("Enabled Random Orbit", 3, "information")
                    else
                        ScriptVariables.RandomOrbit = false
                        Notif:Notify("Disabled Random Orbit", 3, "information")
                    end
                end
            ):AddKeybind(Enum.KeyCode.F3)
            
            local RandomRange = Combat:NewSlider("Random Range", "", true, "/", {min = 0, max = 100, default = 3}, function(value)
                ScriptVariables.RandomRange = value
            end)
        
            RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function() --// ignore (LPH_NO_VIRTUALIZE) it is leftover from luarmor, you probably want to remove it but as long as you have the function return at the top of the script it should still work fine
                if ScriptVariables.UnderGroundFollow and ScriptVariables.CurrentTarget and players:FindFirstChild(ScriptVariables.CurrentTarget) then
                    local targetPlayer = players:FindFirstChild(ScriptVariables.CurrentTarget)
                    if not targetPlayer then
                        return
                    end
        
                    local targetHumanoidRootPart = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not targetHumanoidRootPart then
                        return
                    end
        
                    local rootPart = players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not rootPart then
                        return
                    end
        
                    local center = targetHumanoidRootPart.Position
        
                    local newPosition = center + Vector3.new(0, -ScriptVariables.UnderGroundDistance, 0)
        
                    rootPart.CFrame = CFrame.new(newPosition)
                end
            end))
            
            local UnderGroundFollow =
                Combat:NewToggle(
                "Underground Follow",
                false,
                function(value)
                    if value then
                        ScriptVariables.UnderGroundFollow = true
            
                        Notif:Notify("Enabled Underground Follow", 3, "information")
                    else
                        ScriptVariables.UnderGroundFollow = false
                        Notif:Notify("Disabled Underground Follow", 3, "information")
                    end
                end
            ):AddKeybind(Enum.KeyCode.F4)
            
            local DistanceUnderground = Combat:NewSlider("Distance Underground", "", true, "/", {min = 0, max = 100, default = 5}, function(value)
                ScriptVariables.UnderGroundDistance = value
            end)
            
            local PredFollow =
                Combat:NewToggle(
                "Prediction Follow",
                false,
                function(value)
                    if value then
                        ScriptVariables.PredFollow = true
            
                        Notif:Notify("Enabled Prediction Follow", 3, "information")
                    else
                        ScriptVariables.PredFollow = false
                        Notif:Notify("Disabled Prediction Follow", 3, "information")
                    end
                end
            ):AddKeybind(Enum.KeyCode.F5)
            
            local WalkSpeed =
                Movement:NewToggle(
                "Speed [CFrame]",
                false,
                function(value)
                    ScriptVariables.CFrameWalking = value
                end
            ):AddKeybind(Enum.KeyCode.Y)
            
            local SpeedRange = Movement:NewSlider("Speed Range", "", true, "/", {min = 1, max = 100, default = 20}, function(value)
                ScriptVariables.CFrameWalkingSpeed = value / 16
            end)
            
            local AntiSlow =
                Movement:NewToggle(
                "Anti Slow",
                false,
                function(value)
                    if value then
                        ScriptVariables.AntiSlow = true
                    else
                        ScriptVariables.AntiSlow = false
                    end
                end
            )
            
            local AntiJumpSlow =
                Movement:NewToggle(
                "Anti Jump Slow",
                false,
                function(value)
                    if value then
                        ScriptVariables.AntiJumpSlow = true
                    else
                        ScriptVariables.AntiJumpSlow = false
                    end
                end
            )
            
            local SpawnCashCommand =
                Misc:NewToggle(
                "!SpawnCash Command (Get Moneygun) [FAKE]",
                false,
                function(value)
                    if value then
                        ScriptVariables.SpawnCashCommand = true
                    else
                        ScriptVariables.SpawnCashCommand = false
                    end
                end
            )
            
            local Removefallenpartsdstrheight =
                Misc:NewToggle(
                "Remove Fallen Parts Destroy Height (Kill Box)",
                false,
                function(value)
                    if value then
                        workspace.FallenPartsDestroyHeight = -math.huge
                    else
                        workspace.FallenPartsDestroyHeight = -500
                    end
                end
            )
        
            local cb_lockfunc = function(arg1)
                arg1.CFrame = CFrame.new(-67.52098846435547, 23.12371826171875, -307.65374755859375)
                fireclickdetector(workspace['Ignored']['Shop']['[Crossbow] - $159']['ClickDetector'], 1)
                task.wait(0.5)
            end
            
            local ArrowLock =
            Misc:NewToggle(
            "Crossbow Lock (Aim at an open space)",
            false,
            function(value)
                if value and players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                    local hrp = players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                    local ogpos = hrp.CFrame
                    if not (players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') and not players.LocalPlayer.Character:FindFirstChild('[Crossbow]')) then
                        if hrp and workspace['Ignored']['Shop']['[Crossbow] - $159']['ClickDetector'] then
                            repeat
                                task.spawn(cb_lockfunc)
                            until players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]')
                            hrp.CFrame = ogpos
                        end
                    end
                    ScriptVariables.ArrowLock = value
                end
            end
        )

           --[[ local Rpglock =
            Misc:NewToggle(
            "RPG Lock (Aim at an open space)",
            false,
            function(value)
                ScriptVariables.RPGlock = value
            end
            )]]
            
            local BringTargetToVoid =
                Misc:NewToggle(
                "Drag target to hell [Crossbow]",
                false,
                function(value)
                    ScriptVariables.HellTarget = value
                    if ScriptVariables.HellTarget and players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                        local hrp = players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                        local ogpos = hrp.CFrame
                        local has
                        if not players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]') then
                            if hrp and workspace['Ignored']['Shop']['[Crossbow] - $159']['ClickDetector'] then
                                repeat
                                    task.spawn(cb_lockfunc)
                                until players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]') or not ScriptVariables.HellTarget
                                has = true
                            end
                        elseif players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]') then
                            has = true
                        end
                        task.wait(0.1)
                        if has == true and ScriptVariables.HellTarget then
                            ScriptVariables.PredFollow = true
                            game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Im going to drag you to hell.", "All")
                            task.wait(1.5)
                            ScriptVariables.PredFollow = false
                            ScriptVariables.ArrowLock = true
                            local hrp = players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                            if hrp then
                                while true do
                                    if players:FindFirstChild(ScriptVariables.CurrentTarget) and players:FindFirstChild(ScriptVariables.CurrentTarget).Character or ScriptVariables.HellTarget then
                                        local target = players:FindFirstChild(ScriptVariables.CurrentTarget)
                                        if target then
                                        hrp.CFrame = target.Character:FindFirstChild("HumanoidRootPart").CFrame - Vector3.new(0,250,0)
                                        hrp.Velocity = Vector3.zero
                                        workspace.FallenPartsDestroyHeight = -math.huge
                                        end
                                        local Crossbow = players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]')
                                        if Crossbow and ScriptVariables.HellTarget then
                                        Crossbow.Parent = players.LocalPlayer.Character
                                        Crossbow:Activate()
                                        end
                                        task.wait(0.01)
                                    else
                                        hrp.Velocity = Vector3.zero
                                        hrp.CFrame = ogpos
                                        ScriptVariables.ArrowLock = false
                                        ScriptVariables.PredFollow = false
                                        break
                                    end
                                end
                                hrp.Velocity = Vector3.zero
                                hrp.CFrame = ogpos
                                ScriptVariables.ArrowLock = false
                                ScriptVariables.PredFollow = false
                            end
                        end
                    end
                end
            )
            
            local AscendTarget =
                Misc:NewToggle(
                "Bring target to heaven [Crossbow]",
                false,
                function(value)
                    ScriptVariables.HeavenTarget = value
                    if ScriptVariables.HeavenTarget and players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                        local hrp = players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                        local ogpos = hrp.CFrame
                        local has
                        if not players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]') then
                            if hrp and workspace['Ignored']['Shop']['[Crossbow] - $159']['ClickDetector'] then
                                repeat
                                    task.spawn(cb_lockfunc)
                                until players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]') or not ScriptVariables.HeavenTarget
                                has = true
                            end
                        elseif players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]') then
                            has = true
                        end
            
                        if has == true and ScriptVariables.HeavenTarget then
                            ScriptVariables.PredFollow = true
                            game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer("It is time, my child. Come home with me.", "All")
                            task.wait(1.5)
                            ScriptVariables.PredFollow = false
                            ScriptVariables.ArrowLock = true
                            local hrp = players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
            
                            if hrp then
                                while true do
                                    if not players:FindFirstChild(ScriptVariables.CurrentTarget) or not players:FindFirstChild(ScriptVariables.CurrentTarget).Character or not ScriptVariables.HeavenTarget then
                                        hrp.Velocity = Vector3.zero
                                        hrp.CFrame = ogpos
                                        ScriptVariables.ArrowLock = false
                                        ScriptVariables.PredFollow = false
                                        break
                                    else
                                        local target = players:FindFirstChild(ScriptVariables.CurrentTarget)
                                        if target then
                                        hrp.CFrame = target.Character:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(0,500,0)
                                        hrp.Velocity = Vector3.zero
                                        workspace.FallenPartsDestroyHeight = -math.huge
                                        end
                                        local Crossbow = players.LocalPlayer.Backpack:FindFirstChild('[Crossbow]') or players.LocalPlayer.Character:FindFirstChild('[Crossbow]')
                                        if Crossbow then
                                            Crossbow.Parent = players.LocalPlayer.Character
                                        Crossbow:Activate()
                                        end
                                        task.wait(0.01)
                                    end
                                end
                                hrp.Velocity = Vector3.zero
                                hrp.CFrame = ogpos
                                ScriptVariables.ArrowLock = false
                                ScriptVariables.PredFollow = false
                            end
                        end
                    end
                end
            )
            
            local grenadebreak =
                Misc:NewToggle(
                "Break thrown grenades (ServerSided)",
                false,
                function(value)
                    ScriptVariables.BreakGrenades = value
                end
            )
        
            local arrowbreak =
                Misc:NewToggle(
                "Break shot arrows (Serversided)",
                false,
                function(value)
                    ScriptVariables.BreakArrows = value
                end
            )
            
            local ESP =
                Visuals:NewToggle(
                "ESP",
                false,
                function(value)
                    Sense.teamSettings.enemy.enabled = value
                end
            )
            
            local Boxes =
                Visuals:NewToggle(
                "Boxes",
                false,
                function(value)
                    Sense.teamSettings.enemy.box = value
                    Sense.teamSettings.enemy.boxColor[1] = Color3.new(ScriptVariables.R , ScriptVariables.G, ScriptVariables.B)
                end
            )
            
            local Boxes3d =
                Visuals:NewToggle(
                "Boxes 3d",
                false,
                function(value)
                    Sense.teamSettings.enemy.box3d = value
                    Sense.teamSettings.enemy.box3dColor[1] = Color3.new(ScriptVariables.R , ScriptVariables.G, ScriptVariables.B)
                end
            )
            
            local Healthbar =
                Visuals:NewToggle(
                "Health Bar",
                false,
                function(value)
                    Sense.teamSettings.enemy.healthBar = value
                end
            )
            
            local chams =
                Visuals:NewToggle(
                "Chams",
                false,
                function(value)
                    Sense.teamSettings.enemy.chams = value
                    Sense.teamSettings.enemy.chamsFillColor[1] = Color3.new(ScriptVariables.R , ScriptVariables.G, ScriptVariables.B)
                    Sense.teamSettings.enemy.chamsOutlineColor[1] = Color3.new(ScriptVariables.R , ScriptVariables.G, ScriptVariables.B)
                end
            )
            
            local Tracers =
                Visuals:NewToggle(
                "Tracers",
                false,
                function(value)
                    Sense.teamSettings.enemy.tracer = value
                    Sense.teamSettings.enemy.tracerColor[1] = Color3.new(ScriptVariables.R , ScriptVariables.G, ScriptVariables.B)
                end
            )
            
            local Names =
                Visuals:NewToggle(
                "Names",
                false,
                function(value)
                    Sense.teamSettings.enemy.name = value
                    Sense.teamSettings.enemy.nameColor[1] = Color3.new(ScriptVariables.R , ScriptVariables.G, ScriptVariables.B)
                end
            )
        
            local function Update()
                local r = tonumber(ScriptVariables.R) / 255 
                local g = tonumber(ScriptVariables.G) / 255
                local b = tonumber(ScriptVariables.B) / 255
            
                Sense.teamSettings.enemy.box3dColor[1] = Color3.new(r, g, b)
                Sense.teamSettings.enemy.boxColor[1] = Color3.new(r, g, b)
                Sense.teamSettings.enemy.tracerColor[1] = Color3.new(r, g, b)
                Sense.teamSettings.enemy.nameColor[1] = Color3.new(r, g, b)
                Sense.teamSettings.enemy.chamsFillColor[1] = Color3.new(r, g, b)
                Sense.teamSettings.enemy.chamsOutlineColor[1] = Color3.new(r, g, b)
            end
        
            local espr = Visuals:NewSlider("ESP Red", "", true, "/", {min = 0, max = 255, default = 255}, function(value)
                ScriptVariables.R = tonumber(value)
                Update()
            end)
        
            local espg = Visuals:NewSlider("ESP Green", "", true, "/", {min = 0, max = 255, default = 255}, function(value)
                ScriptVariables.G = tonumber(value)
                Update()
            end)
        
            local espb = Visuals:NewSlider("ESP Blue", "", true, "/", {min = 0, max = 255, default = 255}, function(value)
                ScriptVariables.B = tonumber(value)
                Update()
            end)
        
            Teleports:NewButton("Original Position", function()
                if ScriptVariables.originalposition ~= nil then
                    players.LocalPlayer.Character.HumanoidRootPart.CFrame = ScriptVariables.originalposition
                end
            end)
            
            Teleports:NewLabel('', "left")
            
            for name, key in pairs(ScriptVariables.Teleports) do
                Teleports:NewButton(name, function()
                    if players.LocalPlayer.Character and players.LocalPlayer.Character.HumanoidRootPart then
                        ScriptVariables.originalposition = players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        players.LocalPlayer.Character.HumanoidRootPart.CFrame = key
                    end
                end)
            end
            
            local MenuKB =
                Settings:NewKeybind(
                "Menu Keybind",
                Enum.KeyCode.End,
                function(input)
                    Init:UpdateKeybind(Enum.KeyCode[input])
                end
            )

            local Watermark =
                Settings:NewToggle(
                "Watermark",
                true,
                function(value)
                    if value then
                        Watermark:Show()
                    else
                        Watermark:Hide()
                    end
                end
            )
