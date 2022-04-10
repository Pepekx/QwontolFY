
if game.CoreGui:FindFirstChild("Ripple") then
    game.CoreGui:FindFirstChild("Ripple"):Destroy()
end

if game.PlaceId == 6284583030 then
local start = tick()
repeat task.wait() until game:isLoaded()
repeat task.wait() until game:GetService("Players")
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')
end

game:GetService("StarterGui"):SetCore("SendNotification",{  
Title = "THUNDER Z",     
Text = "Welcome to Thunder Z",
Icon = "rbxassetid://9254918057",
Duration = 10,
Color = Success
})

local DiscordLib = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")
local pfp
local user
local tag
local userinfo = {}

pcall(function()
	userinfo = HttpService:JSONDecode(readfile("discordlibinfo.txt"))
end)

pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
user = userinfo["user"] or game.Players.LocalPlayer.DisplayName
tag = userinfo["tag"] or tostring(math.random(0001, 9999))

local function SaveInfo()
	userinfo["pfp"] = pfp
	userinfo["user"] = user
	userinfo["tag"] = tag
	writefile("discordlibinfo.txt", HttpService:JSONEncode(userinfo))
end

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = object.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	topbarobject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			Update(input)
		end
	end)
end

local function RippleEffect(object)
	spawn(function()
		local Ripple = Instance.new("ImageLabel")

		Ripple.Name = "Ripple"
		Ripple.Parent = object
		Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Ripple.BackgroundTransparency = 1.000
		Ripple.ZIndex = 8
		Ripple.Image = "rbxassetid://2708891598"
		Ripple.ImageTransparency = 0.800
		Ripple.ScaleType = Enum.ScaleType.Fit

		Ripple.Position = UDim2.new((Mouse.X) / object.AbsoluteSize.Y, 0, (Mouse.Y) / object.AbsoluteSize.X, 0)
		TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out),{Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(3, 0, 3, 0)}):Play()

		wait(0.5)
		TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()

		wait(1)
		Ripple:Destroy()
	end)
end

local DiscordLib = {}
if game.CoreGui:FindFirstChild("Board") then
    game.CoreGui:FindFirstChild("Board"):Destroy()
end


local Discord = Instance.new("ScreenGui")
Discord.Name = "Ripple"
Discord.Parent = game:GetService("CoreGui")
Discord.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function DiscordLib:Window(text,mainclr,cls)
	local PresetColor = mainclr or Color3.fromRGB(0,255,255) or _G.Color
	local CloseBind = cls or Enum.KeyCode.RightControl or _G.Toggle
	local currentservertoggled = ""
	local minimized = false
	local fs = false
	local settingsopened = false
	local MainFrame = Instance.new("Frame")
	local MainFrameGradient = Instance.new("UIGradient")
	local TopFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local CloseIcon = Instance.new("ImageLabel")
	local MinimizeBtn = Instance.new("TextButton")
	local MinimizeIcon = Instance.new("ImageLabel")
	local ServersHolder = Instance.new("Folder")
	local Userpad = Instance.new("Frame")
	local UserpadCorner = Instance.new("UICorner")
	local UserIcon = Instance.new("Frame")
	local UserIconCorner = Instance.new("UICorner")
	local UserImage = Instance.new("ImageLabel")
	local UserImageCorner = Instance.new("UICorner")
	local UserCircleImage = Instance.new("ImageLabel")
	local UserName = Instance.new("TextLabel")
	local UserTag = Instance.new("TextLabel")
	local ServersHoldFrame = Instance.new("Frame")
	local ServersHold = Instance.new("ScrollingFrame")
	local ServersHoldLayout = Instance.new("UIListLayout")
	local ServersHoldPadding = Instance.new("UIPadding")
	local TopFrameHolder = Instance.new("Frame")
	local GlowFrame = Instance.new("Frame")
	local Glow = Instance.new("ImageLabel")
	local GlowFrameCorner = Instance.new("UICorner")

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Discord
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
	MainFrame.BackgroundTransparency = 1
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 618, 0, 407)

	local uitoggled = false
	UserInputService.InputBegan:Connect(function(io, p)
		pcall(function()
			if io.KeyCode == CloseBind then
				if uitoggled == false then
					MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
					wait(.3)
					Discord.Enabled = false
					uitoggled = true
				else
					Discord.Enabled = true
					MainFrame:TweenSize(UDim2.new(0, 618, 0, 407), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
					uitoggled = false
				end
			end
		end)
	end)

	GlowFrame.Name = "GlowFrame"
	GlowFrame.Parent = MainFrame
	GlowFrame.BackgroundTransparency = 1
	GlowFrame.Position = UDim2.new(0, 0.5, 0, 17.5)
	GlowFrame.Size = UDim2.new(0.625, 0,0.763, 0)
	GlowFrame.BackgroundColor3 = PresetColor

	GlowFrameCorner.CornerRadius = UDim.new(0, 7)
	GlowFrameCorner.Name = "GlowFrameCorner"
	GlowFrameCorner.Parent = GlowFrame

	Glow.Name = "Glow"
	Glow.Parent = GlowFrame
	Glow.BackgroundColor3 = PresetColor
	Glow.BackgroundTransparency = 1
	Glow.BorderSizePixel = 0
	Glow.Size = UDim2.new(0.625, 0,0.763, 0)
	Glow.ZIndex = 2
	Glow.Image = "rbxassetid://5028857084"
	Glow.ImageColor3 = PresetColor
	Glow.ScaleType = Enum.ScaleType.Slice

	TopFrame.Name = "TopFrame"
	TopFrame.Parent = MainFrame
	TopFrame.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
	TopFrame.BackgroundTransparency = 1.000
	TopFrame.BorderSizePixel = 0
	TopFrame.Position = UDim2.new(-0.000658480625, 0, 0, 0)
	TopFrame.Size = UDim2.new(0, 681, 0, 65)

	TopFrameHolder.Name = "TopFrameHolder"
	TopFrameHolder.Parent = TopFrame
	TopFrameHolder.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
	TopFrameHolder.BackgroundTransparency = 1.000
	TopFrameHolder.BorderSizePixel = 0
	TopFrameHolder.Position = UDim2.new(-0.000658480625, 0, 0, 0)
	TopFrameHolder.Size = UDim2.new(0, 681, 0, 22)

	Title.Name = "Title"
	Title.Parent = TopFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0102790017, 0, 0, 0)
	Title.Size = UDim2.new(0, 192, 0, 23)
	Title.Font = Enum.Font.Gotham
	Title.Text = text
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 13.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	ServersHolder.Name = "ServersHolder"
	ServersHolder.Parent = TopFrameHolder

	Userpad.Name = "Userpad"
	Userpad.Parent = TopFrameHolder
	Userpad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Userpad.BackgroundTransparency = 1
	Userpad.BorderSizePixel = 0
	Userpad.Position = UDim2.new(0.0010243297, 0, 15.8807148, 0)
	Userpad.Size = UDim2.new(0, 179, 0, 43)

	UserIcon.Name = "UserIcon"
	UserIcon.Parent = Userpad
	UserIcon.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	UserIcon.BackgroundTransparency = 1
	UserIcon.BorderSizePixel = 0
	UserIcon.Position = UDim2.new(0.0340000018, 0, 0.123999998, 0)
	UserIcon.Size = UDim2.new(0, 32, 0, 32)

	UserImage.Name = "UserImage"
	UserImage.Parent = UserIcon
	UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserImage.BackgroundTransparency = 1.000
	UserImage.Size = UDim2.new(0, 32, 0, 32)
	UserImage.Image = pfp

	UserCircleImage.Name = "UserImage"
	UserCircleImage.Parent = UserImage
	UserCircleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserCircleImage.BackgroundTransparency = 1.000
	UserCircleImage.ImageColor3 = Color3.fromRGB(23, 23, 23)
	UserCircleImage.Size = UDim2.new(0, 32, 0, 32)
	UserCircleImage.Image = "rbxassetid://4031889928"
	UserCircleImage.ImageColor3 = Color3.fromRGB(27, 27, 27)

	UserName.Name = "UserName"
	UserName.Parent = Userpad
	UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserName.BackgroundTransparency = 1.000
	UserName.BorderSizePixel = 0
	UserName.Position = UDim2.new(0.230000004, 0, 0.115999997, 0)
	UserName.Size = UDim2.new(0, 98, 0, 17)
	UserName.Font = Enum.Font.GothamSemibold
	UserName.TextColor3 = PresetColor
	UserName.TextSize = 13.000
	UserName.TextXAlignment = Enum.TextXAlignment.Left
	UserName.ClipsDescendants = true

	UserTag.Name = "UserTag"
	UserTag.Parent = Userpad
	UserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserTag.BackgroundTransparency = 1.000
	UserTag.BorderSizePixel = 0
	UserTag.Position = UDim2.new(0.230000004, 0, 0.455000013, 0)
	UserTag.Size = UDim2.new(0, 95, 0, 17)
	UserTag.Font = Enum.Font.Gotham
	UserTag.TextColor3 = PresetColor
	UserTag.TextSize = 13.000
	UserTag.TextTransparency = 0.300
	UserTag.TextXAlignment = Enum.TextXAlignment.Left

	UserName.Text = user
	UserTag.Text = "#" .. tag

	ServersHoldFrame.Name = "ServersHoldFrame"
	ServersHoldFrame.Parent = MainFrame
	ServersHoldFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServersHoldFrame.BackgroundTransparency = 1.000
	ServersHoldFrame.BorderColor3 = PresetColor
	ServersHoldFrame.Size = UDim2.new(0, 71, 0, 396)

	ServersHold.Name = "ServersHold"
	ServersHold.Parent = ServersHoldFrame
	ServersHold.Active = true
	ServersHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServersHold.BackgroundTransparency = 1.000
	ServersHold.BorderSizePixel = 0
	ServersHold.Position = UDim2.new(-0.000359333731, 0, 0.0580808073, 0)
	ServersHold.Size = UDim2.new(0, 71, 0, 373)
	ServersHold.ScrollBarThickness = 1
	ServersHold.ScrollBarImageTransparency = 1
	ServersHold.CanvasSize = UDim2.new(0, 0, 0, 0)

	ServersHoldLayout.Name = "ServersHoldLayout"
	ServersHoldLayout.Parent = ServersHold
	ServersHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ServersHoldLayout.Padding = UDim.new(0, 7)

	ServersHoldPadding.Name = "ServersHoldPadding"
	ServersHoldPadding.Parent = ServersHold

	function DiscordLib:Notification(titletext, desctext, btntext)
		local NotificationHolderMain = Instance.new("Frame")
		local NotificationHolderMainCorner = Instance.new("UICorner")
		local Notification = Instance.new("Frame")
		local NotificationCorner = Instance.new("UICorner")
		local UnderBar = Instance.new("Frame")
		local UnderBarCorner = Instance.new("UICorner")
		local UnderBarFrame = Instance.new("Frame")
		local Text1 = Instance.new("TextLabel")
		local Text2 = Instance.new("TextLabel")
		local AlrightBtn = Instance.new("TextButton")
		local AlrightCorner = Instance.new("UICorner")

		NotificationHolderMain.Name = "NotificationHolderMain"
		NotificationHolderMain.Parent = MainFrame
		NotificationHolderMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotificationHolderMain.BackgroundTransparency = 1
		NotificationHolderMain.BorderSizePixel = 0
		NotificationHolderMain.Position = UDim2.new(0, -1, 0.0460000017, 0)
		NotificationHolderMain.Size = UDim2.new(0, 676, 0, 374)
		TweenService:Create(
			NotificationHolderMain,
			TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0.1}
		):Play()

		NotificationHolderMainCorner.CornerRadius = UDim.new(0, 7)
		NotificationHolderMainCorner.Name = "NotificationHolderMainCorner"
		NotificationHolderMainCorner.Parent = NotificationHolderMain

		Notification.Name = "Notification"
		Notification.Parent = NotificationHolderMain
		Notification.AnchorPoint = Vector2.new(0.5, 0.5)
		Notification.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
		Notification.ClipsDescendants = true
		Notification.Position = UDim2.new(0.524819076, 0, 0.469270051, 0)
		Notification.Size = UDim2.new(0, -43, 0, 0)
		Notification.BackgroundTransparency = 1

		Notification:TweenSize(UDim2.new(0, 346, 0, 176), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .2, true)

		TweenService:Create(
			Notification,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0}
		):Play()

		NotificationCorner.CornerRadius = UDim.new(0, 5)
		NotificationCorner.Name = "NotificationCorner"
		NotificationCorner.Parent = Notification

		UnderBar.Name = "UnderBar"
		UnderBar.Parent = Notification
		UnderBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
		UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
		UnderBar.Size = UDim2.new(0, 346, 0, 10)

		UnderBarCorner.CornerRadius = UDim.new(0, 5)
		UnderBarCorner.Name = "UnderBarCorner"
		UnderBarCorner.Parent = UnderBar

		UnderBarFrame.Name = "UnderBarFrame"
		UnderBarFrame.Parent = UnderBar
		UnderBarFrame.BackgroundColor3 = Color3.fromRGB(14,14,14)
		UnderBarFrame.BorderSizePixel = 0
		UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -3.76068449, 0)
		UnderBarFrame.Size = UDim2.new(0, 346, 0, 40)

		Text1.Name = "Text1"
		Text1.Parent = Notification
		Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text1.BackgroundTransparency = 1.000
		Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
		Text1.Size = UDim2.new(0, 346, 0, 68)
		Text1.Font = Enum.Font.GothamSemibold
		Text1.Text = titletext
		Text1.TextColor3 = PresetColor
		Text1.TextSize = 20.000

		Text2.Name = "Text2"
		Text2.Parent = Notification
		Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text2.BackgroundTransparency = 1.000
		Text2.Position = UDim2.new(0.106342293, 0, 0.317724228, 0)
		Text2.Size = UDim2.new(0, 272, 0, 63)
		Text2.Font = Enum.Font.Gotham
		Text2.Text = desctext
		Text2.TextColor3 = PresetColor
		Text2.TextSize = 14.000
		Text2.TextWrapped = true

		AlrightBtn.Name = "AlrightBtn"
		AlrightBtn.Parent = Notification
		AlrightBtn.BackgroundColor3 = PresetColor
		AlrightBtn.Position = UDim2.new(0.0332369953, 0, 0.789141417, 0)
		AlrightBtn.Size = UDim2.new(0, 322, 0, 27)
		AlrightBtn.Font = Enum.Font.Gotham
		AlrightBtn.Text = btntext
		AlrightBtn.TextColor3 = Color3.fromRGB(23, 23, 23)
		AlrightBtn.TextSize = 13.000
		AlrightBtn.AutoButtonColor = false

		AlrightCorner.CornerRadius = UDim.new(0, 4)
		AlrightCorner.Name = "AlrightCorner"
		AlrightCorner.Parent = AlrightBtn

		AlrightBtn.MouseButton1Click:Connect(function()
			TweenService:Create(
				NotificationHolderMain,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			):Play()
			Notification:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
			TweenService:Create(
				Notification,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			):Play()
			wait()
			NotificationHolderMain:Destroy()
		end)

		AlrightBtn.MouseEnter:Connect(function()
			TweenService:Create(
				AlrightBtn,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = Color3.fromRGB(23, 23, 23), TextColor3 = PresetColor}
			):Play()
		end)

		AlrightBtn.MouseLeave:Connect(function()
			TweenService:Create(
				AlrightBtn,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = PresetColor, TextColor3 = Color3.fromRGB(23, 23, 23)}
			):Play()
		end)
	end

	MakeDraggable(TopFrame, MainFrame)
	ServersHoldPadding.PaddingLeft = UDim.new(0, 14)
	local ServerHold = {}
	function ServerHold:Server(text, img)
		local fc = false
		local currentchanneltoggled = ""
		local Server = Instance.new("TextButton")
		local ServerBtnCorner = Instance.new("UICorner")
		local ServerIco = Instance.new("ImageLabel")
		local ServerWhiteFrame = Instance.new("Frame")
		local ServerWhiteFrameCorner = Instance.new("UICorner")

		Server.Name = text .. "Server"
		Server.Parent = ServersHold
		Server.BackgroundColor3 = Color3.fromRGB(20,20,20)
		Server.Position = UDim2.new(0.125, 0, 0, 0)
		Server.Size = UDim2.new(0, 47, 0, 47)
		Server.AutoButtonColor = false
		Server.Font = Enum.Font.Gotham
		Server.Text = ""
		Server.BackgroundTransparency = 1
		Server.TextTransparency = 1
		Server.TextColor3 = Color3.fromRGB(233, 25, 42)
		Server.TextSize = 18.000

		ServerBtnCorner.CornerRadius = UDim.new(1, 0)
		ServerBtnCorner.Name = "ServerCorner"
		ServerBtnCorner.Parent = Server

		ServerWhiteFrame.Name = "ServerWhiteFrame"
		ServerWhiteFrame.Parent = Server
		ServerWhiteFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ServerWhiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ServerWhiteFrame.BackgroundTransparency = 1
		ServerWhiteFrame.Position = UDim2.new(-0.347378343, 0, 0.502659559, 0)
		ServerWhiteFrame.Size = UDim2.new(0, 11, 0, 10)

		ServerWhiteFrameCorner.CornerRadius = UDim.new(1, 0)
		ServerWhiteFrameCorner.Name = "ServerWhiteFrameCorner"
		ServerWhiteFrameCorner.Parent = ServerWhiteFrame
		ServersHold.CanvasSize = UDim2.new(0, 0, 0, ServersHoldLayout.AbsoluteContentSize.Y)

		local ServerFrame = Instance.new("Frame")
		local ServerTitleFrame = Instance.new("Frame")
		local ServerTitle = Instance.new("TextLabel")
		local GlowFrame = Instance.new("Frame")
		local Glow = Instance.new("ImageLabel")
		local ServerContentFrame = Instance.new("Frame")
		local ServerCorner = Instance.new("UICorner")
		local ChannelTitleFrame = Instance.new("Frame")
		local ChannelTitleFrameCorner = Instance.new("UICorner")
		local Hashtag = Instance.new("TextLabel")
		local ChannelTitle = Instance.new("TextLabel")
		local ChannelContentFrame = Instance.new("Frame")
		local ChannelContentFrameCorner = Instance.new("UICorner")
		local GlowChannel = Instance.new("ImageLabel")
		local ServerChannelHolder = Instance.new("ScrollingFrame")
		local ServerChannelHolderLayout = Instance.new("UIListLayout")
		local ServerChannelHolderPadding = Instance.new("UIPadding")
		local ServerTitleButtom = Instance.new("TextLabel")
		local TimeGlobal = Instance.new("TextLabel")
		local GameImage = Instance.new("ImageLabel")

		ServerFrame.Name = "ServerFrame"
		ServerFrame.Parent = ServersHolder
		ServerFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		ServerFrame.BorderSizePixel = 0
		ServerFrame.ClipsDescendants = true
		ServerFrame.Position = UDim2.new(0.005356875, 0, 0.32262593, 13)
		ServerFrame.Size = UDim2.new(0, 609, 0, 373)
		ServerFrame.Visible = false

		ServerTitleFrame.Name = "ServerTitleFrame"
		ServerTitleFrame.Parent = ServerFrame
		ServerTitleFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
		ServerTitleFrame.BackgroundTransparency = 1.000
		ServerTitleFrame.BorderSizePixel = 0
		ServerTitleFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
		ServerTitleFrame.Size = UDim2.new(0, 180, 0, 40)

		ServerTitle.Name = "ServerTitle"
		ServerTitle.Parent = ServerTitleFrame
		ServerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ServerTitle.BackgroundTransparency = 1.000
		ServerTitle.BorderSizePixel = 0
		ServerTitle.Position = UDim2.new(0.0851359761, 0, 0, 0)
		ServerTitle.Size = UDim2.new(0, 97, 0, 39)
		ServerTitle.Font = Enum.Font.GothamSemibold
		ServerTitle.Text = text
		ServerTitle.TextColor3 = PresetColor
		ServerTitle.TextSize = 15.000
		ServerTitle.TextXAlignment = Enum.TextXAlignment.Left

		GlowFrame.Name = "GlowFrame"
		GlowFrame.Parent = ServerFrame
		GlowFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
		GlowFrame.BackgroundTransparency = 1.000
		GlowFrame.BorderSizePixel = 0
		GlowFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
		GlowFrame.Size = UDim2.new(0, 609, 0, 40)

		Glow.Name = "Glow"
		Glow.Parent = GlowFrame
		Glow.BackgroundColor3 = PresetColor
		Glow.BackgroundTransparency = 1.000
		Glow.BorderSizePixel = 0
		Glow.Position = UDim2.new(0, -15, 0, -15)
		Glow.Size = UDim2.new(1, 30, 1, 30)
		Glow.ZIndex = 0
		Glow.Image = "rbxassetid://4996891970"
		Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
		Glow.ScaleType = Enum.ScaleType.Slice
		Glow.SliceCenter = Rect.new(20, 20, 280, 280)

		ServerContentFrame.Name = "ServerContentFrame"
		ServerContentFrame.Parent = ServerFrame
		ServerContentFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
		ServerContentFrame.BackgroundTransparency = 1.000
		ServerContentFrame.BorderSizePixel = 0
		ServerContentFrame.Position = UDim2.new(-0.0010054264, 0, 0.106338218, 0)
		ServerContentFrame.Size = UDim2.new(0, 180, 0, 333)

		ServerCorner.CornerRadius = UDim.new(0, 7)
		ServerCorner.Name = "ServerCorner"
		ServerCorner.Parent = ServerFrame

		ChannelTitleFrame.Name = "ChannelTitleFrame"
		ChannelTitleFrame.Parent = ServerFrame
		ChannelTitleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		ChannelTitleFrame.BorderSizePixel = 0
		ChannelTitleFrame.Position = UDim2.new(0.294561088, 0, -0.000900391256, 0)
		ChannelTitleFrame.Size = UDim2.new(0, 429, 0, 40)

		ChannelTitleFrameCorner.CornerRadius = UDim.new(0, 7)
		ChannelTitleFrameCorner.Name = "ChannelTitleFrameCorner"
		ChannelTitleFrameCorner.Parent = ChannelTitleFrame

		TimeGlobal.Name = "TimeGlobal"
		TimeGlobal.Parent = ChannelTitleFrame
		TimeGlobal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TimeGlobal.Position = UDim2.new(0.7062470865, 0, 0, 0)
		TimeGlobal.Size = UDim2.new(0, 95, 0, 39)
		TimeGlobal.BackgroundTransparency = 1
		TimeGlobal.ZIndex = 3
		TimeGlobal.Font = Enum.Font.GothamSemibold
		TimeGlobal.Text = "TIME | N/A"
		TimeGlobal.TextColor3 = PresetColor
		TimeGlobal.TextSize = 15.000
		TimeGlobal.TextXAlignment = Enum.TextXAlignment.Left

		spawn(function()
			while wait() do
				TimeGlobal.Text = "TIME | "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
			end
		end)

		ChannelTitle.Name = "ChannelTitle"
		ChannelTitle.Parent = ChannelTitleFrame
		ChannelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ChannelTitle.BackgroundTransparency = 1.000
		ChannelTitle.BorderSizePixel = 0
		ChannelTitle.Position = UDim2.new(0.0662470865, 0, 0, 0)
		ChannelTitle.Size = UDim2.new(0, 95, 0, 39)
		ChannelTitle.Font = Enum.Font.GothamSemibold
		ChannelTitle.Text = ""
		ChannelTitle.TextColor3 = PresetColor
		ChannelTitle.TextSize = 15.000
		ChannelTitle.TextXAlignment = Enum.TextXAlignment.Left

		ChannelContentFrame.Name = "ChannelContentFrame"
		ChannelContentFrame.Parent = ServerFrame
		ChannelContentFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		ChannelContentFrame.BorderSizePixel = 0
		ChannelContentFrame.ClipsDescendants = true
		ChannelContentFrame.Position = UDim2.new(0.294561088, 0, 0.106338218, 0)
		ChannelContentFrame.Size = UDim2.new(0, 429, 0, 333)

		ChannelContentFrameCorner.CornerRadius = UDim.new(0, 7)
		ChannelContentFrameCorner.Name = "ChannelContentFrameCorner"
		ChannelContentFrameCorner.Parent = ChannelContentFrame

		GlowChannel.Name = "GlowChannel"
		GlowChannel.Parent = ChannelContentFrame
		GlowChannel.BackgroundColor3 = PresetColor
		GlowChannel.BackgroundTransparency = 1.000
		GlowChannel.BorderSizePixel = 0
		GlowChannel.Position = UDim2.new(0, -33, 0, -91)
		GlowChannel.Size = UDim2.new(1.06396091, 30, 0.228228226, 30)
		GlowChannel.ZIndex = 0
		GlowChannel.Image = "rbxassetid://4996891970"
		GlowChannel.ImageColor3 = Color3.fromRGB(15, 15, 15)
		GlowChannel.ScaleType = Enum.ScaleType.Slice
		GlowChannel.SliceCenter = Rect.new(20, 20, 280, 280)

		ServerChannelHolder.Name = "ServerChannelHolder"
		ServerChannelHolder.Parent = ServerContentFrame
		ServerChannelHolder.Active = true
		ServerChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ServerChannelHolder.BackgroundTransparency = 1.000
		ServerChannelHolder.BorderSizePixel = 0
		ServerChannelHolder.Position = UDim2.new(0.00535549596, 0, 0.0241984241, 0)
		ServerChannelHolder.Selectable = false
		ServerChannelHolder.Size = UDim2.new(0, 179, 0, 278)
		ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
		ServerChannelHolder.ScrollBarThickness = 4
		ServerChannelHolder.ScrollBarImageColor3 = PresetColor
		ServerChannelHolder.ScrollBarImageTransparency = 1

		ServerChannelHolderLayout.Name = "ServerChannelHolderLayout"
		ServerChannelHolderLayout.Parent = ServerChannelHolder
		ServerChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ServerChannelHolderLayout.Padding = UDim.new(0, 4)

		ServerChannelHolderPadding.Name = "ServerChannelHolderPadding"
		ServerChannelHolderPadding.Parent = ServerChannelHolder
		ServerChannelHolderPadding.PaddingLeft = UDim.new(0, 9)

		ServerChannelHolder.MouseEnter:Connect(function()
			ServerChannelHolder.ScrollBarImageTransparency = 0
		end)

		ServerChannelHolder.MouseLeave:Connect(function()
			ServerChannelHolder.ScrollBarImageTransparency = 1
		end)

		Server.MouseEnter:Connect(function()
			if currentservertoggled ~= Server.Name then
				TweenService:Create(
					Server,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
				):Play()
				TweenService:Create(
					ServerBtnCorner,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{CornerRadius = UDim.new(0, 15)}
				):Play()
				ServerWhiteFrame:TweenSize(
					UDim2.new(0, 11, 0, 27),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quart,
					.3,
					true
				)
			end
		end)

		Server.MouseLeave:Connect(function()
			if currentservertoggled ~= Server.Name then
				TweenService:Create(
					Server,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(47, 49, 54)}
				):Play()
				TweenService:Create(
					ServerBtnCorner,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{CornerRadius = UDim.new(1, 0)}
				):Play()
				ServerWhiteFrame:TweenSize(
					UDim2.new(0, 11, 0, 10),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quart,
					.3,
					true
				)
			end
		end)

		Server.MouseButton1Click:Connect(function()
			currentservertoggled = Server.Name
			for i, v in next, ServersHolder:GetChildren() do
				if v.Name == "ServerFrame" then
					v.Visible = false
				end
				ServerFrame.Visible = true
			end
			for i, v in next, ServersHold:GetChildren() do
				if v.ClassName == "TextButton" then
					TweenService:Create(
						v,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(47, 49, 54)}
					):Play()
					TweenService:Create(
						Server,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
					):Play()
					TweenService:Create(
						v.ServerCorner,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{CornerRadius = UDim.new(1, 0)}
					):Play()
					TweenService:Create(
						ServerBtnCorner,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{CornerRadius = UDim.new(0, 15)}
					):Play()
					v.ServerWhiteFrame:TweenSize(
						UDim2.new(0, 11, 0, 10),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						.3,
						true
					)
					ServerWhiteFrame:TweenSize(
						UDim2.new(0, 11, 0, 46),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						.3,
						true
					)
				end
			end
		end)

		if img == "" then
			Server.Text = string.sub(text, 1, 1)
		else
			ServerIco.Image = img
		end

		if fs == false then
			TweenService:Create(
				Server,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
			):Play()
			TweenService:Create(
				ServerBtnCorner,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{CornerRadius = UDim.new(0, 15)}
			):Play()
			ServerWhiteFrame:TweenSize(
				UDim2.new(0, 11, 0, 46),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quart,
				.3,
				true
			)
			ServerFrame.Visible = true
			Server.Name = text .. "Server"
			currentservertoggled = Server.Name
			fs = true
		end

		local ChannelHold = {}
		function ChannelHold:Channel(text,ico)
			local Icon = ico or ""
			local ChannelIcon = Instance.new("ImageLabel")
			local ChannelBtnOutline = Instance.new("Frame")
			local ChannelBtnOutlineCorner = Instance.new("UICorner")
			local ChannelBtn = Instance.new("TextButton")
			local ChannelBtnCorner = Instance.new("UICorner")
			local ChannelBtnHashtag = Instance.new("TextLabel")
			local ChannelBtnTitle = Instance.new("TextLabel")

			ChannelBtnOutline.Name = text.."ChannelBtn"
			ChannelBtnOutline.Parent = ServerChannelHolder
			ChannelBtnOutline.Position = UDim2.new(0.24118948, 0, 0.578947365, 0)
			ChannelBtnOutline.Size = UDim2.new(0, 162, 0, 32)
			ChannelBtnOutline.BackgroundColor3 = PresetColor

			ChannelBtnOutlineCorner.CornerRadius = UDim.new(0, 6)
			ChannelBtnOutlineCorner.Name = "ChannelBtnOutlineCorner"
			ChannelBtnOutlineCorner.Parent = ChannelBtnOutline

			ChannelBtn.Name = text .. "ChannelBtn"
			ChannelBtn.Parent = ChannelBtnOutline
			ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			ChannelBtn.BorderSizePixel = 0
			ChannelBtn.Position = UDim2.new(0.002761, 0, 0.02761, 0)
			ChannelBtn.Size = UDim2.new(0, 160, 0, 30)
			ChannelBtn.AutoButtonColor = false
			ChannelBtn.Font = Enum.Font.SourceSans
			ChannelBtn.Text = ""
			ChannelBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			ChannelBtn.TextSize = 14.000

			ChannelBtnCorner.CornerRadius = UDim.new(0, 6)
			ChannelBtnCorner.Name = "ChannelBtnCorner"
			ChannelBtnCorner.Parent = ChannelBtn

			ChannelIcon.Name = "TabIcon"
			ChannelIcon.Parent = ChannelBtn
			ChannelIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ChannelIcon.BackgroundTransparency = 1.000
			ChannelIcon.Position = UDim2.new(0.0234146333, 0, 0.12, 0)
			ChannelIcon.Size = UDim2.new(0, 20, 0, 20)
			ChannelIcon.Image = Icon
			ChannelIcon.ImageTransparency = 0

			ChannelBtnTitle.Name = "ChannelBtnTitle"
			ChannelBtnTitle.Parent = ChannelBtn
			ChannelBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ChannelBtnTitle.BackgroundTransparency = 1.000
			ChannelBtnTitle.BorderSizePixel = 0
			ChannelBtnTitle.Position = UDim2.new(0.163747092, 0, -0.166666672, 0)
			ChannelBtnTitle.Size = UDim2.new(0, 95, 0, 39)
			ChannelBtnTitle.Font = Enum.Font.Gotham
			ChannelBtnTitle.Text = text
			ChannelBtnTitle.TextColor3 = PresetColor
			ChannelBtnTitle.TextSize = 14.000
			ChannelBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
			ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ServerChannelHolderLayout.AbsoluteContentSize.Y)

			local ChannelHolder = Instance.new("ScrollingFrame")
			local ChannelHolderLayout = Instance.new("UIListLayout")

			ChannelHolder.Name = "ChannelHolder"
			ChannelHolder.Parent = ChannelContentFrame
			ChannelHolder.Active = true
			ChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ChannelHolder.BackgroundTransparency = 1.000
			ChannelHolder.BorderSizePixel = 0
			ChannelHolder.Position = UDim2.new(0.0360843192, 0, 0.0241984241, 0)
			ChannelHolder.Size = UDim2.new(0, 412, 0, 314)
			ChannelHolder.ScrollBarThickness = 6
			ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
			ChannelHolder.ScrollBarImageTransparency = 0
			ChannelHolder.ScrollBarImageColor3 = PresetColor
			ChannelHolder.Visible = false
			ChannelHolder.ClipsDescendants = false

			ChannelHolderLayout.Name = "ChannelHolderLayout"
			ChannelHolderLayout.Parent = ChannelHolder
			ChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ChannelHolderLayout.Padding = UDim.new(0, 6)

			ChannelBtn.MouseEnter:Connect(function()
				if currentchanneltoggled ~= ChannelBtn.Name then
					ChannelBtn.BackgroundColor3 = PresetColor
					ChannelBtnTitle.TextColor3 = Color3.fromRGB(27, 27, 27)
				end
			end)

			ChannelBtn.MouseLeave:Connect(function()
				if currentchanneltoggled ~= ChannelBtn.Name then
					ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					ChannelBtnTitle.TextColor3 = PresetColor
				end
			end)

			ChannelBtn.MouseEnter:Connect(function()
				if currentchanneltoggled == ChannelBtn.Name then
					ChannelBtn.BackgroundColor3 = PresetColor
					ChannelBtnTitle.TextColor3 = Color3.fromRGB(27, 27, 27)
				end
			end)

			ChannelBtn.MouseLeave:Connect(function()
				if currentchanneltoggled == ChannelBtn.Name then
					ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					ChannelBtnTitle.TextColor3 = PresetColor
				end
			end)

			ChannelBtn.MouseButton1Click:Connect(function()
				for i, v in next, ChannelContentFrame:GetChildren() do
					if v.Name == "ChannelHolder" then
						v.Visible = false
					end
					ChannelHolder.Visible = true
				end
				for i, v in next, ServerChannelHolder:GetChildren() do
					if v.ClassName == "TextButton" then
						v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
						v.ChannelBtnTitle.TextColor3 = PresetColor
					end
					ServerFrame.Visible = true
				end
				ChannelTitle.Text = text
				ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				ChannelBtnTitle.TextColor3 = PresetColor
				currentchanneltoggled = ChannelBtn.Name
			end)

			if fc == false then
				fc = true
				ChannelTitle.Text = text
				ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				ChannelBtnTitle.TextColor3 = PresetColor
				currentchanneltoggled = ChannelBtn.Name
				ChannelHolder.Visible = true
			end

			local ChannelContent = {}
			function ChannelContent:AddButton(text, callback)
				local Button = Instance.new("TextButton")
				local ButtonCorner = Instance.new("UICorner")

				Button.Name = "Button"
				Button.Parent = ChannelHolder
				Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				Button.Size = UDim2.new(0, 401, 0, 30)
				Button.AutoButtonColor = false
				Button.Font = Enum.Font.Gotham
				Button.TextColor3 = PresetColor
				Button.TextSize = 14.000
				Button.Text = text

				ButtonCorner.CornerRadius = UDim.new(0, 4)
				ButtonCorner.Name = "ButtonCorner"
				ButtonCorner.Parent = Button

				Button.MouseEnter:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = PresetColor, TextColor3 = Color3.fromRGB(23, 23, 23)}
					):Play()
				end)

				Button.MouseButton1Click:Connect(function()
					pcall(callback)
					Button.TextSize = 0
					TweenService:Create(
						Button,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextSize = 14}
					):Play()
				end)

				Button.MouseLeave:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(23, 23, 23), TextColor3 = PresetColor}
					):Play()
				end)
				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end

            function ChannelContent:AddToggle(text, default, callback)
                local toggled = false
                local Toggle = Instance.new("TextButton")
                local ToggleTitle = Instance.new("TextLabel")
                local ToggleFrame = Instance.new("Frame")
                local ToggleFrameCorner = Instance.new("UICorner")
                local ToggleFrameCircle = Instance.new("Frame")
                local ToggleFrameCircleCorner = Instance.new("UICorner")
                local ToggleFrameOutline = Instance.new("Frame")
                local ToggleFrameOutlineCorner = Instance.new("UICorner")
                local Icon = Instance.new("ImageLabel")

                Toggle.Name = "Toggle"
                Toggle.Parent = ChannelHolder
                Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
                Toggle.Size = UDim2.new(0, 401, 0, 30)
                Toggle.AutoButtonColor = false
                Toggle.Font = Enum.Font.Gotham
                Toggle.Text = ""
                Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                Toggle.TextSize = 14.000

                ToggleTitle.Name = "ToggleTitle"
                ToggleTitle.Parent = Toggle
                ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTitle.BackgroundTransparency = 1.000
                ToggleTitle.Position = UDim2.new(0, 5, 0, 0)
                ToggleTitle.Size = UDim2.new(0, 200, 0, 30)
                ToggleTitle.Font = Enum.Font.Gotham
                ToggleTitle.Text = text
                ToggleTitle.TextColor3 = PresetColor
                ToggleTitle.TextSize = 14.000
                ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

                ToggleFrameOutline.Name = "ToggleFrameOutline"
                ToggleFrameOutline.Parent = Toggle
                ToggleFrameOutline.BackgroundColor3 = PresetColor
                ToggleFrameOutline.Position = UDim2.new(0.900481343, -5, 0.16300018, 0)
                ToggleFrameOutline.Size = UDim2.new(0, 41, 0, 22)

                ToggleFrameOutlineCorner.CornerRadius = UDim.new(1, 8)
                ToggleFrameOutlineCorner.Name = "ToggleFrameOutlineCorner"
                ToggleFrameOutlineCorner.Parent = ToggleFrameOutline

                ToggleFrame.Name = "ToggleFrame"
                ToggleFrame.Parent = ToggleFrameOutline
                ToggleFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                ToggleFrame.Size = UDim2.new(0, 39, 0, 20)
                ToggleFrame.Position = UDim2.new(0, 1, 0.03761, 0)

                ToggleFrameCorner.CornerRadius = UDim.new(1, 8)
                ToggleFrameCorner.Name = "ToggleFrameCorner"
                ToggleFrameCorner.Parent = ToggleFrame

                ToggleFrameCircle.Name = "ToggleFrameCircle"
                ToggleFrameCircle.Parent = ToggleFrame
                ToggleFrameCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleFrameCircle.Position = UDim2.new(0.234999999, -5, 0.133000001, 0)
                ToggleFrameCircle.Size = UDim2.new(0, 15, 0, 15)

                ToggleFrameCircleCorner.CornerRadius = UDim.new(1, 0)
                ToggleFrameCircleCorner.Name = "ToggleFrameCircleCorner"
                ToggleFrameCircleCorner.Parent = ToggleFrameCircle

                Icon.Name = "Icon"
                Icon.Parent = ToggleFrameCircle
                Icon.AnchorPoint = Vector2.new(0.5, 0.5)
                Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Icon.BackgroundTransparency = 1.000
                Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Icon.Position = UDim2.new(0, 8, 0, 8)
                Icon.Size = UDim2.new(0, 13, 0, 13)
                Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
                Icon.ImageColor3 = Color3.fromRGB(31, 31, 31)

                if default == true then
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageColor3 = PresetColor}
                    ):Play()
                    TweenService:Create(
                        ToggleFrame,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = PresetColor}
                    ):Play()
                    ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3,true)
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageTransparency = 1}
                    ):Play()
                    Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
                    wait(.1)
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageTransparency = 0}
                    ):Play()
                    toggled = not toggled
                    pcall(callback, toggled)
                end
                 
                Toggle.MouseButton1Click:Connect(function()
                    if toggled == false then
                        TweenService:Create(
                            Icon,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageColor3 = PresetColor}
                        ):Play()
                        TweenService:Create(
                            ToggleFrame,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = PresetColor}
                        ):Play()
                        ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                        TweenService:Create(
                            Icon,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageTransparency = 1}
                        ):Play()
                        Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
                        wait(.1)
                        TweenService:Create(
                            Icon,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageTransparency = 0}
                        ):Play()
                    else
                        TweenService:Create(
                            Icon,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageColor3 = Color3.fromRGB(31, 31, 31)}
                        ):Play()
                        TweenService:Create(
                            ToggleFrame,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                        ):Play()
                        ToggleFrameCircle:TweenPosition(UDim2.new(0.234999999, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                        TweenService:Create(
                            Icon,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageTransparency = 1}
                        ):Play()
                        Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
                        wait(.1)
                        TweenService:Create(
                            Icon,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {ImageTransparency = 0}
                        ):Play()
                    end
                    toggled = not toggled
                    pcall(callback, toggled)
                end)

                ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
            end

			function ChannelContent:AddSlider(text, min, max, start, callback)
				local SliderFunc = {}
				local dragging = false
				local Slider = Instance.new("TextButton")
				local SliderTitle = Instance.new("TextLabel")
				local SliderFrame = Instance.new("Frame")
				local SliderFrameCorner = Instance.new("UICorner")
				local CurrentValueFrame = Instance.new("Frame")
				local CurrentValueFrameCorner = Instance.new("UICorner")
				local Zip = Instance.new("Frame")
				local ZipCorner = Instance.new("UICorner")
				local ValueBubble = Instance.new("Frame")
				local ValueBubbleCorner = Instance.new("UICorner")
				local SquareBubble = Instance.new("Frame")
				local GlowBubble = Instance.new("ImageLabel")
				local ValueLabel = Instance.new("TextLabel")

				Slider.Name = "Slider"
				Slider.Parent = ChannelHolder
				Slider.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0, 0, 0.216560602, 0)
				Slider.Size = UDim2.new(0, 401, 0, 38)
				Slider.AutoButtonColor = false
				Slider.Font = Enum.Font.Gotham
				Slider.Text = ""
				Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
				Slider.TextSize = 14.000

				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = Slider
				SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.BackgroundTransparency = 1.000
				SliderTitle.Position = UDim2.new(0, 5, 0, -4)
				SliderTitle.Size = UDim2.new(0, 200, 0, 27)
				SliderTitle.Font = Enum.Font.Gotham
				SliderTitle.Text = text
				SliderTitle.TextColor3 = PresetColor
				SliderTitle.TextSize = 14.000
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Slider
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(79, 84, 92)
				SliderFrame.Position = UDim2.new(0.497999996, 0, 0.757000029, 0)
				SliderFrame.Size = UDim2.new(0, 385, 0, 8)

				SliderFrameCorner.Name = "SliderFrameCorner"
				SliderFrameCorner.Parent = SliderFrame

				CurrentValueFrame.Name = "CurrentValueFrame"
				CurrentValueFrame.Parent = SliderFrame
				CurrentValueFrame.BackgroundColor3 = PresetColor
				CurrentValueFrame.Size = UDim2.new((start or 0) / max, 0, 0, 8)

				CurrentValueFrameCorner.Name = "CurrentValueFrameCorner"
				CurrentValueFrameCorner.Parent = CurrentValueFrame

				Zip.Name = "Zip"
				Zip.Parent = SliderFrame
				Zip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Zip.Position = UDim2.new((start or 0) / max, -6, -0.644999981, 0)
				Zip.Size = UDim2.new(0, 10, 0, 18)
				ZipCorner.CornerRadius = UDim.new(0, 3)
				ZipCorner.Name = "ZipCorner"
				ZipCorner.Parent = Zip

				ValueBubble.Name = "ValueBubble"
				ValueBubble.Parent = Zip
				ValueBubble.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				ValueBubble.Position = UDim2.new(0.5, 0, -1.00800002, 0)
				ValueBubble.Size = UDim2.new(0, 36, 0, 21)
				ValueBubble.Visible = false

				Zip.MouseEnter:Connect(function()
					if dragging == false then
						ValueBubble.Visible = true
					end
				end)

				Zip.MouseLeave:Connect(function()
					if dragging == false then
						ValueBubble.Visible = false
					end
				end)

				ValueBubbleCorner.CornerRadius = UDim.new(0, 3)
				ValueBubbleCorner.Name = "ValueBubbleCorner"
				ValueBubbleCorner.Parent = ValueBubble

				SquareBubble.Name = "SquareBubble"
				SquareBubble.Parent = ValueBubble
				SquareBubble.AnchorPoint = Vector2.new(0.5, 0.5)
				SquareBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				SquareBubble.BorderSizePixel = 0
				SquareBubble.Position = UDim2.new(0.493000001, 0, 0.637999971, 0)
				SquareBubble.Rotation = 45.000
				SquareBubble.Size = UDim2.new(0, 19, 0, 19)

				GlowBubble.Name = "GlowBubble"
				GlowBubble.Parent = ValueBubble
				GlowBubble.BackgroundColor3 = PresetColor
				GlowBubble.BackgroundTransparency = 1.000
				GlowBubble.BorderSizePixel = 0
				GlowBubble.Position = UDim2.new(0, -15, 0, -15)
				GlowBubble.Size = UDim2.new(1, 30, 1, 30)
				GlowBubble.ZIndex = 0
				GlowBubble.Image = "rbxassetid://4996891970"
				GlowBubble.ImageColor3 = Color3.fromRGB(15, 15, 15)
				GlowBubble.ScaleType = Enum.ScaleType.Slice
				GlowBubble.SliceCenter = Rect.new(20, 20, 280, 280)

				ValueLabel.Name = "ValueLabel"
				ValueLabel.Parent = ValueBubble
				ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ValueLabel.BackgroundTransparency = 1.000
				ValueLabel.Size = UDim2.new(0, 36, 0, 21)
				ValueLabel.Font = Enum.Font.Gotham
				ValueLabel.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
				ValueLabel.TextColor3 = PresetColor
				ValueLabel.TextSize = 10.000

				local function move(input)
					local pos = UDim2.new(math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0 , 1), -6, -0.644999981, 0)
					local pos1 = UDim2.new(math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1), 0, 0, 8)
					CurrentValueFrame.Size = pos1
					Zip.Position = pos
					local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
					ValueLabel.Text = tostring(value)
					pcall(callback, value)
				end

				Zip.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = true
						ValueBubble.Visible = true
					end
				end)

				Zip.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = false
						ValueBubble.Visible = false
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						move(input)
					end
				end)

				function SliderFunc:Change(tochange)
					CurrentValueFrame.Size = UDim2.new((tochange or 0) / max, 0, 0, 8)
					Zip.Position = UDim2.new((tochange or 0) / max, -6, -0.644999981, 0)
					ValueLabel.Text = tostring(tochange and math.floor((tochange / max) * (max - min) + min) or 0)
					pcall(callback, tochange)
				end

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
				return SliderFunc
			end

			function ChannelContent:AddLine()
				local Line1 = Instance.new("Frame")
				local Line2 = Instance.new("Frame")

				Line1.Name = "Line1"
				Line1.Parent = ChannelHolder
				Line1.BackgroundColor3 = PresetColor
				Line1.BackgroundTransparency = 1.000
				Line1.Position = UDim2.new(0, 0, 0.350318581, 0)
				Line1.Size = UDim2.new(0, 100, 0, 8)

				Line2.Name = "Line2"
				Line2.Parent = Line1
				Line2.BackgroundColor3 = PresetColor
				Line2.BorderSizePixel = 0
				Line2.Position = UDim2.new(0, 0, 0, 4)
				Line2.Size = UDim2.new(0, 401, 0, 1)
				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end

			function ChannelContent:AddDropdown(text, list, callback)
				local DropFunc = {}
				local itemcount = 0
				local framesize = 0
				local DropTog = false
				local Dropdown = Instance.new("Frame")
				local DropdownTitle = Instance.new("TextLabel")
				local DropdownFrameOutline = Instance.new("Frame")
				local DropdownFrameOutlineCorner = Instance.new("UICorner")
				local DropdownFrame = Instance.new("Frame")
				local DropdownFrameCorner = Instance.new("UICorner")
				local CurrentSelectedText = Instance.new("TextLabel")
				local ArrowImg = Instance.new("ImageLabel")
				local DropdownFrameBtn = Instance.new("TextButton")

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = ChannelHolder
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
				Dropdown.Size = UDim2.new(0, 403, 0, 60)

				DropdownTitle.Name = "DropdownTitle"
				DropdownTitle.Parent = Dropdown
				DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownTitle.BackgroundTransparency = 1.000
				DropdownTitle.Position = UDim2.new(0, 5, 0, 0)
				DropdownTitle.Size = UDim2.new(0, 200, 0, 29)
				DropdownTitle.Font = Enum.Font.Gotham
				DropdownTitle.Text = ""
				DropdownTitle.TextColor3 = PresetColor
				DropdownTitle.TextSize = 14.000
				DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

				DropdownFrameOutline.Name = "DropdownFrameOutline"
				DropdownFrameOutline.Parent = DropdownTitle
				DropdownFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownFrameOutline.BackgroundColor3 = PresetColor
				DropdownFrameOutline.Position = UDim2.new(0.988442957, 0, 1.0197437, 0)
				DropdownFrameOutline.Size = UDim2.new(0, 396, 0, 36)

				DropdownFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
				DropdownFrameOutlineCorner.Name = "DropdownFrameOutlineCorner"
				DropdownFrameOutlineCorner.Parent = DropdownFrameOutline

				DropdownFrame.Name = "DropdownFrame"
				DropdownFrame.Parent = DropdownTitle
				DropdownFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				DropdownFrame.ClipsDescendants = true
				DropdownFrame.Position = UDim2.new(0.00899999978, 0, 0.46638527, 0)
				DropdownFrame.Selectable = true
				DropdownFrame.Size = UDim2.new(0, 392, 0, 32)

				DropdownFrameCorner.CornerRadius = UDim.new(0, 3)
				DropdownFrameCorner.Name = "DropdownFrameCorner"
				DropdownFrameCorner.Parent = DropdownFrame

				CurrentSelectedText.Name = "CurrentSelectedText"
				CurrentSelectedText.Parent = DropdownFrame
				CurrentSelectedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				CurrentSelectedText.BackgroundTransparency = 1.000
				CurrentSelectedText.Position = UDim2.new(0.0178571437, 0, 0, 0)
				CurrentSelectedText.Size = UDim2.new(0, 193, 0, 32)
				CurrentSelectedText.Font = Enum.Font.Gotham
				CurrentSelectedText.Text = text
				CurrentSelectedText.TextTransparency = 0.250
				CurrentSelectedText.TextColor3 = PresetColor
				CurrentSelectedText.TextSize = 14.000
				CurrentSelectedText.TextXAlignment = Enum.TextXAlignment.Left

				ArrowImg.Name = "ArrowImg"
				ArrowImg.Parent = CurrentSelectedText
				ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ArrowImg.BackgroundTransparency = 1.000
				ArrowImg.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
				ArrowImg.Size = UDim2.new(0, 22, 0, 22)
				ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818372"
				ArrowImg.ImageColor3 = PresetColor

				DropdownFrameBtn.Name = "DropdownFrameBtn"
				DropdownFrameBtn.Parent = DropdownFrame
				DropdownFrameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownFrameBtn.BackgroundTransparency = 1.000
				DropdownFrameBtn.Size = UDim2.new(0, 392, 0, 32)
				DropdownFrameBtn.Font = Enum.Font.SourceSans
				DropdownFrameBtn.Text = ""
				DropdownFrameBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
				DropdownFrameBtn.TextSize = 14.000

				local DropdownFrameMainOutline = Instance.new("Frame")
				local DropdownFrameMainOutlineCorner = Instance.new("UICorner")
				local DropdownFrameMain = Instance.new("Frame")
				local DropdownFrameMainCorner = Instance.new("UICorner")
				local DropItemHolderLabel = Instance.new("TextLabel")
				local DropItemHolder = Instance.new("ScrollingFrame")
				local DropItemHolderLayout = Instance.new("UIListLayout")

				DropdownFrameMainOutline.Name = "DropdownFrameMainOutline"
				DropdownFrameMainOutline.Parent = DropdownTitle
				DropdownFrameMainOutline.BackgroundColor3 = PresetColor
				DropdownFrameMainOutline.Position = UDim2.new(-0.00155700743, 0, 1.66983342, 0)
				DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 81)
				DropdownFrameMainOutline.Visible = false

				DropdownFrameMainOutlineCorner.CornerRadius = UDim.new(0, 3)
				DropdownFrameMainOutlineCorner.Name = "DropdownFrameMainOutlineCorner"
				DropdownFrameMainOutlineCorner.Parent = DropdownFrameMainOutline

				DropdownFrameMain.Name = "DropdownFrameMain"
				DropdownFrameMain.Parent = DropdownTitle
				DropdownFrameMain.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				DropdownFrameMain.ClipsDescendants = true
				DropdownFrameMain.Position = UDim2.new(0.00799999978, 0, 1.7468965, 0)
				DropdownFrameMain.Selectable = true
				DropdownFrameMain.Size = UDim2.new(0, 392, 0, 77)
				DropdownFrameMain.Visible = false

				DropdownFrameMainCorner.CornerRadius = UDim.new(0, 3)
				DropdownFrameMainCorner.Name = "DropdownFrameMainCorner"
				DropdownFrameMainCorner.Parent = DropdownFrameMain

				DropItemHolderLabel.Name = "ItemHolderLabel"
				DropItemHolderLabel.Parent = DropdownFrameMain
				DropItemHolderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropItemHolderLabel.BackgroundTransparency = 1.000
				DropItemHolderLabel.Position = UDim2.new(0.0178571437, 0, 0, 0)
				DropItemHolderLabel.Size = UDim2.new(0, 193, 0, 13)
				DropItemHolderLabel.Font = Enum.Font.Gotham
				DropItemHolderLabel.Text = ""
				DropItemHolderLabel.TextColor3 = PresetColor
				DropItemHolderLabel.TextSize = 14.000
				DropItemHolderLabel.TextXAlignment = Enum.TextXAlignment.Left

				DropItemHolder.Name = "ItemHolder"
				DropItemHolder.Parent = DropItemHolderLabel
				DropItemHolder.Active = true
				DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropItemHolder.BackgroundTransparency = 1.000
				DropItemHolder.Position = UDim2.new(0, 0, 0.215384638, 0)
				DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
				DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
				DropItemHolder.ScrollBarThickness = 6
				DropItemHolder.BorderSizePixel = 0
				DropItemHolder.ScrollBarImageColor3 = PresetColor

				DropItemHolderLayout.Name = "ItemHolderLayout"
				DropItemHolderLayout.Parent = DropItemHolder
				DropItemHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
				DropItemHolderLayout.Padding = UDim.new(0, 0)

				DropdownFrameBtn.MouseButton1Click:Connect(function()
					if DropTog == false then
						DropdownFrameMain.Visible = true
						DropdownFrameMainOutline.Visible = true
						TweenService:Create(
							Dropdown,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{Size = UDim2.new(0, 403, 0, 60 + DropdownFrameMainOutline.AbsoluteSize.Y)}
						):Play()
						TweenService:Create(
							ChannelHolder,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
						):Play()
					else
						DropdownFrameMain.Visible = false
						DropdownFrameMainOutline.Visible = false
						TweenService:Create(
							Dropdown,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{Size = UDim2.new(0, 403, 0, 60)}
						):Play()
						TweenService:Create(
							ChannelHolder,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
						):Play()
						wait(.2)
					end
					DropTog = not DropTog
				end)

				for i, v in next, list do
					itemcount = itemcount + 1

					if itemcount == 1 then
						framesize = 29
					elseif itemcount == 2 then
						framesize = 58
					elseif itemcount >= 3 then
						framesize = 87
					end

					local Item = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")
					local ItemText = Instance.new("TextLabel")

					Item.Name = "Item"
					Item.Parent = DropItemHolder
					Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
					Item.Size = UDim2.new(0, 379, 0, 29)
					Item.AutoButtonColor = false
					Item.Font = Enum.Font.SourceSans
					Item.Text = ""
					Item.TextColor3 = Color3.fromRGB(0, 0, 0)
					Item.TextSize = 14.000
					Item.BackgroundTransparency = 1

					ItemCorner.CornerRadius = UDim.new(0, 4)
					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = Item

					ItemText.Name = "ItemText"
					ItemText.Parent = Item
					ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
					ItemText.BackgroundTransparency = 1.000
					ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
					ItemText.Size = UDim2.new(0, 192, 0, 29)
					ItemText.Font = Enum.Font.Gotham
					ItemText.TextColor3 = PresetColor
					ItemText.TextSize = 14.000
					ItemText.TextXAlignment = Enum.TextXAlignment.Left
					ItemText.Text = v

					Item.MouseEnter:Connect(function()
						ItemText.TextColor3 = Color3.fromRGB(255, 255, 255)
						Item.BackgroundTransparency = 0
					end)

					Item.MouseLeave:Connect(function()
						ItemText.TextColor3 = PresetColor
						Item.BackgroundTransparency = 1
					end)

					Item.MouseButton1Click:Connect(function()
						CurrentSelectedText.Text = v
						CurrentSelectedText.TextTransparency = 0.250
						pcall(callback, v)
						DropdownFrameMain.Visible = false
						DropdownFrameMainOutline.Visible = false
						TweenService:Create(
							Dropdown,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{Size = UDim2.new(0, 403, 0, 60)}
						):Play()
						TweenService:Create(
							ChannelHolder,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
						):Play()
						wait(.2)
						DropTog = not DropTog
					end)

					DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropItemHolderLayout.AbsoluteContentSize.Y)

					DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
					DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
					DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
				end

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)

				function DropFunc:Clear()
					for i, v in next, DropItemHolder:GetChildren() do
						if v.Name == "Item" then
							v:Destroy()
						end
					end

					CurrentSelectedText.Text = text
					CurrentSelectedText.TextTransparency = 0.250

					itemcount = 0
					framesize = 0
					DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
					DropdownFrameMain.Size = UDim2.new(0, 392, 0, 0)
					DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 0)
					Dropdown.Size = UDim2.new(0, 403, 0, 60)
					DropdownFrameMain.Visible = false
					DropdownFrameMainOutline.Visible = false
					ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
				end

				function DropFunc:Add(textadd)
					itemcount = itemcount + 1

					if itemcount == 1 then
						framesize = 29
					elseif itemcount == 2 then
						framesize = 58
					elseif itemcount >= 3 then
						framesize = 87
					end

					local Item = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")
					local ItemText = Instance.new("TextLabel")

					Item.Name = "Item"
					Item.Parent = DropItemHolder
					Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
					Item.Size = UDim2.new(0, 379, 0, 29)
					Item.AutoButtonColor = false
					Item.Font = Enum.Font.SourceSans
					Item.Text = ""
					Item.TextColor3 = Color3.fromRGB(0, 0, 0)
					Item.TextSize = 14.000
					Item.BackgroundTransparency = 1

					ItemCorner.CornerRadius = UDim.new(0, 4)
					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = Item

					ItemText.Name = "ItemText"
					ItemText.Parent = Item
					ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
					ItemText.BackgroundTransparency = 1.000
					ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
					ItemText.Size = UDim2.new(0, 192, 0, 29)
					ItemText.Font = Enum.Font.Gotham
					ItemText.TextColor3 = PresetColor
					ItemText.TextSize = 14.000
					ItemText.TextXAlignment = Enum.TextXAlignment.Left
					ItemText.Text = textadd

					Item.MouseEnter:Connect(function()
						ItemText.TextColor3 = Color3.fromRGB(255, 255, 255)
						Item.BackgroundTransparency = 0
					end)

					Item.MouseLeave:Connect(function()
						ItemText.TextColor3 = PresetColor
						Item.BackgroundTransparency = 1
					end)

					Item.MouseButton1Click:Connect(function()
						CurrentSelectedText.Text = textadd
						CurrentSelectedText.TextTransparency = 0.250
						pcall(callback, textadd)
						DropdownFrameMain.Visible = false
						DropdownFrameMainOutline.Visible = false
						TweenService:Create(
							Dropdown,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{Size = UDim2.new(0, 403, 0, 60)}
						):Play()
						TweenService:Create(
							ChannelHolder,
							TweenInfo.new(.5, Enum.EasingStyle.Quart),
							{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
						):Play()
						wait(.2)
						DropTog = not DropTog
					end)

					DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropItemHolderLayout.AbsoluteContentSize.Y)

					DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
					DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
					DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
				end
				return DropFunc
			end

			function ChannelContent:AddColorpicker(text, preset, callback)
				local OldToggleColor = Color3.fromRGB(0, 0, 0)
				local OldColor = Color3.fromRGB(0, 0, 0)
				local OldColorSelectionPosition = nil
				local OldHueSelectionPosition = nil
				local ColorH, ColorS, ColorV = 1, 1, 1
				local RainbowColorPicker = false
				local ColorPickerInput = nil
				local ColorInput = nil
				local HueInput = nil

				local Colorpicker = Instance.new("Frame")
				local ColorpickerTitle = Instance.new("TextLabel")
				local ColorpickerFrameOutline = Instance.new("Frame")
				local ColorpickerFrameOutlineCorner = Instance.new("UICorner")
				local ColorpickerFrame = Instance.new("Frame")
				local ColorpickerFrameCorner = Instance.new("UICorner")
				local Color = Instance.new("ImageLabel")
				local ColorCorner = Instance.new("UICorner")
				local ColorSelection = Instance.new("ImageLabel")
				local Hue = Instance.new("ImageLabel")
				local HueCorner = Instance.new("UICorner")
				local HueGradient = Instance.new("UIGradient")
				local HueSelection = Instance.new("ImageLabel")
				local PresetClr = Instance.new("Frame")
				local PresetClrCorner = Instance.new("UICorner")

				Colorpicker.Name = "Colorpicker"
				Colorpicker.Parent = ChannelHolder
				Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Colorpicker.BackgroundTransparency = 1.000
				Colorpicker.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
				Colorpicker.Size = UDim2.new(0, 403, 0, 175)

				ColorpickerTitle.Name = "ColorpickerTitle"
				ColorpickerTitle.Parent = Colorpicker
				ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorpickerTitle.BackgroundTransparency = 1.000
				ColorpickerTitle.Position = UDim2.new(0, 5, 0, 0)
				ColorpickerTitle.Size = UDim2.new(0, 200, 0, 29)
				ColorpickerTitle.Font = Enum.Font.Gotham
				ColorpickerTitle.Text = "Colorpicker"
				ColorpickerTitle.TextColor3 = PresetColor
				ColorpickerTitle.TextSize = 14.000
				ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left

				ColorpickerFrameOutline.Name = "ColorpickerFrameOutline"
				ColorpickerFrameOutline.Parent = ColorpickerTitle
				ColorpickerFrameOutline.BackgroundColor3 = PresetColor
				ColorpickerFrameOutline.Position = UDim2.new(-0.00100000005, 0, 0.991999984, 0)
				ColorpickerFrameOutline.Size = UDim2.new(0, 238, 0, 139)

				ColorpickerFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
				ColorpickerFrameOutlineCorner.Name = "ColorpickerFrameOutlineCorner"
				ColorpickerFrameOutlineCorner.Parent = ColorpickerFrameOutline

				ColorpickerFrame.Name = "ColorpickerFrame"
				ColorpickerFrame.Parent = ColorpickerTitle
				ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				ColorpickerFrame.ClipsDescendants = true
				ColorpickerFrame.Position = UDim2.new(0.00899999978, 0, 1.06638515, 0)
				ColorpickerFrame.Selectable = true
				ColorpickerFrame.Size = UDim2.new(0, 234, 0, 135)

				ColorpickerFrameCorner.CornerRadius = UDim.new(0, 3)
				ColorpickerFrameCorner.Name = "ColorpickerFrameCorner"
				ColorpickerFrameCorner.Parent = ColorpickerFrame

				Color.Name = "Color"
				Color.Parent = ColorpickerFrame
				Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
				Color.Position = UDim2.new(0, 10, 0, 10)
				Color.Size = UDim2.new(0, 154, 0, 118)
				Color.ZIndex = 10
				Color.Image = "rbxassetid://4155801252"

				ColorCorner.CornerRadius = UDim.new(0, 3)
				ColorCorner.Name = "ColorCorner"
				ColorCorner.Parent = Color

				ColorSelection.Name = "ColorSelection"
				ColorSelection.Parent = Color
				ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorSelection.BackgroundTransparency = 1.000
				ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
				ColorSelection.Size = UDim2.new(0, 18, 0, 18)
				ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
				ColorSelection.ScaleType = Enum.ScaleType.Fit

				Hue.Name = "Hue"
				Hue.Parent = ColorpickerFrame
				Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Hue.Position = UDim2.new(0, 171, 0, 10)
				Hue.Size = UDim2.new(0, 18, 0, 118)

				HueCorner.CornerRadius = UDim.new(0, 3)
				HueCorner.Name = "HueCorner"
				HueCorner.Parent = Hue

				HueGradient.Color = ColorSequence.new {ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
				HueGradient.Rotation = 270
				HueGradient.Name = "HueGradient"
				HueGradient.Parent = Hue

				HueSelection.Name = "HueSelection"
				HueSelection.Parent = Hue
				HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				HueSelection.BackgroundTransparency = 1.000
				HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
				HueSelection.Size = UDim2.new(0, 18, 0, 18)
				HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

				PresetClr.Name = "PresetClr"
				PresetClr.Parent = ColorpickerFrame
				PresetClr.BackgroundColor3 = preset
				PresetClr.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
				PresetClr.Size = UDim2.new(0, 25, 0, 25)

				PresetClrCorner.CornerRadius = UDim.new(0, 3)
				PresetClrCorner.Name = "PresetClrCorner"
				PresetClrCorner.Parent = PresetClr

				local function UpdateColorPicker(nope)
					PresetClr.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
					Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
					pcall(callback, PresetClr.BackgroundColor3)
				end

				ColorH = 1 - (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) / Hue.AbsoluteSize.Y)
				ColorS = (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) / Color.AbsoluteSize.X)
				ColorV = 1 - (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) / Color.AbsoluteSize.Y)

				PresetClr.BackgroundColor3 = preset
				Color.BackgroundColor3 = preset
				pcall(callback, PresetClr.BackgroundColor3)

				Color.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if ColorInput then
							ColorInput:Disconnect()
						end

						ColorInput = RunService.RenderStepped:Connect(function()
							local ColorX = (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) / Color.AbsoluteSize.X)
							local ColorY = (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) / Color.AbsoluteSize.Y)
							ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
							ColorS = ColorX
							ColorV = 1 - ColorY

							UpdateColorPicker(true)
						end)
					end
				end)

				Color.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if ColorInput then
							ColorInput:Disconnect()
						end
					end
				end)

				Hue.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if HueInput then
							HueInput:Disconnect()
						end

						HueInput = RunService.RenderStepped:Connect(function()
							local HueY = (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) / Hue.AbsoluteSize.Y)
							HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
							ColorH = 1 - HueY

							UpdateColorPicker(true)
						end)
					end
				end)

				Hue.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if HueInput then
							HueInput:Disconnect()
						end
					end
				end)

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end

			function ChannelContent:AddTextbox(text, placetext, disapper, callback)
				local Textbox = Instance.new("Frame")
				local TextboxTitle = Instance.new("TextLabel")
				local TextboxFrameOutline = Instance.new("Frame")
				local TextboxFrameOutlineCorner = Instance.new("UICorner")
				local TextboxFrame = Instance.new("Frame")
				local TextboxFrameCorner = Instance.new("UICorner")
				local TextBox = Instance.new("TextBox")

				Textbox.Name = "Textbox"
				Textbox.Parent = ChannelHolder
				Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Textbox.BackgroundTransparency = 1.000
				Textbox.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
				Textbox.Size = UDim2.new(0, 403, 0, 73)

				TextboxTitle.Name = "TextboxTitle"
				TextboxTitle.Parent = Textbox
				TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxTitle.BackgroundTransparency = 1.000
				TextboxTitle.Position = UDim2.new(0, 5, 0, 0)
				TextboxTitle.Size = UDim2.new(0, 200, 0, 29)
				TextboxTitle.Font = Enum.Font.Gotham
				TextboxTitle.Text = text
				TextboxTitle.TextColor3 = PresetColor
				TextboxTitle.TextSize = 14.000
				TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

				TextboxFrameOutline.Name = "TextboxFrameOutline"
				TextboxFrameOutline.Parent = TextboxTitle
				TextboxFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
				TextboxFrameOutline.BackgroundColor3 = PresetColor
				TextboxFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
				TextboxFrameOutline.Size = UDim2.new(0, 396, 0, 36)

				TextboxFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
				TextboxFrameOutlineCorner.Name = "TextboxFrameOutlineCorner"
				TextboxFrameOutlineCorner.Parent = TextboxFrameOutline

				TextboxFrame.Name = "TextboxFrame"
				TextboxFrame.Parent = TextboxTitle
				TextboxFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				TextboxFrame.ClipsDescendants = true
				TextboxFrame.Position = UDim2.new(0.00899999978, 0, 1.06638527, 0)
				TextboxFrame.Selectable = true
				TextboxFrame.Size = UDim2.new(0, 392, 0, 32)

				TextboxFrameCorner.CornerRadius = UDim.new(0, 3)
				TextboxFrameCorner.Name = "TextboxFrameCorner"
				TextboxFrameCorner.Parent = TextboxFrame

				TextBox.Parent = TextboxFrame
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.Position = UDim2.new(0.0178571437, 0, 0, 0)
				TextBox.Size = UDim2.new(0, 377, 0, 32)
				TextBox.Font = Enum.Font.Gotham
				TextBox.PlaceholderColor3 = PresetColor
				TextBox.PlaceholderText = placetext
				TextBox.Text = ""
				TextBox.TextColor3 = PresetColor
				TextBox.TextSize = 14.000
				TextBox.TextXAlignment = Enum.TextXAlignment.Left

				TextBox.Focused:Connect(function()
					TweenService:Create(
						TextboxFrameOutline,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
					):Play()
				end)

				TextBox.FocusLost:Connect(function(ep)
					TweenService:Create(
						TextboxFrameOutline,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = PresetColor}
					):Play()
					if ep then
						if #TextBox.Text > 0 then
							pcall(callback, TextBox.Text)
							if disapper then
								TextBox.Text = ""
							end
						end
					end
				end)

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end

			function ChannelContent:AddImage(image)
				local gamepng = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png"
				local img = gamepng or image
				local ImageFrame = Instance.new("Frame")
				local gameImageOutline = Instance.new("Frame")
				local gameImage = Instance.new("ImageLabel")

				ImageFrame.Name = "ImageFrame"
				ImageFrame.Parent = ChannelHolder
				ImageFrame.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
				ImageFrame.Size = UDim2.new(0, 401, 0, 105)
				ImageFrame.BackgroundTransparency = 1.000

				gameImage.Name = "gameImageOutline"
				gameImage.Parent = ImageFrame
				gameImage.Size = UDim2.new(0, 401 * 2/4, 0, 125 * 3/4)
				gameImage.Position = UDim2.new(0.125, 0, 0, 0)
				gameImage.BackgroundTransparency = 1.000
				gameImage.Image = img

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end

			function ChannelContent:AddImage(image)
				local imagePlayer = "www.roblox.com/avatar-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
				local gamepng = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png"
				local img = gamepng or image
				local ImageFrame = Instance.new("Frame")
				local gameImageOutline = Instance.new("Frame")
				local gameImage = Instance.new("ImageLabel")

				ImageFrame.Name = "ImageFrame"
				ImageFrame.Parent = ChannelHolder
				ImageFrame.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
				ImageFrame.Size = UDim2.new(0, 401, 0, 105)
				ImageFrame.BackgroundTransparency = 1.000

				gameImage.Name = "gameImageOutline"
				gameImage.Parent = ImageFrame
				gameImage.Size = UDim2.new(0, 401 * 2/4, 0, 125 * 3/4)
				gameImage.Position = UDim2.new(0.125, 0, 0, 0)
				gameImage.BackgroundTransparency = 1.000
				gameImage.Image = img

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end

			function ChannelContent:AddLabel(text)
				local Label = Instance.new("TextButton")
				local LabelTitle = Instance.new("TextLabel")
				local labelfunc = {}
				Label.Name = "Label"

				Label.Parent = ChannelHolder
				Label.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
				Label.Size = UDim2.new(0, 401, 0, 30)
				Label.AutoButtonColor = false
				Label.Font = Enum.Font.Gotham
				Label.Text = ""
				Label.TextColor3 = PresetColor
				Label.TextSize = 14.000

				LabelTitle.Name = "LabelTitle"
				LabelTitle.Parent = Label
				LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelTitle.BackgroundTransparency = 1.000
				LabelTitle.Position = UDim2.new(0, 5, 0, 0)
				LabelTitle.Size = UDim2.new(0, 200, 0, 30)
				LabelTitle.Font = Enum.Font.Gotham
				LabelTitle.Text = text
				LabelTitle.TextColor3 = PresetColor
				LabelTitle.TextSize = 14.000
				LabelTitle.TextXAlignment = Enum.TextXAlignment.Left

				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)

				function labelfunc:Refresh(tochange)
					Label.Text = tochange
				end
				return labelfunc
			end

			function ChannelContent:AddBind(text, presetbind, callback)
				local Key = presetbind.Name
				local Keybind = Instance.new("TextButton")
				local KeybindTitle = Instance.new("TextLabel")
				local KeybindText = Instance.new("TextLabel")

				Keybind.Name = "Keybind"
				Keybind.Parent = ChannelHolder
				Keybind.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				Keybind.BorderSizePixel = 0
				Keybind.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
				Keybind.Size = UDim2.new(0, 401, 0, 30)
				Keybind.AutoButtonColor = false
				Keybind.Font = Enum.Font.Gotham
				Keybind.Text = ""
				Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.TextSize = 14.000

				KeybindTitle.Name = "KeybindTitle"
				KeybindTitle.Parent = Keybind
				KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindTitle.BackgroundTransparency = 1.000
				KeybindTitle.Position = UDim2.new(0, 5, 0, 0)
				KeybindTitle.Size = UDim2.new(0, 200, 0, 30)
				KeybindTitle.Font = Enum.Font.Gotham
				KeybindTitle.Text = text
				KeybindTitle.TextColor3 = PresetColor
				KeybindTitle.TextSize = 14.000
				KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left

				KeybindText.Name = "KeybindText"
				KeybindText.Parent = Keybind
				KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindText.BackgroundTransparency = 1.000
				KeybindText.Position = UDim2.new(0, 316, 0, 0)
				KeybindText.Size = UDim2.new(0, 85, 0, 30)
				KeybindText.Font = Enum.Font.Gotham
				KeybindText.Text = presetbind.Name
				KeybindText.TextColor3 = PresetColor
				KeybindText.TextSize = 14.000
				KeybindText.TextXAlignment = Enum.TextXAlignment.Right

				Keybind.MouseButton1Click:Connect(function()
					KeybindText.Text = "..."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					if inputwait.KeyCode.Name ~= "Unknown" then
						KeybindText.Text = inputwait.KeyCode.Name
						Key = inputwait.KeyCode.Name
					end
				end)

				game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
					if not pressed then
						if current.KeyCode.Name == Key then
							pcall(callback)
						end
					end
				end)
				ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
			end
			return ChannelContent
		end
		return ChannelHold
	end
	return ServerHold
end


local GC = getconnections or get_signal_cons
if GC then
for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
if v["Disable"] then
    v["Disable"](v)
elseif v["Disconnect"] then
    v["Disconnect"](v)
end
end
else
print("Unlucky.")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end



-------------------------------------------------------------------------------------------------
--locales

local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Network = GameLibrary.Network
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local CurrencyOrder = {"Rainbow Coins", "Tech Coins", "Fantasy Coins", "Coins", "Diamonds",}

local IMightKillMyselfCauseOfThis = {
 --Misc
    ['VIP'] = {'VIP'};
    --Spawn
    ['Town'] = {'Town', 'Town FRONT'}; ['Forest'] = {'Forest', 'Forest FRONT'}; ['Beach'] = {'Beach', 'Beach FRONT'}; ['Mine'] = {'Mine', 'Mine FRONT'}; ['Winter'] = {'Winter', 'Winter FRONT'}; ['Glacier'] = {'Glacier', 'Glacier Lake'}; ['Desert'] = {'Desert', 'Desert FRONT'}; ['Volcano'] = {'Volcano', 'Volcano FRONT'};
    -- Fantasy init
    ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'}; ['Ancient Island'] = {'Ancient Island FRONT'}; ['Samurai'] = {'Samurai', 'Samurai FRONT'}; ['Candy'] = {'Candy'}; ['Haunted'] = {'Haunted', 'Haunted FRONT'}; ['Hell'] = {'Hell'}; ['Heaven'] = {'Heaven'};
    -- Tech
    ['Tech City'] = {'Tech City'; 'Tech City FRONT'}; ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'}; ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'}, ['Alien Forest'] = {"Alien Forest"; "Alien Forest FRONT"}, ['Alien Lab'] = {"Alien Forest"; "Alien Lab FRONT"}, ['Glitch'] = {"Glitch"; "Glitch FRONT"}; ['Hacker Portal'] = {"Hacker Portal", "Hacker Portal FRONT"};
    -- Axolotl
    ['Axolotl Ocean'] = {'Axolotl Ocean', 'Axolotl Ocean FRONT'}; ['Axolotl Deep Ocean'] = {'Axolotl Deep Ocean', 'Axolotl Deep Ocean FRONT'}; ['Axolotl Cave'] = {'Axolotl Cave', 'Axolotl Cave FRONT'};
    --Pixel
    ['Pixel Forest'] = {'Pixel Forest', 'Pixel Forest FRONT'}; ['Pixel Kyoto'] = {'Pixel Kyoto','Pixel Kyoto FRONT'}; ['Pixel Alps'] = {'Pixel Alps', 'Pixel Alps FRONT'}; ['Pixel Vault'] = {'Pixel Vault', 'Pixel Vault FRONT'};
    
}

local AreaListLoc = { --These match the IMightKillMyselfCuaseOfThis table
 'VIP';
 '=== Spawn World ===';
    'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
 '=== Fantasy World ===';   
    'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
 '=== Tech World ===';
    'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk'; 'Alien Lab'; 'Alien Forest'; 'Glitch'; "Hacker Portal";
 '=== Ocean World ===';
    'Axolotl Ocean'; 'Axolotl Deep Ocean'; 'Axolotl Cave';
 '=== Pixel World ===';
 'Pixel Forest'; 'Pixel Kyoto'; 'Pixel Alps'; 'Pixel Vault';
}



local Chests = {
'All';
-- Spawn
    "Magma Chest",
    -- Fantasy
    "Enchanted Chest", "Hell Chest", "Haunted Chest", "Angel Chest", "Grand Heaven Chest",
    -- Tech
    "Giant Tech Chest"; "Giant Steampunk Chest"; "Giant Alien Chest"; "Giant Hacker Chest";
    -- exolot
   "Giant Ocean Chest";
   --Pixel
   "Giant Pixel Chest";
}

local CratesMasteryList = {"Town Crate"; "Forest Crate"; "Beach Crate"; "Mine Crate"; "Desert Crate"; "Volcano Crate"; "Winter Crate"; "Glacier Crate"; "Enchanted Forest Crate"; "Ancient Island Crate"; "Samurai Island Crate"; "Candy Island Crate"; "Haunted Island Crate"; "Hell Island Crate"; "Heaven Island Crate"; "Tech City Crate"; "Dark Tech Crate"; "Alien Forest Crate"; "Axolotl Ocean Crate"; "Pixel Forest Crate"; "Pixel Alps Crate";}

local CoinsPilesMasteryList ={"Town Coins", "Town Large Coins", 'Town Tiny Coins', "Forest Coins", "Forest Large Coins", "Forest Tiny Coins", "Beach Coins", "Beach Large Coins", "Beach Tiny Coins", "Mine Coins", "Mine Large Coins", "Mine Tiny Coins", "Desert Coins", "Desert Large Coins", "Desert Tiny Coins", "Volcano Coins", "Volcano Large Coins", "Volcano Tiny Coins", "Winter Coins", "Winter Large Coins", "Winter Tiny Coins", "Glacier Coins", "Glacier Large Coins", "Glacier Tiny Coins", "Enchanted Forest Coins", "Enchanted Forest Large Coins", "Enchanted Forest Tiny Coins", "Ancient Island Coins", "Ancient Island Large Coins", "Ancient Island Tiny Coins", "Samurai Island Coins", "Samurai Island Large Coins", "Samurai Island Tiny Coins", "Candy Island Coins", "Candy Island Large Coins", "Candy Island Tiny Coins", "Haunted Island Coins", 'Haunted Island Large Coins', 'Haunted Island Tiny Coins', 'Heaven Island Coins', 'Heaven Island Large Coins', 'Heaven Island Tiny Coins', 'Tech City Coins', 'Tech City Large Coins', 'Tech City Tiny Coins', 'Dark Tech Coins', 'Dark Tech Large Coins', 'Dark Tech Tiny Coins', 'Steampunk Coins', 'Steampunk Large Coins', 'Steampunk Tiny Coins', 'Alien Lab Coins', 'Alien Lab Large Coins', 'Alien Lab Tiny Coins', 'Alien Forest Coins', 'Alien Forest Large Coins', 'Alien Forest Tiny Coins', 'Blue Glitched Coins', 'Blue Glitched Large Coins', 'Blue Glitched Tiny Coins', 'Pink Glitched Coins', 'Pink Glitched Large Coins', 'Pink Glitched Tiny Coins', 'Axolotl Ocean Coins', 'Axolotl Ocean Large Coins', 'Axolotl Ocean Tiny Coins', 'Pixel Forest Coins', 'Pixel Forest Large Coins', 'Pixel Forest Tiny Coins', 'Pixel Kyoto Coins', 'Pixel Kyoto Large Coins'}

local ChestsMasteryList = {'Town Chest', "Forest Small Chest", "Forest Chest", "Beach Chest", "Beach Small Chest", "Mine Small Chest", "Mine Chest", "Desert Chest", "Desert Small Chest", "Winter Chest", "Winter Small Chest", "Glacier Chest", "Glacier Small Chest", "Enchanted Forest Chest", "Enchanted Forest Small Chest", "Samurai Island Chest", "Samurai Island Small Chest", "Candy Island Chest", "Candy Island Small Chest", "Hell Island Chest", 'Hell Island Small Chest', "Heaven Island Chest", 'Heaven Island Small Chest', "Axolotl Deep Ocean Chest", "Axolotl Deep Ocean Small Chest", "Pixel Forest Chest", 'Pixel Forest Small Chest', "Pixel Alps Chest", 'Pixel Alps Small Chest'}

local PresentsMasteryList = {"Town Present", "Forest Present", "Beach Present", "Mine Present", "Desert Present", "Volcano Present", "Winter Present", "Glacier Present", "Enchanted Forest Present", "Ancient Island Present", "Samurai Island Present", "Candy Island Present", "Haunted Island Present", "Hell Island Present", "Heaven Island Present", "Tech City Present", "Dark Tech Present", "Alien Forest Present", "Blue Glitched Present", "Pink Glitched Present", "Axolotl Ocean Present", "Pixel Forest Present", "Pixel Kyoto Present", "Pixel Kyoto Large Present"}

local VaultsSafesMasteryList = {"Forest Safe", "Forest Vault", "Beach Safe", "Beach Vault", "Mine Safe", "Mine Vault", "Desert Safe", "Desert Vault", "Volcano Safe", "Volcano Vault", "Winter Safe", "Winter Vault", "Glacier Safe", "Glacier Vault", "Enchanted Forest Safe", "Enchanted Forest Vault", "Ancient Island Vault", 'Ancient Island Safe', "Candy Island Vault", 'Candy Island Safe', "Haunted Island Vault", 'Haunted Island Safe', "Heaven Island Vault", 'Heaven Island Safe', "Tech City Vault", 'Tech City Safe', "Steampunk Vault", 'Steampunk Safe', "Alien Lab Vault", 'Alien Lab Safe', "Blue Glitched Vault", 'Blue Glitched Safe', "Pink Glitched Vault", 'Pink Glitched Safe', "Axolotl Deep Ocean Vault", 'Axolotl Deep Ocean Safe', "Pixel Forest Vault", 'Pixel Forest Safe', "Pixel Vault Safe", "Pixel Vault Vault"}

local DiamondsMasteryList = {"Diamonds", "Tiny Diamonds"}

workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "buy egg")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "claim orbs")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "change pet target")    
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "get trade")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "add trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "remove trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "convert to dark matter")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem dark matter pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem rank rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem vip rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "toggle setting")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "activate boost")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use golden machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use rainbow machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "toggle setting")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "fuse pets")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "enchant pet")

-------------------------------
--Farms a coin. It seems to work. That's fun
function FarmCoin(CoinID, PetID)
game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
local IDToName = {}
local NameToID = {}
for i,v in pairs(Library.Directory.Pets ) do
    IDToName[i] = v.name
    NameToID[v.name] = i
end

function GetMyPets()
       local returntable = {}
       for i,v in pairs(GameLibrary.Save.Get().Pets) do
           if v.e then 
               table.insert(returntable, v.uid)
           end
       end
       return returntable
    end

function GetPets()
        local MyPets = {}
        for i,v in pairs(GameLibrary.Save.Get().Pets) do
            --if (not _G.AllowMythicals) or (_G.AllowMythicals and (PettoRarity[v.id] ~= 'Mythical' and PettoRarity[v.id] ~= 'Exclusive' and not string.find(IDToName[v.id]:lower(), "maskot"))) then
                local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
                local TempString = ThingyThingyTempTypeThing .. IDToName[v.id]
                if MyPets[TempString] then
                    table.insert(MyPets[TempString], v.uid)
                else
                    MyPets[TempString] = {}
                    table.insert(MyPets[TempString], v.uid)
                end
            --end
        end
        return MyPets
    end

function GetMyPets()
local returntable = {}
for i,v in pairs(GameLibrary.Save.Get().Pets) do
   if v.e then 
       table.insert(returntable, v.uid)
   end
end
return returntable
end

-------------------------------

--returns all coins within the given area (area must be a table of conent)    
--LISTED
function GetCoins(area, exclude)
exclude = exclude or {}
local Areas = (IMightKillMyselfCauseOfThis)
local returntable = {}
local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
for i,v in pairs(ListCoins) do
if _G.mapafunc == 'All' or table.find(Areas[_G.mapafunc], v.a) and not table.find(exclude ,v.a) then
    local shit = v
    shit["index"] = i
    table.insert(returntable, shit)
 end
end
return returntable
end

--Sexy man ( wYn#0001 ) made this for me. It works, not sure how, it does.
function GetCoinTable(area)
local CoinTable = GetCoins(area)
function getKeysSortedByValue(tbl, sortFunction)
local keys = {}
for key in pairs(tbl) do
    table.insert(keys, key)
end
table.sort(
    keys,
    function(a, b)
        return sortFunction(tbl[a].h, tbl[b].h)
    end
)
return keys
end
local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
local newCoinTable = {}

for i,v in pairs(sortedKeys) do
table.insert(newCoinTable, CoinTable[v])
end

return newCoinTable
end

local ScreenGui = Instance.new("ScreenGui")
    local Toggle = Instance.new("TextButton")
    
    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game.CoreGui
    
    Toggle.Name = "Toggle"
    Toggle.Parent = ScreenGui
    Toggle.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    Toggle.Size = UDim2.new(0, 50, 0, 50)
    Toggle.Font = Enum.Font.Code
    Toggle.Text = "⚡"
    Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
    Toggle.TextScaled = true
    Toggle.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)

-- Window --
    --------------------------------------------------------------------
   local win = DiscordLib:Window("Pet Simulator X")
   local RenUi = win:Server("Thunder Z" ,"")
 
-- Tab --
local Main = RenUi:Channel("Main" , "rbxassetid://6026568198")
local FirstPage = RenUi:Channel("Farming", "rbxassetid://9247749254")
local Mastery = RenUi:Channel("Mastery", "rbxassetid://9316370612")
local Collect = RenUi:Channel("Auto", "rbxassetid://9247881830")
local Egg = RenUi:Channel("Egg", "rbxassetid://9247822567")
local Pets = RenUi:Channel("Pet", "rbxassetid://9248110350")
local Misc = RenUi:Channel("Misc", "rbxassetid://9248167337")

   Main:AddLabel("== User Stats ==")
   Main:AddLine()
   Time = Main:AddLabel("Server Time :")
   function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Time:Refresh("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
end

spawn(function()
    while true do
        UpdateTime()
        wait()
    end
end)

   Client = Main:AddLabel("User :")
   function UpdateClient()
    local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Fps = workspace:GetRealPhysicsFPS()
    Client:Refresh("Fps : "..Fps.." Ping : "..Ping)
end

spawn(function()
    while true do wait(.1)
        UpdateClient()
    end
end)
   DiscordLib:Notification("Thunder Z" , "Discord Link Copied to Clipboard" , "Okay")
   Main:AddButton("Credit",function()
   DiscordLib:Notification("Thunder Z","===== Script Write BY ===== \nFikury#7140", "Okay")
   end)
   Main:AddButton("Discord",function()
   DiscordLib:Notification("Thunder Z", "Discord Link Copied to Clipboard" , "Okay")
   setclipboard("https://discord.gg/EAasK6nBMr")
   end)
   Main:AddLine()


Main:AddButton("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    Main:AddButton("Server Hop",function()
        Hop()
    end)
    
    Main:AddButton("Hop To Lower Player",function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end)
    Main:AddButton("Destroy Gui", function()
    game:GetService("CoreGui"):FindFirstChild("Ripple"):Destroy()
end)

FirstPage:AddLabel("== Farming Section ==")
FirstPage:AddLabel("      [ Dont Enable Nearest Farm if Automated Farm is ON ]")
FirstPage:AddLine()

local MethodList = {'Normal', 'Multi Target', 'Highest Value'}

_G.methodfunc = ""
FirstPage:AddDropdown("Select Method",MethodList, function(methodfunc)
if methodfunc then
_G.methodfunc = methodfunc
end
print("Selected method: ", methodfunc)
end)

------------
_G.mapafunc = ""
FirstPage:AddDropdown("Select location", AreaListLoc, function(mapafunc)
if mapafunc then
_G.mapafunc = mapafunc
end
print("Selected area: ", mapafunc)
end)

-------------------------------------------------------------------------------------------------

--Not sure exactly why I did this
local AreaWorldTable = {}
for _, v in pairs(game:GetService("ReplicatedStorage").Game.Coins:GetChildren()) do
for _, b in pairs(v:GetChildren()) do
table.insert(AreaWorldTable, b.Name)
end
table.insert(AreaWorldTable, v.Name)
end

--Returns all the currently alive chests in the game  the same was getcoins does
function AllChests()
local returntable = {}
local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
for i,v in pairs(ListCoins) do
local shit = v
shit.index = i
for aa,bb in pairs(AreaWorldTable) do
    if string.find(v.n, bb) or  string.find(v.n, "Giant") then
        local thing = string.gsub(v.n, bb.." ", "")
        if table.find(Chests, thing) then
            shit.n = thing
            table.insert(returntable, shit)
        end
    end
end
end
return returntable
end

-------------------------
FirstPage:AddToggle("Enable Automated Farm",false, function(farmingtogglefunc)
if farmingtogglefunc == true then
_G.FarmingToggle = true
elseif farmingtogglefunc == false or destroygui then
_G.FarmingToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
if _G.methodfunc == "" then
    DiscordLib:Notification("Thunder Z" , "Select Method First" , "Okay")
elseif _G.mapafunc == "" then
    DiscordLib:Notification("Thunder Z" , "Select Location First" , "Okay")
    else
while task.wait() and _G.FarmingToggle do
    local pethingy = GetMyPets()
    

     if _G.methodfunc == 'Normal' then
        
    local cointhiny = GetCoins(_G.mapafunc)
    for i = 1, #cointhiny do
         if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
            for _, bb in pairs(pethingy) do
                 if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                        wait(0.1)
                    spawn(function()
                        FarmCoin(cointhiny[i].index, bb)
                    end)
                end
            end
            repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or not _G.FarmingToggle or _G.methodfunc ~= 'Normal'
        end
    end

elseif _G.methodfunc == 'Highest Value' then
        local cointhiny = GetCoinTable(_G.mapafunc)
        for a,b in pairs(pethingy) do
        spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
    end
    repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0
    

    elseif _G.methodfunc == 'Multi Target' then
        local cointhiny = GetCoins(_G.mapafunc)
        for i = 1, #cointhiny do
        if i%#pethingy == #pethingy-1 then wait() end
        if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
            spawn(function()
                CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
            end)
        end
    end

    end
end
end

end)


FirstPage:AddToggle("Enable Nearest Farm", false ,function(nearesttogglefunc)
if nearesttogglefunc == true then
_G.NearestToggle = true
elseif nearesttogglefunc == false or destroygui then
_G.NearestToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
while task.wait() and _G.NearestToggle do
    local pethingy = GetMyPets()
    
local cointable = game:GetService("Workspace")["__THINGS"].Coins:GetChildren()
        table.sort(cointable, function(i, v)
            return (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.POS.Position).magnitude < (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.POS.Position).magnitude
        end)
        local NearestOne = cointable[1]
        if NearestOne ~= nil then
            for a,b in pairs(pethingy) do
                coroutine.wrap(function()
                    if NearestOne ~= nil then
                        FarmCoin(NearestOne.Name, b)
                    end
                end)()
            end
            repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(NearestOne.Name) or #game:GetService("Workspace")["__THINGS"].Coins[NearestOne.Name].Pets:GetChildren() == 0
        else
            task.wait(1.5)
    end        
end
end)

FirstPage:AddLine()  
FirstPage:AddLabel("                  == Farm Chest Section ==")
FirstPage:AddLine()
local ItemToFarmList = {'Magma Chest', 'Enchanted Chest', 'Hell Chest', 'Haunted Chest', 'Angel Chest', 'Grand Heaven Chest','Giant Tech Chest', 'Giant Steampunk Chest', 'Giant Alien Chest', 'Giant Hacker Chest', 'Giant Ocean Chest', 'Giant Pixel Chest' }

_G.itemtofarmfunc = ""
FirstPage:AddDropdown("Select Chest", ItemToFarmList, function(itemtofarmfunc)
if itemtofarmfunc then
_G.itemtofarmfunc = itemtofarmfunc
end
print("Selected item: ", itemtofarmfunc)
end)

FirstPage:AddToggle("Enable Chest Farm" , false ,function(chest)
if chest == true then
_G.ChestToggle = true
elseif chest == false or destroygui then
_G.ChestToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
if _G.itemtofarmfunc == "" then
DiscordLib:Notification("Thunder Z" , "Select Method First" , "Okay")
else
while task.wait() and _G.ChestToggle do
    local pethingy = GetMyPets()

for i,v in pairs(AllChests()) do
            if (v.n == _G.itemtofarmfunc)then
                local starttick = tick()
                for a, b in pairs(pethingy) do
                    coroutine.wrap(function()
                        FarmCoin(v.index, b)
                    end)()
                end
                repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Chest'
                warn(v.n .. " has been broken in", tick()-starttick)
            end
end
end
end
end)

Mastery:AddLabel("== Mastery Section ==")
Mastery:AddLine()
local MasteryIndex = {"Coins Piles Mastery", "Crates Mastery", "Chests Mastery", "Presents Mastery", "Vaults & Safes Mastery", "Diamonds Mastery"}
_G.MasteryList = ""
Mastery:AddDropdown("Mastery List", MasteryIndex, function(selectmasteryfunc)
    _G.MasteryList = selectmasteryfunc
end)

Mastery:AddToggle("Enable Farm Mastery", false ,function(masteryfunc)
    if _G.MasteryList == "" then
    Blacklib:Notification("Thunder Z" , "Select Mastery List First" , "Okay")
    else
    _G.Mastery = masteryfunc
   while task.wait() and _G.Mastery do
        if _G.MasteryList == "Crates Mastery" then
            local CurrentFarmingPets = {}
            local pethingy = GetMyPets()
            for i,v in pairs(CratesMastery()) do
                if v.index%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[v.index%#pethingy+1]] or CurrentFarmingPets[pethingy[v.index%#pethingy+1]] == nil then
                    if game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) then
                        pcall(function()
                            CurrentFarmingPets[pethingy[v.index%#pethingy+1]] = 'Farming'
                            FarmCoin(v.index, pethingy[v.index%#pethingy+1])
                        end)
                    end
                end
            end
        elseif _G.MasteryList == "Coins Piles Mastery" then
            local CurrentFarmingPets = {}
            local pethingy = GetMyPets()
            for i,v in pairs(CoinsPilesMastery()) do
                if v.index%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[v.index%#pethingy+1]] or CurrentFarmingPets[pethingy[v.index%#pethingy+1]] == nil then
                    if game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) then
                        pcall(function()
                            CurrentFarmingPets[pethingy[v.index%#pethingy+1]] = 'Farming'
                            FarmCoin(v.index, pethingy[v.index%#pethingy+1])
                        end)
                    end
                end
            end
        elseif _G.MasteryList == "Chests Mastery" then
            local CurrentFarmingPets = {}
            local pethingy = GetMyPets()
            for i,v in pairs(ChestsMastery()) do
                if v.index%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[v.index%#pethingy+1]] or CurrentFarmingPets[pethingy[v.index%#pethingy+1]] == nil then
                    if game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) then
                        pcall(function()
                            CurrentFarmingPets[pethingy[v.index%#pethingy+1]] = 'Farming'
                            FarmCoin(v.index, pethingy[v.index%#pethingy+1])
                        end)
                    end
                end
            end
        elseif _G.MasteryList == "Presents Mastery" then
            local CurrentFarmingPets = {}
            local pethingy = GetMyPets()
            for i,v in pairs(PresentsMastery()) do
                if v.index%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[v.index%#pethingy+1]] or CurrentFarmingPets[pethingy[v.index%#pethingy+1]] == nil then
                    if game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) then
                        pcall(function()
                            CurrentFarmingPets[pethingy[v.index%#pethingy+1]] = 'Farming'
                            FarmCoin(v.index, pethingy[v.index%#pethingy+1])
                        end)
                    end
                end
            end
        elseif _G.MasteryList == "Vaults & Safes Mastery" then
            local CurrentFarmingPets = {}
            local pethingy = GetMyPets()
            for i,v in pairs(VaultsSafesMastery()) do
                if v.index%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[v.index%#pethingy+1]] or CurrentFarmingPets[pethingy[v.index%#pethingy+1]] == nil then
                    if game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) then
                        pcall(function()
                            CurrentFarmingPets[pethingy[v.index%#pethingy+1]] = 'Farming'
                            FarmCoin(v.index, pethingy[v.index%#pethingy+1])
                        end)
                    end
                end
            end
        elseif _G.MasteryList == "Diamonds Mastery" then
            local CurrentFarmingPets = {}
            local pethingy = GetMyPets()
            for i,v in pairs(DiamondsMastery()) do
                if v.index%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[v.index%#pethingy+1]] or CurrentFarmingPets[pethingy[v.index%#pethingy+1]] == nil then
                    if game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) then
                        pcall(function()
                            CurrentFarmingPets[pethingy[v.index%#pethingy+1]] = 'Farming'
                            FarmCoin(v.index, pethingy[v.index%#pethingy+1])
                        end)
                    end
                end
            end
        end
   end
end
end)

function CratesMastery()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(CratesMasteryList) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(CratesMasteryList, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

function CoinsPilesMastery()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(CoinsPilesMasteryList) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(CoinsPilesMasteryList, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

function ChestsMastery()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(ChestsMasteryList) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(ChestsMasteryList, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

function PresentsMastery()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(PresentsMasteryList) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(PresentsMasteryList, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

function VaultsSafesMastery()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(VaultsSafesMasteryList) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(VaultsSafesMasteryList, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

function DiamondsMastery()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(DiamondsMasteryList) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(DiamondsMasteryList, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end
-------------------------------
Collect:AddLabel("== Collect Section ==")
Collect:AddLine()
Collect:AddToggle("Auto Collect Lootbag",false, function(lootbag)
if lootbag == true then
_G.Toggle = true -- turns it on or off, true means the scripts on false means its off u can change it if u want
elseif lootbag == false then
_G.Toggle = false
end

while _G.Toggle do wait()
for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
v.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end
end
end)

---------------
Collect:AddToggle("Auto Collect Gems / Coins",false, function(autocollecting)

if autocollecting == true then
_G.CollectOrbs = true
elseif autocollecting == false or destroygui then
_G.CollectOrbs = false
end

function CollectOrbs()
local ohTable1 = {[1] = {}}
for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
ohTable1[1][i] = v.Name
end
game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
end

while wait() and _G.CollectOrbs do
pcall(function() CollectOrbs() end)
end
end)

---------------
Collect:AddToggle("Auto Claim Gifts",false, function(gift)
if gift == true then
_G.Gift = true
elseif gift == false then
_G.Gift = false
end
while task.wait(0.1) and _G.Gift do
local gift = {
[1] = {
   
[1] = 1
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 2
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 3
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 4
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 5
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 6
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 7
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 8
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 9
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 10
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 11
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 12
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
end
print("Reedem")
end)

---------------
Collect:AddToggle("Auto collect rewards [Both VIP and Rank.]",false, function(autorewards)

if autorewards == true then
_G.AutoRewards1 = true
elseif autorewards == false then
_G.AutoRewards1 = false
end

while task.wait() and _G.AutoRewards1 do
workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})			
end
end)

Collect:AddLine()
Collect:AddLabel("== Auto Buy Merchant Section ==")
Collect:AddLine()
Collect:AddToggle("Auto Buy Merchant [ Tier 1 ]" , false,function(merchant1)
if merchant1 == true then
_G.BuyMerchant1 = true
elseif merchant1 == false then
_G.BuyMerchant1 = false
end

while task.wait(0.1) and _G.BuyMerchant1 do
local merchant1 = {
    [1] = {
        [1] = 1
    }
}
workspace.__THINGS.__REMOTES:FindFirstChild("buy merchant item"):InvokeServer(unpack(merchant1))
workspace.__THINGS.__REMOTES:FindFirstChild("get merchant items"):InvokeServer(unpack(merchant1))
end

end)

Collect:AddToggle("Auto Buy Merchant [ Tier 2 ]" ,false, function(merchant2)
if merchant2 == true then
_G.BuyMerchant2 = true
elseif merchant2 == false then
_G.BuyMerchant2 = false
end

while task.wait(0.1) and _G.BuyMerchant2 do
local merchant2 = {
    [1] = {
        [1] = 2
    }
}
workspace.__THINGS.__REMOTES:FindFirstChild("buy merchant item"):InvokeServer(unpack(merchant2))
workspace.__THINGS.__REMOTES:FindFirstChild("get merchant items"):InvokeServer(unpack(merchant2))
end

end)

Collect:AddToggle("Auto Buy Merchant [ Tier 3 ]" ,false, function(merchant3)
if merchant3 == true then
_G.BuyMerchant3 = true
elseif merchant3 == false then
_G.BuyMerchant3 = false
end

while task.wait(0.1) and _G.BuyMerchant3 do
local merchant3 = {
    [1] = {
        [1] = 3
    }
}
workspace.__THINGS.__REMOTES:FindFirstChild("buy merchant item"):InvokeServer(unpack(merchant3))
workspace.__THINGS.__REMOTES:FindFirstChild("get merchant items"):InvokeServer(unpack(merchant3))
end

end)

Collect:AddLine()
Collect:AddLabel("                  == Auto Potion Section ==")
Collect:AddLine()

-------------------------------------------------------------------------------------------------
Collect:AddToggle("Auto use triple damage", false,function(autotripledamage)

if autotripledamage == true then
_G.TripleDamage1 = true
elseif autotripledamage == false or destroygui then
_G.TripleDamage1 = false
end

if _G.TripleDamage1 then 
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") then
workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Damage"})
print("Triple damage boost checked")
end
end
end)

---------------

Collect:AddToggle("Auto use triple coins",false, function(autotriplecoins)

if autotriplecoins == true then
_G.TripleCoins1 = true
elseif autotriplecoins == false or destroygui then
_G.TripleCoins1 = false
end

if _G.TripleCoins1 then
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") then
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Coins"})
print("Triple coin boost checked")
end
end
end)


---------------

Collect:AddToggle("Auto use Super Luck",false, function(autosuperluck)

if autosuperluck == true then
_G.SuperLucky1 = true
elseif autosuperluck == false or destroygui then
_G.SuperLucky1 = false
end

if _G.SuperLucky1 then
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky") then
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Super Lucky"})
print("Super luck boost checked")
end
end
end)
---------------

Collect:AddToggle("Auto use Ultra Lucky",false, function(autoultraluck)

if autoultraluck == true then
_G.ULTRALucky1 = true
elseif autoultraluck == false or destroygui then
_G.ULTRALucky1 = false
end

if _G.ULTRALucky1 then
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky") then
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Ultra Lucky"})
print("Super luck boost checked")
end
end
end)

-------------------------------------------------------------------------------------------------

local pathToScript = game.Players.LocalPlayer.PlayerScripts.Scripts.Game['Open Eggs']
local oldFunc = getsenv(pathToScript).OpenEgg

local MyEggData = {}
local littleuselesstable = {}
local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
for i,v in pairs(GameLibrary.Directory.Eggs) do
local temptable = {}
temptable['Name'] = i
temptable['Currency'] = v.currency
temptable['Price'] = v.cost
table.insert(MyEggData, temptable)
end

table.sort(MyEggData, function(a, b)
return a.Price < b.Price
end)

local EggData = {}
for i,v in pairs(CurrencyOrder) do
table.insert(EggData, " ")
table.insert(EggData, "-- "..v.." --")
for a,b in pairs(MyEggData) do
if b.Currency == v then
    table.insert(EggData, b.Name)
end
end
end

-------------------------
Egg:AddLabel("== Egg Section ==")
Egg:AddLine()

Egg:AddDropdown("Select egg", EggData, function(eggor)
if eggor then
_G.Egg = eggor
end
--print("Text: ", eggor)
--print("_G.Egg: ", _G.Egg)
end)

Egg:AddToggle("Open Eggs", false,function(dropegg)
shared.toggle3drop = dropegg
end)
local openeegg = eggor
game:GetService("RunService").RenderStepped:connect(function()
if shared.toggle3drop then  

local ohTable1 = {
    [1] = _G.Egg,
    [2] =_G.TripleEgg
    
}
workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(ohTable1)
wait(0.1)
end
end)

-------------------------
Egg:AddToggle("Remove Egg Animation", false,function(delanimation)
if delanimation == true then 
getsenv(pathToScript).OpenEgg = function() return end 
else
getsenv(pathToScript).OpenEgg = oldFunc
end 
end)
-------------------------
Egg:AddToggle("Use Triple Eggs (Gamepass)",false, function(triplegamepass)

if triplegamepass == true then
_G.TripleEgg = true
elseif triplegamepass == false or destroygui then
_G.TripleEgg = false
end
end)

_G.TripleEgg = false
-------------------------

--Pets

local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local IDToName = {}
local NameToID = {}
local PettoRarity = {}
local RarityTable = {}
local PetNamesTable = {}
local PetNamesTable = {}

for i,v in pairs(GameLibrary.Directory.Pets) do
    IDToName[i] = v.name
    NameToID[v.name] = i
    PettoRarity[i] = v.rarity
    if not table.find(RarityTable, v.rarity) then
        table.insert(RarityTable, v.rarity)
    end
    table.insert(PetNamesTable, v.name)
end

function GetPets()
    local MyPets = {}
    for i,v in pairs(Library.Save.Get().Pets) do
        local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
        local TempString = ThingyThingyTempTypeThing .. IDToName[v.id]
        if MyPets[TempString] then
            table.insert(MyPets[TempString], v.uid)
        else
            MyPets[TempString] = {}
            table.insert(MyPets[TempString], v.uid)
        end
    end
    return MyPets
end

-- Enchant
local EnchantsList = {
    'Magnet',
    'Royalty',
    'Glittering',
    'Tech Coins',
    'Fantasy Coins',
    'Rainbow Coins',
    'Coins',
    'Teamwork',
    'Diamonds',
    'Strength',
    'Chests',
    'Presents',
    'Agility',
    'Charm'
}

local EnchantLevel = {1, 2, 3, 4, 5}

Pets:AddLabel("== Pets Section ==")
Pets:AddLabel("                      == Auto Enchant ==")
Pets:AddLabel("Enchant Your Equipped Pets")
Pets:AddLine()
Pets:AddDropdown("Enchant Type", EnchantsList, function(enchantlistfunc)
    _G.EnchantType = enchantlistfunc
end)

Pets:AddDropdown("Enchant Level", EnchantLevel, function(enchantlevelfunc)
    _G.Enchantlevel = enchantlevelfunc
end)

local PettoRarity = {}
local a = require(game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Pets["Grab All Pets"])
for i, v in pairs(a) do
    PettoRarity[i] = v.rarity
end
function GetPetTable(PetUID)
    for i, v in pairs(Library.Save.Get().Pets) do
        if v.uid == PetUID then
            return v
        end
    end
end
Pets:AddToggle("Enable Auto Enchant", false, function(enchantfunc)
    _G.AutoEnchant = enchantfunc
    local Wanted = {
        [_G.EnchantType] = _G.Enchantlevel or 1;
    }
    while wait() and _G.AutoEnchant do
        for i, v in pairs(Library.Save.Get().Pets) do
            if v.e and PettoRarity[v.id] ~= 'Mythical' and _G.AutoEnchant then
                local haspower = false
                repeat
                    if GetPetTable(v.uid).powers then
                        for i2, v2 in pairs(GetPetTable(v.uid).powers) do
                            warn(v2[1], v2[2])
                            print(Wanted[v2[1]])
                            if Wanted[v2[1]] ~= nil and not haspower then
                                if Wanted[v2[1]] <= v2[2] then
                                    haspower = true
                                    warn("Pet", v.uid, "has", v2[1], v2[2])
                                end
                            end
                        end
                        if not haspower then
                            print("Yea we kinda need new enchantments on", v.uid)
                            workspace.__THINGS.__REMOTES["enchant pet"]:InvokeServer({[1] = v.uid})
                        end
                    else
                        warn("taking", v.uid,'\'s enchanting virginity lol')
                        workspace.__THINGS.__REMOTES["enchant pet"]:InvokeServer({[1] = v.uid})
                    end
                until haspower == true or Library.Save.Get().Diamonds < 10000 or _G.AutoEnchant == false
            end
        end
    end
end)

--fuse
--local PetsList = {'Vampire Bat', 'Werewolf'}
Pets:AddLine()
Pets:AddLabel("                       == Auto Fuse ==")
Pets:AddLine()
Pets:AddTextbox("Enter Pets Name", "Type Here",true, function(fusenamefunc)
    _G.SelectedsPetss = fusenamefunc
end)

TypeListFuse = {"Normal"; "Gold"; "Rainbow"; "Dark Matter";}
Pets:AddDropdown("Pet Rarity Type of", TypeListFuse, function(fusetypefunc)
    _G.TypePetsss = fusetypefunc
end)

Countlist = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
Pets:AddDropdown('Amount Pets', Countlist, function(fuseamount)
    _G.AmountedPetss = fuseamount
end)

Pets:AddToggle("Auto Fuse",false, function(fusefunc)
    _G.Autofuse = fusefunc
    while task.wait() and _G.Autofuse do
        petId = -1
        for i,v in pairs(Library.Directory.Pets) do
            if (string.lower(v["name"]) == string.lower(_G.SelectedsPetss)) then
                petId = i
            end
        end
        if (petId == -1) then
            spawn(function()
                Blacklib:Notification("Auto Fuse", "Please check again the name of pets.")
            end)
            _G.Autofuse = false
        end
        local Pets = Library.Save.Get().Pets
        local selectedPets = {}
        for i,v in ipairs(Pets) do
            local petRarityTable = Library.PetCmds.Get(v.uid)
            if not (#selectedPets == _G.AmountedPetss) then
                if (v.id == (tostring(petId))) then
                    if (_G.TypePetsss == "Normal") and not (petRarityTable.r) and not (petRarityTable.g) and not (petRarityTable.dm) then
                        table.insert(selectedPets, v.uid)
                    end
                    if (_G.TypePetsss == "Gold") and (petRarityTable.g) then
                        table.insert(selectedPets, v.uid)
                    end
                    if (_G.TypePetsss == "Rainbow") and (petRarityTable.r) then
                        table.insert(selectedPets, v.uid)
                    end
                    if (_G.TypePetsss == "Dark Matter") and (petRarityTable.dm) then
                        table.insert(selectedPets, v.uid)
                    end
                end
            end
        end
        if (#selectedPets == _G.AmountedPetss) then
            workspace.__THINGS.__REMOTES["fuse pets"]:InvokeServer({selectedPets})
        end
    end
end)

---------------------------------------

local PetCount = {1, 2, 3, 4, 5, 6}
--auto gold/rainbow
Pets:AddLine()
Pets:AddLabel("== Auto Golden And Rainbow ==")
Pets:AddLine()
Pets:AddDropdown("Amount Pets", PetCount, function(countcombinefunc)
    if countcombinefunc then
        _G.CountCombineFunc1 = countcombinefunc
    end
    --print("Selected Combine Count: ", _G.CountCombineFunc1)
end)
------------------------------------------

Pets:AddToggle("Auto Golden", false, function(togglegoldfunc)

if togglegoldfunc == true then
_G.ToggleGold = true
elseif togglegoldfunc == false then
_G.ToggleGold = false
end
end)


Pets:AddToggle("Auto Rainbow", false, function(toggleraibowfunc)

if toggleraibowfunc == true then
_G.ToggleRainbow = true
elseif toggleraibowfunc == false then
_G.ToggleRainbow = false
end
end)

---------------------------------------

--pets2:addToggle("Allow Mythical", false, function(allowmythicalfunc)

--_G.AllowMythicals = false

--if allowmythicalfunc == true then
--    _G.AllowMythicals = true
--elseif allowmythicalfunc == false then
--    _G.AllowMythicals = false
--end
--end)

---------------------------------------

Pets:AddToggle("Enable Automated Golden or Rainbow", false, function(autocombinefunc)

if autocombinefunc == true then
_G.AutoCom = true
elseif autocombinefunc == false then
_G.AutoCom = false
end

while wait() and _G.AutoCom do
for i, v in pairs(GetPets()) do
if #v >= _G.CountCombineFunc1 and _G.AutoCom then
    if string.find(i, "Normal") and _G.AutoCom and _G.ToggleGold then
        local Args = {}
        for eeeee = 1, _G.CountCombineFunc1 do
            Args[#Args+1] = v[#Args+1]
        end
        Library.Network.Invoke("use golden machine", Args)

    elseif string.find(i, "Gold") and _G.AutoCom and _G.ToggleRainbow then
        local Args = {}
        for eeeee = 1, _G.CountCombineFunc1 do
            Args[#Args+1] = v[#Args+1]
        end
        Library.Network.Invoke("use rainbow machine", Args)
    end
end
end
end
end)

--Dark matter
Pets:AddLine()
Pets:AddLabel("                      == Auto Dark Matter ==")
Pets:AddLine()

Pets:AddTextbox("Enter Pets Name", "Type Here",true, function(dmnamefunc)
    _G.NameOfPet = dmnamefunc
end)

Pets:AddDropdown("Amount Pets", PetCount, function(dmvalfunc)
    _G.CountDarkMatterFunc1 = dmvalfunc
end)

Pets:AddToggle("Enable Automated Dark Matter",false, function(dmfunc)
    _G.AutoMakeDarkMatter = dmfunc
    while task.wait() and _G.AutoMakeDarkMatter do
        local Save = Library.Save.Get()
        local Slots = Save.DarkMatterSlots
        local Queued = 0
        for a, b in pairs(Save.DarkMatterQueue) do
            Queued = Queued + 1 
        end
        local Slots = Slots - Queued
        for count = 1, Slots do
            if Slots - count >= 0 then
                local PetList = {}
                for i,v in pairs(Library.Save.Get().Pets) do
                    if #PetList < _G.CountDarkMatterFunc1 and v.r and IDToName[v.id] == _G.NameOfPet then
                        table.insert(PetList, v.uid)
                    end
                end
                if #PetList >= _G.CountDarkMatterFunc1 then
                    local tablething = {[1] = {}}
                    for eeek = 1, _G.CountDarkMatterFunc1 do
                        tablething[1][eeek] = PetList[eeek]
                    end
                    workspace.__THINGS.__REMOTES["convert to dark matter"]:InvokeServer(tablething)
                end
            end 
        end
        task.wait()
    end
end)

Pets:AddToggle("Auto Claim Dark Matters",false, function(dmclaimfunc)
    _G.AutoClaimDarkMatter = dmclaimfunc
    while task.wait() and _G.AutoClaimDarkMatter do
        for i,v in pairs(Library.Save.Get().DarkMatterQueue) do
            if math.floor(v.readyTime - os.time()) < 0 then
                workspace.__THINGS.__REMOTES["redeem dark matter pet"]:InvokeServer({[1] = i})
            end
            task.wait()
        end
    end
end)

Pets:AddButton("Remaining Time Check", function()
local PetList = {}
for i,v in pairs(GameLibrary.Directory.Pets) do
PetList[i] = v.name
end

local returnstring = ""
for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
    local timeleft = 'Ready.'
    if math.floor(v.readyTime - os.time()) > 0 then
        timeleft = SecondsToClock(math.floor(v.readyTime - os.time()))
    end
    local stringthing = PetList[v.petId] .." going to be ready in: ".. timeleft
    returnstring = returnstring .. stringthing .. "\n"
end
require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New(returnstring)
end)


Misc:AddLabel("== Misc Section ==")
Misc:AddLabel("                      == Player Section ==")
Misc:AddSlider("Walkspeed", 16, 500, 20, function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
print(Value)
end)
Misc:AddSlider("JumpPower", 35, 500 ,40 , function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
print(Value)
end)

local InfiniteJumpEnabled;
Misc:AddToggle("Infinite Jump",false, function(State)
InfiniteJumpEnabled = State
end)

local Player = game:GetService("Players").LocalPlayer
game:GetService("UserInputService").JumpRequest:Connect(function()
if InfiniteJumpEnabled then
 Player.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
end
end)
------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------
Misc:AddLine()
Misc:AddLabel("                      == Remote GUI ==")
Misc:AddLine()

Misc:AddButton("Open Merchant", function()
game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = true
end)
Misc:AddButton("Open Bank", function()
game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = true
end)
Misc:AddButton("Open Golden Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = true
end)
Misc:AddButton("Open Rainbow Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = true
end)
Misc:AddButton("Open Dark Matter Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = true
end)
Misc:AddButton("Open Fuse Pets Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = true
end)
Misc:AddButton("Open Teleport", function()
game:GetService("Players").LocalPlayer.PlayerGui.Teleport.Enabled = true
end)

Misc:AddLine()
Misc:AddLabel("== Lag Reducer ==")
Misc:AddLine()
Misc:AddButton("FPS Booster", "Lag reduction", function()
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
if game:GetService("Workspace"):FindFirstChild("__DEBRIS") then
game:GetService("Workspace")["__DEBRIS"]:Destroy()
end
print("Clicked")
end)
Misc:AddButton("Turn OFF Texture in Game \n[Good for Potato Device or AFKing.]", function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
print("Lag reducer activated")
end)

Misc:AddLine()
Misc:AddLabel("                      == Visual Section ==")
Misc:AddLine()

Misc:AddButton("Give gamepasses [Some are visual.]", function(gamepasses)
shared.toggle3gamepasses = gamepasses
game:GetService("RunService").RenderStepped:connect(function()
local main = debug.getupvalues(require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get)[2][game.Players.LocalPlayer].save.Gamepasses
table.insert(main,18674296)
table.insert(main,18674298)
table.insert(main,18674321)
table.insert(main,21176989)
table.insert(main,21583760)
table.insert(main,21641016)
table.insert(main,22596039)
table.insert(main,18674307)
end)
end)

Misc:AddButton("Unlock Hoverboard")
local tbl = require(game.ReplicatedStorage.Framework.Modules.Client["4 | Save"]).Get()
tbl.Hoverboards = {}
for i,v in pairs(game.ReplicatedStorage.Game.Hoverboards:GetChildren())do
table.insert(tbl.Hoverboards, v.Name)
end
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Equip = function(board)
tbl.EquippedHoverboard = board
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
end
