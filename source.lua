-- GUI Created by Zutsukie/s1ckgrave
wait(2)
print("Nova's dance GUI was successfully loaded, this GUI is outdated and do not work any longer"

local NovaAnims = Instance.new("ScrollingFrame")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

NovaAnims.Name = "NovaAnims"
NovaAnims.Parent = game.StarterGui.ScreenGui
NovaAnims.Active = true
NovaAnims.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
NovaAnims.Position = UDim2.new(0, 0, 0.218116805, 0)
NovaAnims.Size = UDim2.new(0, 218, 0, 189)

Button1.Name = "Button1"
Button1.Parent = NovaAnims
Button1.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
Button1.BorderSizePixel = 2
Button1.Position = UDim2.new(0.0321100876, 0, 0.0587885343, 0)
Button1.Size = UDim2.new(0, 192, 0, 37)
Button1.Font = Enum.Font.Ubuntu
Button1.Text = "Kazotsky Kick"
Button1.TextColor3 = Color3.fromRGB(170, 85, 255)
Button1.TextScaled = true
Button1.TextSize = 14.000
Button1.TextStrokeTransparency = 0.000
Button1.TextWrapped = true

Button2.Name = "Button2"
Button2.Parent = NovaAnims
Button2.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
Button2.BorderSizePixel = 2
Button2.Position = UDim2.new(0.0321100876, 0, 0.110635974, 0)
Button2.Size = UDim2.new(0, 192, 0, 37)
Button2.Font = Enum.Font.Ubuntu
Button2.Text = "Dab"
Button2.TextColor3 = Color3.fromRGB(170, 85, 255)
Button2.TextScaled = true
Button2.TextSize = 14.000
Button2.TextStrokeTransparency = 0.000
Button2.TextWrapped = true

Button3.Name = "Button3"
Button3.Parent = NovaAnims
Button3.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
Button3.BorderSizePixel = 2
Button3.Position = UDim2.new(0.0321100876, 0, 0.16129151, 0)
Button3.Size = UDim2.new(0, 192, 0, 37)
Button3.Font = Enum.Font.Ubuntu
Button3.Text = "CaramellDansen"
Button3.TextColor3 = Color3.fromRGB(170, 85, 255)
Button3.TextScaled = true
Button3.TextSize = 14.000
Button3.TextStrokeTransparency = 0.000
Button3.TextWrapped = true

TextLabel.Parent = NovaAnims
TextLabel.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
TextLabel.Position = UDim2.new(0.110091746, 0, 0.01496174, 0)
TextLabel.Size = UDim2.new(0, 169, 0, 48)
TextLabel.Font = Enum.Font.Roboto
TextLabel.Text = "Nova's Dances UI [R6]"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function TDOV_fake_script() -- NovaAnims.AnimScript 
	local script = Instance.new('LocalScript', NovaAnims)

	wait(1)
	local frame=script.Parent
	local user=game.Players.LocalPlayer
	repeat wait() until user.Character local char=user.Character
	local humanoid=char:WaitForChild("Humanoid")
	local anim
	function playanim(id)
		if char~=nil and humanoid~=nil then
			local id="rbxassetid://"..tostring(id)
			local oldanim=char:FindFirstChild("LocalAnimation")
			if anim~=nil then
				anim:Stop()
			end
			if oldanim~=nil then
				if oldanim.AnimationId==id then
					oldanim:Destroy()
					return
				end
				oldanim:Destroy()
			end
			local animation=Instance.new("Animation",char)
			animation.Name="LocalAnimation"
			animation.AnimationId=id
			anim=humanoid:LoadAnimation(animation)
			anim:Play()
		end
	end
	local b1=frame.Button1
	b1.MouseButton1Down:connect(function() playanim(b1.AnimID.Value) end)
	local b2=frame.Button2
	b2.MouseButton1Down:connect(function() playanim(b2.AnimID.Value) end)
	local b3=frame.Button3
	b3.MouseButton1Down:connect(function() playanim(b3.AnimID.Value) end)
	local b4=frame.Button4
	b4.MouseButton1Down:connect(function() playanim(b4.AnimID.Value) end)
	local b5=frame.Button5
	b5.MouseButton1Down:connect(function() playanim(b5.AnimID.Value) end)
	local b6=frame.Button6
	b6.MouseButton1Down:connect(function() playanim(b6.AnimID.Value) end)
	
	
	
end
coroutine.wrap(TDOV_fake_script)()
