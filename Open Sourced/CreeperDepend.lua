if getgenv().LoadVersionOfScript == 'RPG' then
    local watermark = true
    local old
    
    local CoreGui = game:GetService("StarterGui")
        if watermark then
            CoreGui:SetCore("SendNotification", {
                Title = "Creeper script | biggaboy212";
                Text = "B - Boom | T - Teleport to RPG | C - Go Back";
                Duration = 5;
        })
    end
    
    local plr = game:GetService('Players').LocalPlayer
    local mouse = plr:GetMouse()

    local function transfernwo(arg1, arg2)
        arg1.CFrame = arg2.Position + (arg2.CFrame.Y-.2)
    end
    
    game:GetService("RunService").Heartbeat:Connect(function ()
        local Launcher = game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChildOfClass('Model'):FindFirstChild('Launcher')
        local TW = plr.Character
        if Launcher and TW then
            local TargetRPG = TW:FindFirstChild('LeftLowerLeg')
            if TargetRPG then
                transfernwo(Launcher, TW)
            end
        end
    end)
    
       mouse.KeyDown:connect(function(key)
          if key == 'b' then
            CoreGui:SetCore("SendNotification", {
                Title = "Creeper, aww man!";
                Text = "BOOM!!";
                Duration = 5;
            })
            
             local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
             local RPG = game.Players.LocalPlayer.Backpack:FindFirstChild('[RPG]')

          ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💣💣💣", "All")
          task.wait(.5)
          ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💣💣", "All")
          task.wait(.5)
          ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💣", "All")
          task.wait(.5)
          ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("💥", "All")
          task.wait(.2)
          if RPG then
            RPG.Parent = game.Players.LocalPlayer.Character
            RPG:Activate()
            ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Creeper, Aww mannn!", "All")
            RPG.Parent = game.Players.LocalPlayer.Backpack
         end
          elseif key == 't' then
            old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.18929290771484, -26.752010345458984, -276.26934814453125)
            elseif key == 'c' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
          end
       end)
elseif getgenv().LoadVersionOfScript == 'Grenade' then
    local old

    local CoreGui = game:GetService("StarterGui")
        CoreGui:SetCore("SendNotification", {
            Title = "Creeper script | biggaboy212";
            Text = "B - Boom | T - Teleport to Grenades | C - Go Back";
            Duration = math.huge;
    })
    
    local FindPlayer
    local Handle
    
    game:GetService("RunService").Heartbeat:Connect(function ()
        Handle = game.Workspace['Ignored']:FindFirstChild('Handle')
        FindPlayer = game:GetService("Players").LocalPlayer
        if Handle and FindPlayer then
            if FindPlayer.Character then
                Handle.Position = FindPlayer.Character.UpperTorso.Position
                Handle.CanCollide = false
            end
        end
    end)
    
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
          elseif key == 't' then
            old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.18929290771484, -26.752010345458984, -276.26934814453125)
            elseif key == 'c' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
          end
       end)
end
