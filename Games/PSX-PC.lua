-- BL∆CK_TRAP_V1.3 />
if game:GetService("CoreGui"):FindFirstChild("BlackTrap") then
    game:GetService("CoreGui")["BlackTrap"]:Destroy()
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

-- BLACKTRAP V1.3 FIXED_BUILD --
-- REALEASE DATE ON 22/03/2022 --
-- MADE By WANZ --
-- DO NOT COPYRIGHT --
-- (WINDOWS AND MOBILE VERSION) --

-- service --
local Blacklib = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- init --
local LocalizationService = game:GetService("LocalizationService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local NameID = LocalPlayer.Name

-- themes --
_G.WindowBackgroundColor = Color3.fromRGB(12,12,12)
_G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)
_G.TabWindowColor = Color3.fromRGB(30, 30, 30)
_G.ContainerColor = Color3.fromRGB(30, 30, 30)
_G.TitleTextColor = Color3.fromRGB(150, 150, 150)
_G.ImageColor = Color3.fromRGB(150, 150, 150)
_G.LineThemeColor = Color3.fromRGB(150, 150, 150)
_G.TabTextColor = Color3.fromRGB(150, 150, 150)
_G.TabImageColor = Color3.fromRGB(150, 150, 150)
_G.TabThemeColor = Color3.fromRGB(250, 0, 0)
_G.SectionColor = Color3.fromRGB(150, 150, 150)
_G.SectionImageColor = Color3.fromRGB(150, 150, 150)
_G.SectionTextColor = Color3.fromRGB(150, 150, 150)
_G.SectionOn = Color3.fromRGB(0, 250, 0)

-- Windows --
function Blacklib:Window()
    local osfunc = {}
    local titlefunc = {}
    local pingfunc = {}
    local timefunc = {}
    local Points = Instance.new("Frame")
    local BlackTrap = Instance.new("ScreenGui")
    local PlayTime = Instance.new("TextLabel")
    local PlayTimeCorner = Instance.new("UICorner")
    local WindowFrame = Instance.new("Frame")
    local WindowCorner = Instance.new("UICorner")
    local WindowStroke = Instance.new("UIStroke")
    local BlackImage = Instance.new("ImageLabel")
    local Space = Instance.new("TextLabel")
    local Space2 = Instance.new("TextLabel")
    local BlackTitle = Instance.new("TextLabel")
    local ServerTime = Instance.new("TextLabel")
    local Pinged = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")
    
    -- Propertiers --
    BlackTrap.Name = "BlackTrap"
    BlackTrap.Parent = game.CoreGui
    BlackTrap.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Points.Name = "Points"
    Points.Parent = BlackTrap
    Points.BackgroundColor3 = _G.WindowBackgroundColor
    Points.BackgroundTransparency = 1.000
    Points.Size = UDim2.new(0, 800, 0, 600)
    Points.Position = UDim2.new(0, 0, 0, 0)
    
    WindowFrame.Name = "WindowFrame"
    WindowFrame.Parent = Points
    WindowFrame.BackgroundColor3 = _G.WindowBackgroundColor
    WindowFrame.Position = UDim2.new(0, 220, 0, 30)
    WindowFrame.BorderSizePixel = 0
    WindowFrame.Size = UDim2.new(0, 550, 0, 0)
    WindowFrame.ClipsDescendants = true
    
    WindowFrame:TweenSize(UDim2.new(0, 550, 0, 350), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, .6, true)
    
    WindowCorner.Name = "WindowCorner"
    WindowCorner.Parent = WindowFrame
    WindowCorner.CornerRadius = UDim.new(0, 7)
    
    WindowStroke.Name = "WindowStroke"
    WindowStroke.Parent = WindowFrame
    WindowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    WindowStroke.Color = Color3.fromRGB(0,225,225)
    WindowStroke.LineJoinMode = Enum.LineJoinMode.Round
    WindowStroke.Thickness = 1
    WindowStroke.Transparency = 0
    WindowStroke.Enabled = true
    WindowStroke.Archivable = true
    
    PlayTime.Name = "PlayTime"
    PlayTime.Parent = WindowFrame
    PlayTime.BackgroundColor3 = Color3.fromRGB(12,12,12)
    PlayTime.BackgroundTransparency = 1.000
    PlayTime.Position = UDim2.new(0, 3, 0, 324)
    PlayTime.Size = UDim2.new(0, 150, 0, 25)
    PlayTime.Font = Enum.Font.Code
    PlayTime.Text = ""
    PlayTime.TextSize = 13.000
    PlayTime.TextColor3 = Color3.fromRGB(180,180,180)
    PlayTime.TextXAlignment = Enum.TextXAlignment.Center
    
    PlayTimeCorner.Name = "PlayTimeCorner"
    PlayTimeCorner.Parent = PlayTime
    PlayTimeCorner.CornerRadius = UDim.new(0, 2)
    
    BlackImage.Name = "BlackImage"
    BlackImage.Parent = WindowFrame
    BlackImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BlackImage.BackgroundTransparency = 1.000
    BlackImage.Position = UDim2.new(0, 3, 0, 3)
    BlackImage.Size = UDim2.new(0, 25, 0, 25)
    BlackImage.Image = "rbxassetid://9247714199"
    BlackImage.ImageColor3 = Color3.fromRGB(0,225,225)
    
    BlackTitle.Name = "BlackTitle"
    BlackTitle.Parent = WindowFrame
    BlackTitle.BackgroundColor3 = _G.WindowBackgroundColor
    BlackTitle.BackgroundTransparency = 1.000
    BlackTitle.Position = UDim2.new(0, 33, 0, 3)
    BlackTitle.Size = UDim2.new(0, 50, 0, 25)
    BlackTitle.Font = Enum.Font.GothamBold
    BlackTitle.Text = ""
    BlackTitle.TextColor3 = Color3.fromRGB(0,225,225)
    BlackTitle.TextSize = 13.000
    BlackTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    Space.Name = "Space"
    Space.Parent = WindowFrame
    Space.BackgroundColor3 = _G.WindowBackgroundColor
    Space.BackgroundTransparency = 1.000
    Space.Position = UDim2.new(0, 98, 0, 3)
    Space.Size = UDim2.new(0, 10, 0, 25)
    Space.Font = Enum.Font.GothamBold
    Space.Text = "|"
    Space.TextColor3 = Color3.fromRGB(0,225,225)
    Space.TextSize = 18.000
    
    ServerTime.Name = "ServerTime"
    ServerTime.Parent = WindowFrame
    ServerTime.BackgroundColor3 = _G.WindowBackgroundColor
    ServerTime.BackgroundTransparency = 1.000
    ServerTime.Position = UDim2.new(0, 115, 0, 3)
    ServerTime.Size = UDim2.new(0, 225, 0, 25)
    ServerTime.Font = Enum.Font.Code
    ServerTime.Text = ""
    ServerTime.TextSize = 13.000
    ServerTime.TextColor3 = Color3.fromRGB(180,180,180)
    ServerTime.TextXAlignment = Enum.TextXAlignment.Left

    Pinged.Name = "Pinged"
    Pinged.Parent = WindowFrame
    Pinged.BackgroundColor3 = _G.WindowBackgroundColor
    Pinged.BackgroundTransparency = 1.000
    Pinged.Position = UDim2.new(0, 295, 0, 3)
    Pinged.Size = UDim2.new(0, 225, 0, 25)
    Pinged.Font = Enum.Font.Code
    Pinged.Text = ""
    Pinged.TextSize = 13.000
    Pinged.TextColor3 = Color3.fromRGB(180,180,180)
    Pinged.TextXAlignment = Enum.TextXAlignment.Left
    
    CloseButton.Name = "CloseButton"
    CloseButton.Parent = WindowFrame
    CloseButton.BackgroundColor3 = _G.WindowBackgroundColor
    CloseButton.BackgroundTransparency = 1.000
    CloseButton.AutoButtonColor = false
    CloseButton.Position = UDim2.new(0, 525, 0, 3)
    CloseButton.Size = UDim2.new(0, 25, 0, 25)
    CloseButton.Font = Enum.Font.Gotham
    CloseButton.TextColor3 = Color3.fromRGB(0, 225, 225)
    CloseButton.Text = "×"
    CloseButton.Rotation = 0
    CloseButton.TextSize = 25.000
    
    -- Tab & Container --
    local LineWindow = Instance.new("Frame")
    local SpaceWindow = Instance.new("Frame")
    local TabWindow = Instance.new("ScrollingFrame")
    local TabWindowList = Instance.new("UIListLayout")
    local ContainerHold = Instance.new("Frame")
    local ContainerItem = Instance.new("Folder")
    local ContainerHoldCorner = Instance.new("UICorner")
    
    LineWindow.Name = "LineWindow"
    LineWindow.Parent = WindowFrame
    LineWindow.BackgroundColor3 = Color3.fromRGB(0,225,225)
    LineWindow.BorderSizePixel = 0
    LineWindow.Position = UDim2.new(0, 5, 0, 31)
    LineWindow.Size = UDim2.new(0, 540, 0, 1)
    
    SpaceWindow.Name = "SpaceWindow"
    SpaceWindow.Parent = WindowFrame
    SpaceWindow.BackgroundColor3 = Color3.fromRGB(120,120,120)
    SpaceWindow.BorderSizePixel = 0
    SpaceWindow.Position = UDim2.new(0, 156, 0, 41)
    SpaceWindow.Size = UDim2.new(0, 1, 0, 300)
    
    TabWindow.Name = "TabWindow"
    TabWindow.Parent = WindowFrame
    TabWindow.BackgroundColor3 = _G.TabWindowColor
    TabWindow.BackgroundTransparency = 1.000
    TabWindow.BorderSizePixel = 0
    TabWindow.Position = UDim2.new(0, 3, 0, 40)
    TabWindow.Size = UDim2.new(0, 150, 0, 0)
    TabWindow.ScrollBarThickness = 0
    TabWindow.ClipsDescendants = true
    
    TabWindow:TweenSize(UDim2.new(0, 150, 0, 275), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 10.0, true)
    
    TabWindowList.Name = "TabWindowList"
    TabWindowList.Parent = TabWindow
    TabWindowList.FillDirection = Enum.FillDirection.Vertical
    TabWindowList.SortOrder = Enum.SortOrder.LayoutOrder
    TabWindowList.Padding = UDim.new(0, 2)
    TabWindowList.VerticalAlignment = Enum.VerticalAlignment.Top
    
    ContainerHold.Name = "ContainerHold"
    ContainerHold.Parent = WindowFrame
    ContainerHold.BackgroundColor3 = _G.ContainerColor
    ContainerHold.BackgroundTransparency = 1.000
    ContainerHold.BorderSizePixel = 0
    ContainerHold.Position = UDim2.new(0, 160, 0, 40)
    ContainerHold.Size = UDim2.new(0, 387, 0, 304)
    
    ContainerHoldCorner.Name = "ContainerHoldCorner"
    ContainerHoldCorner.Parent = ContainerHold
    ContainerHoldCorner.CornerRadius = UDim.new(0, 5)
    
    ContainerItem.Name = "ContainerItem"
    ContainerItem.Parent = ContainerHold
    
    TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
    TabWindowList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
    end)
    
    -- Window Script --
    local gui = WindowFrame
    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    -- Script --
    local closetog = false
    CloseButton.MouseButton1Click:Connect(function()
        if closetog == true then
            game.TweenService:Create(WindowFrame, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 550, 0, 350)}
                ):Play()
            game.TweenService:Create(CloseButton, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {Rotation = 0}
                ):Play()
        else
            game.TweenService:Create(WindowFrame, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 550, 0, 30)}
                ):Play()
            game.TweenService:Create(CloseButton, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {Rotation = 45}
                ):Play()
        end
        closetog = not closetog
    end)
    
    function osfunc:Refresh(textadd)
        ServerTime.Text = textadd
    end
    function titlefunc:Refresh(text)
        BlackTitle.Text = text
    end
    function pingfunc:Refresh(newtext)
        Pinged.Text = newtext
    end
    function timefunc:Refresh(newtime)
        PlayTime.Text = newtime
    end
    
    local function UpdateTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Day = math.floor(GameTime/(60^3))%24
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        
        timefunc:Refresh("Timer = "..Day.."."..Hour.. "."..Minute.. "."..Second)
    end
    spawn(function()
        while true do
            UpdateTime()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
    
    spawn(function()
        while game:GetService("RunService").RenderStepped:wait() do
            pingfunc:Refresh(tostring(game:GetService("Stats").PerformanceStats.Memory:GetValueString()).." - "..tostring(game:GetService("Stats").PerformanceStats.NetworkReceived:GetValueString()).." - "..tostring(game:GetService("Stats").PerformanceStats.Ping:GetValueString()))
        end
    end)
    
    local function UpdateOS()
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        osfunc:Refresh(datetime.." - "..timezone)
    end
    spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
    spawn(function()
        while task.wait() do
            titlefunc:Refresh("") wait(.2) titlefunc:Refresh("T") wait(.2) titlefunc:Refresh("Th") wait(.2) titlefunc:Refresh("Thu") wait(.2) titlefunc:Refresh("Thun") wait(.2) titlefunc:Refresh("Thund") wait(.2) titlefunc:Refresh("Thunde") wait(.2) titlefunc:Refresh("Thunder") wait(.2) titlefunc:Refresh("Thunder ") wait(.2) titlefunc:Refresh("Thunder Z") wait(.9) titlefunc:Refresh("Thunder ") wait(.2) titlefunc:Refresh("Thunder") wait(.2) titlefunc:Refresh("Thunde") wait(.2) titlefunc:Refresh("Thund") wait(.2) titlefunc:Refresh("Thun") wait(.2) titlefunc:Refresh("Thu") wait(.2) titlefunc:Refresh("Th") wait(.2) titlefunc:Refresh("T") wait(.2) titlefunc:Refresh("") wait(.2) wait(.3)
        end
    end)
    -- End Windows --
    
    -- Notification --
    function Blacklib:Notification(titledesc, textdesc)
        local NotificationHold = Instance.new("TextButton")
        local NotificationFrame = Instance.new("Frame")
        local OkayBtn = Instance.new("TextButton")
        local OkayBtnCorner = Instance.new("UICorner")
        local OkayBtnTitle = Instance.new("TextLabel")
        local NotificationTitle = Instance.new("TextLabel")
        local NotificationDesc = Instance.new("TextLabel")
        local NotifCorner = Instance.new("UICorner")
        local NotifHolderUIStroke = Instance.new("UIStroke")
        local Line = Instance.new("Frame")
        
        -- Prop --
        NotificationHold.Name = "NotificationHold"
        NotificationHold.Parent = WindowFrame
        NotificationHold.BackgroundColor3 = _G.WindowBackgroundColor
        NotificationHold.BackgroundTransparency = 0.4
        NotificationHold.BorderSizePixel = 0
        NotificationHold.Size = UDim2.new(0, 550, 0, 350)
        NotificationHold.AutoButtonColor = false
        NotificationHold.Font = Enum.Font.SourceSans
        NotificationHold.Text = ""
        NotificationHold.TextColor3 = _G.SectionTextColor
        NotificationHold.TextSize = 13.000
        
        TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.4}):Play()
        wait(0.4)
        
        NotificationFrame.Name = "NotificationFrame"
        NotificationFrame.Parent = NotificationHold
        NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
        NotificationFrame.BorderColor3 = _G.SectionColor
        NotificationFrame.BorderSizePixel = 0
        NotificationFrame.ClipsDescendants = true
        NotificationFrame.Position = UDim2.new(0, 275, 0, 175)
        NotificationFrame.Size = UDim2.new(0, 0, 0, 0)		
 
        NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
        
        NotifCorner.Name = "NotifCorner"
        NotifCorner.Parent = NotificationFrame
        NotifCorner.CornerRadius = UDim.new(0, 5)
        
        NotifHolderUIStroke.Name = "NotifHolderUIStroke"
        NotifHolderUIStroke.Parent = NotificationFrame
        NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        NotifHolderUIStroke.Color = Color3.fromRGB(0,225,225)
        NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
        NotifHolderUIStroke.Thickness = 0.5
        NotifHolderUIStroke.Transparency = 0
        NotifHolderUIStroke.Enabled = true
        NotifHolderUIStroke.Archivable = true
        
        OkayBtn.Name = "OkayBtn"
        OkayBtn.Parent = NotificationFrame
        OkayBtn.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
        OkayBtn.BorderSizePixel = 1
        OkayBtn.BorderColor3 = _G.SectionColor
        OkayBtn.Position = UDim2.new(0, 125, 0, 190)
        OkayBtn.Size = UDim2.new(0, 150, 0, 30)
        OkayBtn.AutoButtonColor = true
        OkayBtn.Font = Enum.Font.Code
        OkayBtn.Text = ""
        OkayBtn.TextColor3 = _G.SectionTextColor
        OkayBtn.TextSize = 13.000
        
        OkayBtnCorner.CornerRadius = UDim.new(0, 5)
        OkayBtnCorner.Name = "OkayBtnCorner"
        OkayBtnCorner.Parent = OkayBtn
        
        OkayBtnTitle.Name = "OkayBtnTitle"
        OkayBtnTitle.Parent = OkayBtn
        OkayBtnTitle.BackgroundColor3 = _G.SectionColor
        OkayBtnTitle.BackgroundTransparency = 1.000
        OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)
        OkayBtnTitle.Text = "OK"
        OkayBtnTitle.Font = Enum.Font.Code
        OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
        OkayBtnTitle.TextSize = 22.000
        
        NotificationTitle.Name = "NotificationTitle"
        NotificationTitle.Parent = NotificationFrame
        NotificationTitle.BackgroundColor3 = _G.SectionColor
        NotificationTitle.BackgroundTransparency = 1.000
        NotificationTitle.Position = UDim2.new(0, 0, 0, 10)
        NotificationTitle.Size = UDim2.new(0, 400, 0, 25)
        NotificationTitle.ZIndex = 3
        NotificationTitle.Font = Enum.Font.Code
        NotificationTitle.Text = titledesc or "Notification"
        NotificationTitle.TextColor3 = Color3.fromRGB(180,180,180)
        NotificationTitle.TextSize = 20.000
        
        Line.Name = "Line"
        Line.Parent = NotificationFrame
        Line.BackgroundColor3 = Color3.fromRGB(0,225,225)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 5, 0, 43)
        Line.Size = UDim2.new(0, 390, 0, 1)
        
        NotificationDesc.Name = "NotificationDesc"
        NotificationDesc.Parent = NotificationFrame
        NotificationDesc.BackgroundColor3 = _G.SectionColor
        NotificationDesc.BackgroundTransparency = 1.000
        NotificationDesc.Position = UDim2.new(0, 10, 0, 70)
        NotificationDesc.Size = UDim2.new(0, 380, 0, 100)
        NotificationDesc.Font = Enum.Font.Code
        NotificationDesc.Text = textdesc
        NotificationDesc.TextColor3 = Color3.fromRGB(180,180,180)
        NotificationDesc.TextSize = 16.000
        NotificationDesc.TextWrapped = true
        NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
        NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
        
        -- Notification Script--
        OkayBtn.MouseEnter:Connect(function()
            TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
        end)
 
        OkayBtn.MouseLeave:Connect(function()
            TweenService:Create(OkayBtn, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
        end)
        
        OkayBtn.MouseButton1Click:Connect(function()
            NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
 
            wait(0.4)
 
            TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
 
            wait(.3)
 
            NotificationHold:Destroy()
        end)
    end
    
    coroutine.wrap(function()
        while wait() do
        end
    end)()
    -- End Notification --
    
    -- Tabs --
    local Tabs = {}
    function Tabs:Tab(tabtitle, img)
        local TabFrame = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local TabTitle = Instance.new("TextLabel")
        local TabImage = Instance.new("ImageLabel")
        
        -- Prop --
        TabFrame.Name = tabtitle or "TabFrame"
        TabFrame.Parent = TabWindow
        TabFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
        TabFrame.BackgroundTransparency = 0
        TabFrame.BorderSizePixel = 0
        TabFrame.AutoButtonColor = false
        TabFrame.Size = UDim2.new(0, 150, 0, 30)
        TabFrame.Font = Enum.Font.Code
        TabFrame.Text = ""
        TabFrame.TextColor3 = Color3.fromRGB(180,180,180)
        TabFrame.TextSize = 15.000
        
        TabCorner.Name = tabtitle or "TabCorner"
        TabCorner.Parent = TabFrame
        TabCorner.CornerRadius = UDim.new(0, 5)
        
        TabImage.Name = tabtitle or "TabImage"
        TabImage.Parent = TabFrame
        TabImage.BackgroundColor3 = _G.TabWindowColor
        TabImage.BackgroundTransparency = 1.000
        TabImage.Position = UDim2.new(0, 3, 0, 4)
        TabImage.Size = UDim2.new(0, 20, 0, 20)
        TabImage.Image = img or "rbxassetid://8666601749"
        TabImage.ImageColor3 = Color3.fromRGB(200,200,200)
        
        TabTitle.Name = tabtitle or "TabTitle"
        TabTitle.Parent = TabFrame
        TabTitle.BackgroundColor3 = _G.TabWindowColor
        TabTitle.BackgroundTransparency = 1.000
        TabTitle.BorderSizePixel = 0
        TabTitle.Position = UDim2.new(0, 30, 0, 2.5)
        TabTitle.Size = UDim2.new(0, 150, 0, 25)
        TabTitle.Font = Enum.Font.Code
        TabTitle.Text = tabtitle or "Put Tab Title"
        TabTitle.TextColor3 = Color3.fromRGB(180,180,180)
        TabTitle.TextSize = 13.000
        TabTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        -- Container --
        local Container = Instance.new("ScrollingFrame")
        local ContainerLayout = Instance.new("UIListLayout")
        
        -- Prop --
        Container.Name = "Container"
        Container.Parent = ContainerItem
        Container.Active = true
        Container.AnchorPoint = Vector2.new(0, 0)
        Container.BackgroundColor3 = _G.ContainerColor
        Container.BackgroundTransparency = 1.000
        Container.Position = UDim2.new(0, 0, 0, 0)
        Container.Size = UDim2.new(0, 387, 0, 0)
        Container.ScrollBarThickness = 0
        Container.Visible = true
        
        ContainerLayout.Name = "ContainerLayout"
        ContainerLayout.Parent = Container
        ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerLayout.Padding = UDim.new(0, 10)
        
        local function UpdateSize()
            local cLt = ContainerLayout.AbsoluteContentSize

            game.TweenService:Create(Container, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0, 0, 0, cLt.Y)
            }):Play()
        end
        UpdateSize()
        Container.ChildAdded:Connect(UpdateSize)
        Container.ChildRemoved:Connect(UpdateSize)
        
        -- function --
        TabFrame.MouseButton1Click:Connect(function()
            for i,v in next, TabWindow:GetChildren() do
                if v:IsA('TextButton') then
                    game.TweenService:Create(v, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {BackgroundColor3 = Color3.fromRGB(30,30,30)}
                        ):Play()
                    game.TweenService:Create(v, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {BackgroundTransparency = 0}
                        ):Play()
                    UpdateSize()
                end
            end
            game.TweenService:Create(TabFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                {BackgroundColor3 = Color3.fromRGB(0,225,225)}
                ):Play()
            game.TweenService:Create(TabFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {BackgroundTransparency = 0.9}
                ):Play()
            
            for i,v in next, ContainerItem:GetChildren() do
                v:TweenSize(UDim2.new(0, 387, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, .3, true)
                UpdateSize()
            end
            wait(0.1)
            Container:TweenSize(UDim2.new(0, 387, 0, 304), Enum.EasingDirection.In, Enum.EasingStyle.Linear, .3, true)
            UpdateSize()
            
        end)
        -- End Tabs Container --
        
        -- Section --
        local Section = {}
        function Section:NewSection(seclabel)
            local sectionFrame = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local sectionListLayout = Instance.new("UIListLayout")
            local sectionFrameHead = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local sectionCircle = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local TextLabel = Instance.new("TextLabel")
            local closeSection = Instance.new("TextButton")
            
            -- Prop --
            sectionFrame.Name = seclabel or "sectionFrame"
            sectionFrame.Parent = Container
            sectionFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
            sectionFrame.BackgroundTransparency = 1.000
            sectionFrame.Position = UDim2.new(0, 0, 0, 0)
            sectionFrame.Size = UDim2.new(0, 387, 0, 25)
            sectionFrame.ClipsDescendants = true

            UICorner.Parent = sectionFrame
            UICorner.CornerRadius = UDim.new(0, 5)

            sectionListLayout.Parent = sectionFrame
            sectionListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sectionListLayout.Padding = UDim.new(0, 7)
            sectionListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

            sectionFrameHead.Name = seclabel or "sectionFrameHead"
            sectionFrameHead.Parent = sectionFrame
            sectionFrameHead.BackgroundColor3 = Color3.fromRGB(30,30,30)
            sectionFrameHead.BackgroundTransparency = 1.000
            sectionFrameHead.Position = UDim2.new(0, 0, 0, 0)
            sectionFrameHead.Size = UDim2.new(0, 387, 0, 25)

            UICorner_2.Parent = sectionFrameHead
            UICorner_2.CornerRadius = UDim.new(0, 5)
            
            TextLabel.Name = seclabel or "TextLabel"
            TextLabel.Parent = sectionFrameHead
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 387, 0, 25)
            TextLabel.Font = Enum.Font.Code
            TextLabel.Text = seclabel
            TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Center
            
            sectionFrame.Size = UDim2.new(0, 387, 0, 5 + sectionListLayout.AbsoluteContentSize.Y + sectionListLayout.Padding.Offset)
            
            sectionListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                sectionFrame.Size = UDim2.new(0, 387, 0, 5 + sectionListLayout.AbsoluteContentSize.Y + sectionListLayout.Padding.Offset)
                UpdateSize()
            end)
            
            -- Button --
            local ItemHand = {}
            function ItemHand:AddButton(buttontitle, callback)
                local ButtonFrame = Instance.new("Frame")
                local Button = Instance.new("TextButton")
                local UIStroke = Instance.new("UIStroke")
                local UICorner = Instance.new("UICorner")
                local UIListLayout = Instance.new("UIListLayout")
                
                -- Prop --
                ButtonFrame.Name = buttontitle or "ButtonFrame"
                ButtonFrame.Parent = sectionFrame
                ButtonFrame.BackgroundColor3 = _G.SectionColor
                ButtonFrame.BackgroundTransparency = 1.000
                ButtonFrame.BorderSizePixel = 0
                ButtonFrame.Size = UDim2.new(0, 387, 0, 25)
            
                Button.Name = buttontitle or "Button"
                Button.Parent = ButtonFrame
                Button.AutoButtonColor = false
                Button.BackgroundColor3 = Color3.fromRGB(30,30,30)
                Button.BackgroundTransparency = 0
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0, 50, 0, 2)
                Button.Size = UDim2.new(0, 305, 0, 25)
                Button.Font = Enum.Font.Code
                Button.Text = buttontitle
                Button.TextColor3 = Color3.fromRGB(180,180,180)
                Button.TextSize = 12.000
                
                UIStroke.Name = "UIStroke"
                UIStroke.Parent = Button
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(180,180,180)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 0.5
                UIStroke.Transparency = 0
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                UICorner.CornerRadius = UDim.new(0, 3)
                UICorner.Parent = Button
                
                UIListLayout.Parent = ButtonFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                
                -- Button Script --
                local clickDebounce = false
                local callBackDebounce = false
                local mouseleft
                
                Button.MouseButton1Click:Connect(function()
                    if not callBackDebounce then
                        callBackDebounce = true	
                        callback()
                        wait(0.5)
                        callBackDebounce = false
                    end
                end)
                Button.MouseButton1Down:Connect(function()
                    if not clickDebounce then
                        clickDebounce = true
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 295,0, 23),
                            TextSize = 10
                        }):Play()
                        wait(0.5)
                        clickDebounce = false
                    end
                end)
                Button.MouseButton1Up:Connect(function()
                    if mouseleft then
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305, 0, 25),
                            TextSize = 11
                        }):Play()
                    else
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305, 0, 25),
                            TextSize = 11
                        }):Play()
                    end
                end)
                Button.MouseEnter:Connect(function()
                    if callBackDebounce then
                        mouseleft = false
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Color = Color3.fromRGB(0,225,225)
                        }):Play()
                    else
                        mouseleft = false
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Color = Color3.fromRGB(0,225,225)
                        }):Play()
                    end
                end)
                Button.MouseLeave:Connect(function()
                    if callBackDebounce then
                        mouseleft = true
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305,0, 25),
                            TextSize = 12
                        }):Play()
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Color = Color3.fromRGB(180,180,180)
                        }):Play()
                    else
                        mouseleft = true
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305,0, 25),
                            TextSize = 12
                        }):Play()
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Color = Color3.fromRGB(180,180,180)
                        }):Play()
                    end
                end)
            end
            -- End Button --
            
            -- Toggled --
            function ItemHand:AddToggle(TogInfo, default, callback)
                local toggle = false
                local CheckFrame = Instance.new("Frame")
                local CheckFrame2 = Instance.new("Frame")
                local UIStroke = Instance.new("UIStroke")
                local UIListLayout = Instance.new("UIListLayout")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                
                -- Prop --
                CheckFrame.Name = TogInfo or "CheckFrame"
                CheckFrame.Parent = sectionFrame
                CheckFrame.BackgroundColor3 = _G.BackgroundItemColor
                CheckFrame.BackgroundTransparency = 1.000
                CheckFrame.BorderSizePixel = 0
                CheckFrame.Size = UDim2.new(0, 387, 0, 30)
            
                CheckFrame2.Name = "CheckFrame2"
                CheckFrame2.Parent = CheckFrame
                CheckFrame2.BackgroundColor3 = Color3.fromRGB(30,30,30)
                CheckFrame2.BorderSizePixel = 0
                CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
                CheckFrame2.Size = UDim2.new(0, 381, 0, 30)
                
                UIStroke.Name = "UIStroke"
                UIStroke.Parent = CheckFrame2
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(0,225,225)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 0.5
                UIStroke.Transparency = 0
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                UICorner.Parent = CheckFrame2
                UICorner.CornerRadius = UDim.new(0, 3)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = CheckFrame2
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 6)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825010231"
                ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)
                
                Space.Name = "Space"
                Space.Parent = CheckFrame2
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 30)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = Color3.fromRGB(180,180,180)
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = CheckFrame2
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 30)
                Title.Font = Enum.Font.Code
                Title.Text = TogInfo or "checkBox Title"
                Title.TextColor3 = Color3.fromRGB(180,180,180)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
            
                ImageButton.Name = "ImageButton"
                ImageButton.Parent = CheckFrame2
                ImageButton.BackgroundColor3 = _G.WindowBackgroundColor
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(0, 352, 0, 4)
                ImageButton.Size = UDim2.new(0, 23, 0, 23)
                ImageButton.ZIndex = 2
                ImageButton.Image = "rbxassetid://3926311105"
                ImageButton.ImageColor3 = Color3.fromRGB(180,180,180)
                ImageButton.ImageRectOffset = Vector2.new(940, 784)
                ImageButton.ImageRectSize = Vector2.new(48, 48)
                
                -- Toggle Script --
                if default == true then
                    ImageButton.ImageRectOffset = Vector2.new(4, 836)
                    game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {ImageColor3 = Color3.fromRGB(0,225,225)}
                        ):Play()
                    toggle = not toggle
                    pcall(callback, toggle)
                end
                
                ImageButton.MouseButton1Click:Connect(function()
                    if toggle == false then
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {ImageColor3 = Color3.fromRGB(0,225,225)}
                            ):Play()
                        ImageButton.ImageRectOffset = Vector2.new(4, 836)
                    else
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {ImageColor3 = Color3.fromRGB(180,180,180)}
                            ):Play()
                        ImageButton.ImageRectOffset = Vector2.new(940, 784)
                    end
                    toggle = not toggle
                    pcall(callback, toggle)
                end)
            end
            -- End Toggle --
            
            -- Dropdown --
            function ItemHand:AddDropdown(droptitle, list, callback)
                -- Local --
                local dropfunc = {}
                local list = list or {}
                local DropToggled = false
                local DropSizeFrame = Instance.new("Frame")
                local Frame = Instance.new("Frame")
                local UIStroke = Instance.new("UIStroke")
                local DropCover = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local UICorner2 = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                local DropStrokeList = Instance.new("UIStroke")
                local DropTextList = Instance.new("TextLabel")
                
                -- Prop --
                DropSizeFrame.Name = droptitle or "DropSizeFrame"
                DropSizeFrame.Parent = sectionFrame
                DropSizeFrame.BackgroundColor3 = _G.SectionColor
                DropSizeFrame.BackgroundTransparency = 1.000
                DropSizeFrame.Size = UDim2.new(0, 387, 0, 60)
                
                Frame.Name = "Frame"
                Frame.Parent = DropSizeFrame
                Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
                Frame.BorderSizePixel = 0
                Frame.Position = UDim2.new(0, 3, 0, 0)
                Frame.Size = UDim2.new(0, 381, 0, 60)
                
                UIStroke.Name = "UIStroke"
                UIStroke.Parent = Frame
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(0,225,225)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 0.5
                UIStroke.Transparency = 0
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                UICorner.Parent = Frame
                UICorner.CornerRadius = UDim.new(0, 3)
                
                DropCover.Name = "DropCover"
                DropCover.Parent = Frame
                DropCover.BackgroundColor3 = _G.BackgroundItemColor
                DropCover.BackgroundTransparency = 1.000
                DropCover.BorderSizePixel = 0
                DropCover.Position = UDim2.new(0, 0, 0, 0)
                DropCover.Size = UDim2.new(0, 381, 0, 30)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = DropCover
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 6)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825005073"
                ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)
                
                Space.Name = "Space"
                Space.Parent = DropCover
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 30)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = Color3.fromRGB(180,180,180)
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = DropCover
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 30)
                Title.Font = Enum.Font.Code
                Title.Text = droptitle or "drop Title"
                Title.TextColor3 = Color3.fromRGB(180,180,180)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
            
                ImageButton.Name = "ImageButton"
                ImageButton.Parent = DropCover
                ImageButton.BackgroundColor3 = _G.WindowBackgroundColor
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(0, 352, 0, 7)
                ImageButton.Size = UDim2.new(0, 23, 0, 18)
                ImageButton.Image = "rbxassetid://8530745436"
                ImageButton.ImageColor3 = Color3.fromRGB(180,180,180)
                ImageButton.Rotation = 180
                
                DropTextList.Name = "DropTextList"
                DropTextList.Parent = Frame
                DropTextList.BackgroundColor3 = _G.BackgroundItemColor
                DropTextList.BackgroundTransparency = 1.000
                DropTextList.Position = UDim2.new(0, 3, 0, 30)
                DropTextList.Size = UDim2.new(0, 375, 0, 25)
                DropTextList.Font = Enum.Font.Code
                DropTextList.Text = v or "None..."
                DropTextList.TextColor3 = Color3.fromRGB(180,180,180)
                DropTextList.TextSize = 12.000
                DropTextList.TextXAlignment = Enum.TextXAlignment.Center
                
                UICorner2.Parent = DropTextList
                UICorner2.CornerRadius = UDim.new(0,3)
                
                DropStrokeList.Name = "DropStrokeList"
                DropStrokeList.Parent = DropTextList
                DropStrokeList.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropStrokeList.Color = Color3.fromRGB(180,180,180)
                DropStrokeList.LineJoinMode = Enum.LineJoinMode.Round
                DropStrokeList.Thickness = 0.2
                DropStrokeList.Transparency = 0
                DropStrokeList.Enabled = true
                DropStrokeList.Archivable = true
                
                -- Adden Local --
                local DropItemScroll = Instance.new("ScrollingFrame")
                local DropItemLayout = Instance.new("UIListLayout")
                local DropItemStroke = Instance.new("UIStroke")
                
                -- Adden Prop --
                DropItemScroll.Name = "DropItemScroll"
                DropItemScroll.Parent = Frame
                DropItemScroll.BackgroundColor3 = _G.SectionColor
                DropItemScroll.BackgroundTransparency = 1.000
                DropItemScroll.Position = UDim2.new(0, 3, 0, 60)
                DropItemScroll.Size = UDim2.new(0, 375, 0, 0)
                DropItemScroll.ScrollBarThickness = 0
                DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
                
                DropItemLayout.Name = "DropItemLayout"
                DropItemLayout.Parent = DropItemScroll
                DropItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
                DropItemLayout.Padding = UDim.new(0, 0)
                
                DropItemStroke.Name = "DropItemStroke"
                DropItemStroke.Parent = DropItemScroll
                DropItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropItemStroke.Color = Color3.fromRGB(180,180,180)
                DropItemStroke.LineJoinMode = Enum.LineJoinMode.Round
                DropItemStroke.Thickness = 0
                DropItemStroke.Transparency = 0
                DropItemStroke.Enabled = true
                DropItemStroke.Archivable = true
                
                -- Dropdown Script--
                local ItemCount = 0
                local FrameSize = 0
                
                ImageButton.MouseButton1Click:Connect(function()
                    if DropToggled then
                        DropToggled = false
                        DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 60), 'InOut', 'Linear', 0.08)
                        Frame:TweenSize(UDim2.new(0, 381, 0, 60), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {Rotation = 180}
                            ):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {ImageColor3 = Color3.fromRGB(180,180,180)}
                            ):Play()
                        
                    else
                        DropToggled = true
                        DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)
                        Frame:TweenSize(UDim2.new(0, 381, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0, FrameSize), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {Rotation = 0}
                            ):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {ImageColor3 = Color3.fromRGB(0,225,225)}
                            ):Play()
                    end
                end)
                
                for i,v in next, list do
                    ItemCount = ItemCount + 1
                    if ItemCount == 1 then
                        FrameSize = 30
                    elseif ItemCount == 2 then
                        FrameSize = 60
                    elseif ItemCount == 3 then
                        FrameSize = 90
                    elseif ItemCount >= 3 then
                        FrameSize = 120
                    end
                    
                    local ItemList = Instance.new("TextButton")
                    
                    ItemList.Name = "ItemList"
                    ItemList.Parent = DropItemScroll
                    ItemList.BackgroundColor3 = Color3.fromRGB(0,225,225)
                    ItemList.BackgroundTransparency = 1.000
                    ItemList.Size = UDim2.new(0, 375, 0, 30)
                    ItemList.AutoButtonColor = false
                    ItemList.Font = Enum.Font.Code
                    ItemList.TextColor3 = Color3.fromRGB(180,180,180)
                    ItemList.TextSize = 12.000
                    ItemList.Text = v or "None..."
                    ItemList.TextXAlignment = Enum.TextXAlignment.Center
                        
                    ItemList.MouseEnter:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 0.8}
                            ):Play()
                    end)
                    ItemList.MouseLeave:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 1}
                            ):Play()
                    end)
                    
                    ItemList.MouseButton1Click:Connect(function()
                        DropTextList.Text = v or "None..."
                        pcall(callback, v)
                        DropToggled = false
                        DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 60), 'InOut', 'Linear', 0.08)
                        Frame:TweenSize(UDim2.new(0, 381, 0, 60), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {Rotation = 180}
                            ):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {ImageColor3 = Color3.fromRGB(180,180,180)}
                            ):Play()
                    end)
                    DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
                end
                
                function dropfunc:Clear()
                    for _,v  in next, DropItemScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                            FrameSize = 0
                            ItemCount = 0
                        end
                    end
                    DropTextList.Text = "Reset Succesfully..."
                    DropToggled = false
                    DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 60), 'InOut', 'Linear', 0.08)
                    Frame:TweenSize(UDim2.new(0, 381, 0, 60), 'InOut', 'Linear', 0.08)
                    DropItemScroll:TweenSize(UDim2.new(0, 375, 0), 'InOut', 'Linear', 0.08)
                    game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {Rotation = 180}
                        ):Play()
                    game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {ImageColor3 = Color3.fromRGB(180,180,180)}
                        ):Play()
                end
                
                function dropfunc:Add(newadd)
                    newadd = newadd or {}
                    ItemCount = ItemCount + 1
                    if ItemCount == 1 then
                        FrameSize = 30
                    elseif ItemCount == 2 then
                        FrameSize = 60
                    elseif ItemCount == 3 then
                        FrameSize = 90
                    elseif ItemCount >= 3 then
                        FrameSize = 120
                    end
                    
                    local ItemList = Instance.new("TextButton")
                    ItemList.Name = "ItemList"
                    ItemList.Parent = DropItemScroll
                    ItemList.BackgroundColor3 = Color3.fromRGB(0,225,225)
                    ItemList.BackgroundTransparency = 1.000
                    ItemList.Size = UDim2.new(0, 375, 0, 30)
                    ItemList.AutoButtonColor = false
                    ItemList.Font = Enum.Font.Code
                    ItemList.TextColor3 = Color3.fromRGB(180,180,180)
                    ItemList.TextSize = 12.000
                    ItemList.Text = newadd or "None..."
                    ItemList.TextXAlignment = Enum.TextXAlignment.Center
                        
                    ItemList.MouseEnter:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 0.8}
                            ):Play()
                    end)
                    ItemList.MouseLeave:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 1}
                            ):Play()
                    end)
                    
                    ItemList.MouseButton1Click:Connect(function()
                        DropTextList.Text = newadd or "None..."
                        pcall(callback, newadd)
                        DropToggled = false
                        DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 60), 'InOut', 'Linear', 0.08)
                        Frame:TweenSize(UDim2.new(0, 381, 0, 60), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {Rotation = 180}
                            ):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                            {ImageColor3 = Color3.fromRGB(180,180,180)}
                            ):Play()
                    end)
                    DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
                end
                return dropfunc
            end
            -- End Dropdown --
            
            -- Slider --
            function ItemHand:AddSlider(slidertitle, min, max, start, callback)
                local sliderfunc = {}
                local SliderFrame = Instance.new("Frame")
                local SliderFrame_2 = Instance.new("Frame")
                local UIStroke = Instance.new("UIStroke")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local SliderInput = Instance.new("Frame")
                local SliderButton = Instance.new("Frame")
                local SliderCount = Instance.new("Frame")
                local SliderCorner = Instance.new("UICorner")
                local SliderCorner2 = Instance.new("UICorner")
                local BoxFrame = Instance.new("Frame")
                local SliderBox = Instance.new("TextBox")
                local SliderStroke = Instance.new("UIStroke")
                local Title_2 = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local UICorner_3 = Instance.new("UICorner")
                
                -- Prop --
                SliderFrame.Name = slidertitle or "SliderFrame"
                SliderFrame.Parent = sectionFrame
                SliderFrame.BackgroundColor3 = _G.BackgroundItemColor
                SliderFrame.BackgroundTransparency = 1.000
                SliderFrame.BorderSizePixel = 0
                SliderFrame.Size = UDim2.new(0, 387, 0, 55)
            
                SliderFrame_2.Name = "SliderFrame_2"
                SliderFrame_2.Parent = SliderFrame
                SliderFrame_2.BackgroundColor3 = Color3.fromRGB(30,30,30)
                SliderFrame_2.BackgroundTransparency = 0
                SliderFrame_2.BorderSizePixel = 0
                SliderFrame_2.Position = UDim2.new(0, 3, 0, 0)
                SliderFrame_2.Size = UDim2.new(0, 381, 0, 55)
                
                UIStroke.Name = "UIStroke"
                UIStroke.Parent = SliderFrame_2
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(0,225,225)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 0.5
                UIStroke.Transparency = 0
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                UICorner.Parent = SliderFrame_2
                UICorner.CornerRadius = UDim.new(0, 3)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = SliderFrame_2
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 5)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825007757"
                ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)
                
                Space.Name = "Space"
                Space.Parent = SliderFrame_2
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 30)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = Color3.fromRGB(180,180,180)
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = SliderFrame_2
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 30)
                Title.Font = Enum.Font.Code
                Title.Text = slidertitle or "Slider Title"
                Title.TextColor3 = Color3.fromRGB(180,180,180)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                
                SliderInput.Name = "SliderInput"
                SliderInput.Parent = SliderFrame_2
                SliderInput.BackgroundColor3 = Color3.fromRGB(0, 225, 225)
                SliderInput.BackgroundTransparency = 0.7
                SliderInput.BorderSizePixel = 0
                SliderInput.Position = UDim2.new(0, 8, 0, 37)
                SliderInput.Size = UDim2.new(0, 365, 0, 4)
                
                SliderCorner2.CornerRadius = UDim.new(0, 100000)
                SliderCorner2.Parent = SliderInput
                
                SliderButton.Name = "SliderButton"
                SliderButton.Parent = SliderInput
                SliderButton.BackgroundColor3 = _G.SectionColor
                SliderButton.BackgroundTransparency = 1.000
                SliderButton.BorderSizePixel = 0
                SliderButton.Position = UDim2.new(0, 0, 0, -7)
                SliderButton.Size = UDim2.new(0, 346, 0, 25)
            
                SliderCount.Name = "SliderCount"
                SliderCount.Parent = SliderButton
                SliderCount.BackgroundColor3 = Color3.fromRGB(0,225,225)
                SliderCount.BackgroundTransparency = 0.3
                SliderCount.BorderSizePixel = 0
                SliderCount.Position = UDim2.new(0,start,0,0)
                SliderCount.Size = UDim2.new(0, 18, 0, 18)
               
                Title_2.Name = "Title_2"
                Title_2.Parent = SliderButton
                Title_2.AnchorPoint = Vector2.new(0, 0)
                Title_2.BackgroundColor3 = Color3.fromRGB(0,225,225)
                Title_2.AutoButtonColor = false
                Title_2.BackgroundTransparency = 1.000
                Title_2.Position = UDim2.new(0,start,0,0)
                Title_2.Size = UDim2.new(0, 18, 0, 18)
                Title_2.Font = Enum.Font.GothamBold
                Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
                Title_2.TextColor3 = Color3.fromRGB(23,23,23)
                Title_2.TextSize = 8.000
                Title_2.TextXAlignment = Enum.TextXAlignment.Center
                
                UICorner_2.Parent = Title_2
                UICorner_2.CornerRadius = UDim.new(0, 100000)
                
                SliderCorner.CornerRadius = UDim.new(0, 100000)
                SliderCorner.Parent = SliderCount
                
                SliderStroke.Name = "SliderStroke"
                SliderStroke.Parent = BoxFrame
                SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                SliderStroke.Color = Color3.fromRGB(180,180,180)
                SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
                SliderStroke.Thickness = 1
                SliderStroke.Transparency = 0.5
                SliderStroke.Enabled = true
                SliderStroke.Archivable = true
                
                BoxFrame.Name = "BoxFrame"
                BoxFrame.Parent = SliderFrame_2
                BoxFrame.BackgroundColor3 = _G.BackgroundItemColor
                BoxFrame.BackgroundTransparency = 1.000
                BoxFrame.Size = UDim2.new(0, 50, 0, 15)
                BoxFrame.Position = UDim2.new(0, 323, 0, 8)
            
                SliderBox.Name = "SliderBox"
                SliderBox.Parent = BoxFrame
                SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                SliderBox.BackgroundTransparency = 1.000
                SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
                SliderBox.Size = UDim2.new(0, 50, 0, 15)
                SliderBox.ClearTextOnFocus = false
                SliderBox.Font = Enum.Font.Code
                SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
                SliderBox.TextColor3 = Color3.fromRGB(200,200,200)
                SliderBox.TextSize = 10.000
                SliderBox.TextTransparency = 0
                SliderBox.TextXAlignment = Enum.TextXAlignment.Center
                SliderBox.TextEditable = true
                
                UICorner_3.Parent = BoxFrame
                UICorner_3.CornerRadius = UDim.new(0, 2)
                
                -- Slider Script --
                local dragging
                local SliderButtonStart
                local SliderButtonInput
                local slide = SliderButton
                
                local function slide(input)
                    local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)
                    SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
                    Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
                    local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
                    SliderBox.Text = tostring(Value)
                    Title_2.Text = tostring(Value)
                    pcall(callback, Value, slidein)
                end
            
                SliderButton.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = true
                        SliderButtonInput = input
                        SliderButtonStart = input.Position.X
                        slidein = SliderButton.AbsolutePosition.X
                        game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()
                        game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 25, 0, 25)}):Play()
                        game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                        game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.5}):Play()
                        game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
                    end
                    input.Changed:Connect(function(input)
                        if input.UserInputType == Enum.UserInputState.End then
                        dragging = false
                        
                        end
                    end)
                end)
                SliderButton.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = false
                        SliderButtonInput = input
                        game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()
                        game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()
                        game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()
                        game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.7}):Play()
                        game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0.5}):Play()
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if input == SliderButtonInput and dragging then
                        slide(input)
                    end
                end)
                
                function set(property)
                    if property == "Text" then
                        if tonumber(SliderBox.Text) then 
                            if tonumber(SliderBox.Text) <= max then
                                Value = SliderBox.Text
                                Title_2.Text = SliderBox.Text
                                SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                                Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                            if tonumber(SliderBox.Text) > max then
                                SliderBox.Text = max
                                Title_2.Text = max
                                Value = max
                                SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                                Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                            if tonumber(SliderBox.Text) >= min then
                                Value = SliderBox.Text
                                Title_2.Text = SliderBox.Text
                                SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                                Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                            if tonumber(SliderBox.Text) < min then
                                Value = min
                                Title_2 = min
                                SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                                Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                        else
                            SliderBox.Text = "" or Value
                            Title_2.Text = Value
                        end
                    end
                end
                
                SliderBox.Focused:Connect(function()
                    SliderBox.Changed:Connect(set)
                end)
                
                SliderBox.FocusLost:Connect(function(enterP)
                    if not enterP then
                        if SliderBox.Text == "" then
                            SliderBox.Text = min
                            Title_2.Text = min
                            Value = min
                            SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        end
                        if tonumber(SliderBox.Text) > tonumber(max) then
                            Value = max
                            SliderBox.Text = max
                            Title_2.Text = max
                            SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        else
                            Value = tonumber(SliderBox.Text)
                        end
                        if tonumber(SliderBox.Text) < min then
                            SliderBox.Text = min
                            Title_2.Text = min
                            Value = min
                            SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        else
                            Value = tonumber(SliderBox.Text)
                        end
                    end
                    if tonumber(SliderBox.Text) > max then
                        SliderBox.Text = max
                        Title_2.Text = max
                        Value = max
                        SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    else
                        Value = tonumber(SliderBox.Text)
                    end
                    if tonumber(SliderBox.Text) < min then
                        SliderBox.Text = min
                        Title_2.Text = min
                        Value = min
                        SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                        Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                        pcall(function()
                            callback(Value)
                        end)
                    else
                        Value = tonumber(SliderBox.Text)
                    end
                    if SliderBox.Text == "" then
                        SliderBox.Text = min
                        Title_2.Text = min
                        Value = min
                        SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                end)
                return sliderfunc
            end
            -- End Slider --
            -- Text Box --
            function ItemHand:AddTextBox(boxtitle, textbox, callback)
                textbox = textbox or "Type Here"
                callback = callback or function() end
                local BoxFrame = Instance.new("Frame")
                local BoxCover = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")
                local UIStroke = Instance.new("UIStroke")
                local UIStroke2 = Instance.new("UIStroke")
                
                -- Prop --
                BoxFrame.Name = boxtitle or "BoxFrame"
                BoxFrame.Parent = sectionFrame
                BoxFrame.BackgroundColor3 = _G.BackgroundItemColor
                BoxFrame.BackgroundTransparency = 1.000
                BoxFrame.BorderSizePixel = 0
                BoxFrame.Size = UDim2.new(0, 387, 0, 40)
            
                BoxCover.Name = "BoxCover"
                BoxCover.Parent = BoxFrame
                BoxCover.BackgroundColor3 = Color3.fromRGB(30,30,30)
                BoxCover.BackgroundTransparency = 0
                BoxCover.BorderSizePixel = 0
                BoxCover.Position = UDim2.new(0, 3, 0, 0)
                BoxCover.Size = UDim2.new(0, 381, 0, 40)
                
                UIStroke2.Parent = BoxCover
                UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke2.Color = Color3.fromRGB(180,180,180)
                UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke2.Thickness = 0.5
                UIStroke2.Transparency = 0
                UIStroke2.Enabled = true
                UIStroke2.Archivable = true
                
                UICorner.Parent = BoxCover
                UICorner.CornerRadius = UDim.new(0, 3)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = BoxCover
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 12)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825051254"
                ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)
                
                Space.Name = "Space"
                Space.Parent = BoxCover
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 40)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = Color3.fromRGB(180,180,180)
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = BoxCover
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 40)
                Title.Font = Enum.Font.Code
                Title.Text = boxtitle or "box Title"
                Title.TextColor3 = Color3.fromRGB(180,180,180)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                
                TextBox.Name = "TextBox"
                TextBox.Parent = BoxCover
                TextBox.BackgroundColor3 = Color3.fromRGB(190, 190, 180)
                TextBox.BackgroundTransparency = 1.000
                TextBox.Position = UDim2.new(0, 293, 0, 10)
                TextBox.Size = UDim2.new(0, 80, 0, 20)
                TextBox.Font = Enum.Font.Code
                TextBox.PlaceholderText = textbox or "Type Here"
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(180,180,180)
                TextBox.TextWrapped = true
                TextBox.TextScaled = false
                TextBox.TextTransparency = 0.5
                TextBox.PlaceholderColor3 = Color3.fromRGB(180,180,180)
                TextBox.TextSize = 12.000
            
                UICorner_2.Parent = TextBox
                UICorner_2.CornerRadius = UDim.new(0, 2)
            
                UIStroke.Parent = TextBox
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(180,180,180)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 1
                UIStroke.Transparency = 0.5
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                -- TextBox Script --
                function anim(property)
                    if property == "Text" then
                        TextBox:TweenSize(UDim2.new(0, 70, 0, 18), "InOut", "Linear", 0.08, true)
                        wait(0.15)
                        TextBox:TweenSize(UDim2.new(0, 80, 0, 20), "InOut", "Linear", 0.08, true)
                    end
                end
            
                TextBox.FocusLost:Connect(function()
                    if not EnterPressed then
                        callback(TextBox.Text)
                        TextBox:TweenSize(UDim2.new(0, 70, 0, 18), "InOut", "Linear", 0.08, true)
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
                        game.TweenService:Create(TextBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                        wait(0.15)
                        TextBox:TweenSize(UDim2.new(0, 80, 0, 20), "InOut", "Linear", 0.08, true)
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0.5}):Play()
                        game.TweenService:Create(TextBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()
                        return
                    end
                    TextBox.Text = textbox
                end)
            end
            -- End TextBox --
            
            -- KeyBind --
            function ItemHand:AddBind(textbind, preset, callback)
                local Key = preset.Name
                local BindFrame = Instance.new("Frame")
                local BindFrame_2 = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local KeyBindButton = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local UIStroke = Instance.new("UIStroke")
                local UIStroke2 = Instance.new("UIStroke")
                
                -- Prop --
                BindFrame.Name = textbind or "BindFrame"
                BindFrame.Parent = sectionFrame
                BindFrame.BackgroundColor3 = _G.BackgroundItemColor
                BindFrame.BackgroundTransparency = 1.000
                BindFrame.BorderSizePixel = 0
                BindFrame.Size = UDim2.new(0, 387, 0, 40)
            
                BindFrame_2.Name = "BindFrame_2"
                BindFrame_2.Parent = BindFrame
                BindFrame_2.BackgroundColor3 = Color3.fromRGB(30,30,30)
                BindFrame_2.BackgroundTransparency = 0
                BindFrame_2.BorderSizePixel = 0
                BindFrame_2.Position = UDim2.new(0, 3, 0, 0)
                BindFrame_2.Size = UDim2.new(0, 381, 0, 40)
                
                UIStroke2.Parent = BindFrame_2
                UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke2.Color = Color3.fromRGB(180,180,180)
                UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke2.Thickness = 0.5
                UIStroke2.Transparency = 0
                UIStroke2.Enabled = true
                UIStroke2.Archivable = true
                
                UICorner.Parent = BindFrame_2
                UICorner.CornerRadius = UDim.new(0, 3)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = BindFrame_2
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 12)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8930945601"
                ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)
                
                Space.Name = "Space"
                Space.Parent = BindFrame_2
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 40)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = Color3.fromRGB(180,180,180)
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = BindFrame_2
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 40)
                Title.Font = Enum.Font.Code
                Title.Text = textbind or "bind Title"
                Title.TextColor3 = Color3.fromRGB(180,180,180)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                
                KeyBindButton.Name = textbind or "KeyBindButton"
                KeyBindButton.Parent = BindFrame_2
                KeyBindButton.BackgroundColor3 = Color3.fromRGB(190, 190, 180)
                KeyBindButton.BackgroundTransparency = 1.000
                KeyBindButton.AutoButtonColor = false
                KeyBindButton.Position = UDim2.new(0, 297, 0, 10)
                KeyBindButton.Size = UDim2.new(0, 80, 0, 20)
                KeyBindButton.Font = Enum.Font.Code
                KeyBindButton.Text = preset.Name
                KeyBindButton.TextColor3 = Color3.fromRGB(180,180,180)
                KeyBindButton.TextSize = 12.000
                KeyBindButton.TextXAlignment = Enum.TextXAlignment.Center
                
                UICorner_2.Parent = KeyBindButton
                UICorner_2.CornerRadius = UDim.new(0, 2)
            
                UIStroke.Parent = KeyBindButton
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(180,180,180)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 0.5
                UIStroke.Transparency = 0
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                
                -- Keybind Script --
                KeyBindButton.MouseButton1Click:Connect(function()
					KeyBindButton.Text = ". . ."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					if inputwait.KeyCode.Name ~= "Unknown" then
						KeyBindButton.Text = inputwait.KeyCode.Name
						Key = inputwait.KeyCode.Name
					end
				end)
				UserInputService.InputBegan:Connect(function(current, pressed)
					if not pressed then
						if current.KeyCode.Name == Key then
							pcall(callback)
						end
					end
				end)
				
            end
            -- End Keybind --
            
            -- Label --
            function ItemHand:AddLabel(textlabel)
                local labelfunc = {}
                local Frame = Instance.new("Frame")
                local TextButton = Instance.new("TextButton")
                
                -- Prop --
                Frame.Name = textlabel or "Frame"
                Frame.Parent = sectionFrame
                Frame.BackgroundColor3 = _G.BackgroundItemColor
                Frame.BackgroundTransparency = 1.000
                Frame.BorderSizePixel = 0
                Frame.Size = UDim2.new(0, 387, 0, 15)
                
                TextButton.Name = "TextButton"
                TextButton.Parent = Frame
                TextButton.BackgroundColor3 = _G.SectionColor
                TextButton.BackgroundTransparency = 1.000
                TextButton.AutoButtonColor = false
                TextButton.Position = UDim2.new(0, 3, 0, 0)
                TextButton.Size = UDim2.new(0, 381, 0, 15)
                TextButton.Font = Enum.Font.Code
                TextButton.Text = textlabel or ""
                TextButton.TextColor3 = Color3.fromRGB(255,255,255)
                TextButton.TextSize = 12.000
                TextButton.TextXAlignment = Enum.TextXAlignment.Left
                
                -- Label Script --
                function labelfunc:Refresh(newtext)
                    TextButton.Text = newtext
                end
                return labelfunc
            end
            
            -- Line --
            function ItemHand:AddLine()
                local Frame = Instance.new("Frame")
                local Frame2 = Instance.new("Frame")
                
                -- Prop --
                Frame.Name = "Frame Line"
                Frame.Parent = sectionFrame
                Frame.BackgroundColor3 = _G.BackgroundItemColor
                Frame.BackgroundTransparency = 1.000
                Frame.BorderSizePixel = 0
                Frame.Size = UDim2.new(0, 387, 0, 2)
                
                Frame2.Name = "Line"
                Frame2.Parent = sectionFrame
                Frame2.BackgroundColor3 = Color3.fromRGB(0,225,225)
                Frame2.BorderSizePixel = 0
                Frame2.Position = UDim2.new(0, 8, 0, 1)
                Frame2.Size = UDim2.new(0, 371, 0, 1)
            -- End Label --
            end
            return ItemHand
        end
        return Section
    end
    return Tabs
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


-- Window --
local Win = Blacklib:Window()
-- Tab --
local Main = Win:Tab("Main" , "rbxassetid://6026568198")
local FirstPages = Win:Tab("Farming", "rbxassetid://9247749254")
local Masterys = Win:Tab("Mastery", "rbxassetid://9316370612")
local Collects = Win:Tab("Auto", "rbxassetid://9247881830")
local Eggs = Win:Tab("Egg", "rbxassetid://9247822567")
local Petss = Win:Tab("Pet", "rbxassetid://9248110350")
local Miscs = Win:Tab("Misc", "rbxassetid://9248167337")

 local Users = Main:NewSection("== User Stats ==")
   Users:AddLine()
   Time = Users:AddLabel("Server Time")
   Client = Users:AddLabel("User")
   Blacklib:Notification("Thunder Z" , "Discord Link Copied to Clipboard" , "Okay")
   Users:AddButton("Credit",function()
   Blacklib:Notification("Thunder Z","===== Script Write BY ===== \nFikury#7140 \n===== UI USED ===== \nBy BlackTrap \n===== Their Discord ===== \nhttps://discord.gg/Gt5RrUTrpK", "Okay")
   end)
   Users:AddButton("Discord",function()
   Blacklib:Notification("Thunder Z", "Discord Link Copied to Clipboard" , "Okay")
   setclipboard("https://discord.gg/EAasK6nBMr")
   end)
   Users:AddButton("Destroy Gui", function()
    game:GetService("CoreGui"):FindFirstChild("BlackTrap"):Destroy()
end)
   Users:AddLine()

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
Users:AddButton("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    Users:AddButton("Server Hop",function()
        Hop()
    end)
    
    Users:AddButton("Hop To Lower Player",function()
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

local FirstPage = FirstPages:NewSection("== Farming Section ==")
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
    Blacklib:Notification("Thunder Z" , "Select Method First" , "Okay")
elseif _G.mapafunc == "" then
    Blacklib:Notification("Thunder Z" , "Select Location First" , "Okay")
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
Blacklib:Notification("Thunder Z" , "Select Method First" , "Okay")
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

local Mastery = Masterys:NewSection("== Mastery Section ==")
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
local Collect = Collects:NewSection("== Collect Section ==")
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

local Egg = Eggs:NewSection("== Egg Section ==")
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

local Pets = Petss:NewSection("== Pets Section ==")
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
Pets:AddTextBox("Enter Pets Name", "Type Here", function(fusenamefunc)
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

Pets:AddTextBox("Enter Pets Name", "Type Here", function(dmnamefunc)
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


local Misc = Miscs:NewSection("== Misc Section ==")
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
