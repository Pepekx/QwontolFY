-- BLACKTRAP V1.0 FIXED_BUILD --
-- REALEASE DATE ON 17/02/2022 --
-- MADE By WANZ --
-- (WINDOWS AND MOBILE VERSION) --

game:GetService("StarterGui"):SetCore("SendNotification",{  
Title = "THUNDER Z",     
Text = "Welcome to Thunder Z",
Icon = "rbxassetid://9254918057",
Duration = 10,
Color = Success
})

if game.CoreGui:FindFirstChild("BlackTrap") then
   game.CoreGui:FindFirstChild("BlackTrap"):Destroy()
end


local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Blacklib = {}
if game.CoreGui:FindFirstChild("Board") then
   game.CoreGui:FindFirstChild("Board"):Destroy()
end

function Blacklib:Window(gametitle)
   local osfunc = {}
   local osfunc2 = {}
   local osfunc3 = {}
   local titlefunc = {}    
   local mintoggle = false
   local Points = Instance.new("Frame")
   local BlackTrap = Instance.new("ScreenGui")
   local Shadow = Instance.new("ImageLabel")
   local WindowFrame = Instance.new("Frame")
   local WindowCorner = Instance.new("UICorner")
   local BlackImage = Instance.new("ImageLabel")
   local BlackTitle = Instance.new("TextLabel")
   local Space = Instance.new("TextLabel")
   local GameTitle = Instance.new("TextLabel")
   local ServerTime = Instance.new("TextLabel")
   local MinButton = Instance.new("TextButton")
   local CloseButton = Instance.new("TextButton")
   local CloseImage = Instance.new("ImageButton")
   local ServerTime = Instance.new("TextButton")
   local ServerDate = Instance.new("TextButton")
   
   -- Propertiers --
   BlackTrap.Name = "BlackTrap"
   BlackTrap.Parent = game.CoreGui
   BlackTrap.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   
   Points.Name = "Points"
   Points.Parent = BlackTrap
   Points.BackgroundColor3 = _G.WindowBackgroundColor
   Points.BackgroundTransparency = 1.000
   Points.Size = UDim2.new(0, 800, 0, 600)
   Points.Position = UDim2.new(0, 320, 0, 90)
   
   Shadow.Name = "Shadow"
   Shadow.Parent = Points
   Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
   Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Shadow.BackgroundTransparency = 1.000
   Shadow.Position = UDim2.new(0, 295, 0, 170)
   Shadow.Size = UDim2.new(0, 0, 0, 0)
   Shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
   Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
   Shadow.ClipsDescendants = true
   
   Shadow:TweenSize(UDim2.new(0, 650, 0, 450), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
   
   WindowFrame.Name = "WindowFrame"
   WindowFrame.Parent = Shadow
   WindowFrame.BackgroundColor3 = _G.WindowBackgroundColor
   WindowFrame.Position = UDim2.new(0, 32, 0, 37)
   WindowFrame.BorderSizePixel = 0
   WindowFrame.Size = UDim2.new(0, 589, 0, 378)
   WindowFrame.ClipsDescendants = true
   
   WindowCorner.Name = "WindowCorner"
   WindowCorner.Parent = WindowFrame
   WindowCorner.CornerRadius = UDim.new(0, 5)
   
   BlackImage.Name = "BlackImage"
   BlackImage.Parent = WindowFrame
   BlackImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   BlackImage.BackgroundTransparency = 1.000
   BlackImage.Position = UDim2.new(0, 5, 0, 7)
   BlackImage.Size = UDim2.new(0, 25, 0, 25)
   BlackImage.Image = "rbxassetid://9247714199"
   BlackImage.ImageColor3 = _G.ImageColor
   
   BlackTitle.Name = "BlackTitle"
   BlackTitle.Parent = WindowFrame
   BlackTitle.BackgroundColor3 = _G.WindowBackgroundColor
   BlackTitle.BackgroundTransparency = 1.000
   BlackTitle.Position = UDim2.new(0, 33, 0, 7)
   BlackTitle.Size = UDim2.new(0, 50, 0, 25)
   BlackTitle.Font = Enum.Font.GothamBold
   BlackTitle.Text = ""
   BlackTitle.TextColor3 = _G.TitleTextColor
   BlackTitle.TextSize = 15.000
   BlackTitle.TextXAlignment = Enum.TextXAlignment.Left
   
   Space.Name = "Space"
   Space.Parent = WindowFrame
   Space.BackgroundColor3 = _G.WindowBackgroundColor
   Space.BackgroundTransparency = 1.000
   Space.Position = UDim2.new(0, 102, 0, 7)
   Space.Size = UDim2.new(0, 10, 0, 25)
   Space.Font = Enum.Font.GothamBold
   Space.Text = "|"
   Space.TextColor3 = Color3.fromRGB(0,255,255)
   Space.TextSize = 18.000
   
   GameTitle.Name = gametitle or "GameTitle"
   GameTitle.Parent = WindowFrame
   GameTitle.BackgroundColor3 = _G.WindowBackgroundColor
   GameTitle.BackgroundTransparency = 1.000
   GameTitle.Position = UDim2.new(0, 114, 0, 7)
   GameTitle.Size = UDim2.new(0, 100, 0, 25)
   GameTitle.Font = Enum.Font.GothamSemibold
   GameTitle.Text = gametitle
   GameTitle.TextColor3 = _G.TitleTextColor
   GameTitle.TextSize = 15.000
   GameTitle.TextXAlignment = Enum.TextXAlignment.Left
   
   
   CloseButton.Name = "CloseButton"
   CloseButton.Parent = WindowFrame
   CloseButton.BackgroundColor3 = _G.WindowBackgroundColor
   CloseButton.BackgroundTransparency = 1.000
   CloseButton.AutoButtonColor = false
   CloseButton.Position = UDim2.new(0, 560, 0, 7)
   CloseButton.Size = UDim2.new(0, 25, 0, 25)
   CloseButton.Font = Enum.Font.GothamSemibold
   CloseButton.TextColor3 = Color3.fromRGB(150, 0, 0)
   CloseButton.Text = "×"
   CloseButton.TextSize = 30.000

    CloseImage.Name = "CloseImage"
    CloseImage.Parent = Points
    CloseImage.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseImage.AutoButtonColor = false
    CloseImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseImage.BackgroundTransparency = 1.000
    CloseImage.Size = UDim2.new(0, 0, 0, 0)
    CloseImage.Position = UDim2.new(0, -370, 0, 170)
    CloseImage.Image = "rbxassetid://9254918057"
    
   
   ServerTime.Name = "ServerTime"
   ServerTime.Parent = WindowFrame
   ServerTime.BackgroundColor3 = _G.WindowBackgroundColor
   ServerTime.AutoButtonColor = false
   ServerTime.BackgroundTransparency = 1.000
   ServerTime.Position = UDim2.new(0, 260, 0, 17)
   ServerTime.Size = UDim2.new(0, 225, 0, 25)
   ServerTime.Font = Enum.Font.GothamSemibold
   ServerTime.Text = ""
   ServerTime.TextSize = 13.000
   ServerTime.TextColor3 = Color3.fromRGB(0, 255, 255)
   ServerTime.TextXAlignment = Enum.TextXAlignment.Center
   
   ServerDate.Name = "ServerDate"
   ServerDate.Parent = WindowFrame
   ServerDate.BackgroundColor3 = _G.WindowBackgroundColor
   ServerDate.AutoButtonColor = false
   ServerDate.BackgroundTransparency = 1.000
   ServerDate.Position = UDim2.new(0, 260, 0, 2)
   ServerDate.Size = UDim2.new(0, 225, 0, 25)
   ServerDate.Font = Enum.Font.GothamSemibold
   ServerDate.Text = ""
   ServerDate.TextSize = 13.000
   ServerDate.TextColor3 = Color3.fromRGB(0,255, 255)
   ServerDate.TextXAlignment = Enum.TextXAlignment.Center
   
   local LocalizationService = game:GetService("LocalizationService")
   local Players = game:GetService("Players")
   local player = Players.LocalPlayer
   local name = player.Name
   local result, code = pcall(function()
      return LocalizationService:GetCountryRegionForPlayerAsync(player)
   end)
   local Stopwatch = Instance.new("TextLabel")
   
   -- prop --
   
   

   Stopwatch.Name = "Stopwatch"
   Stopwatch.Parent = WindowFrame
   Stopwatch.BackgroundColor3 = _G.TabWindowColor
   Stopwatch.BackgroundTransparency = 1.000
   Stopwatch.Position = UDim2.new(0, 3, 0, 353)
   Stopwatch.Size = UDim2.new(0, 150, 0, 25)
   Stopwatch.Font = Enum.Font.GothamSemibold
   Stopwatch.Text = "" 
   Stopwatch.TextSize = 1.000
   Stopwatch.TextColor3 = Color3.fromRGB(0,255,255)
   Stopwatch.TextXAlignment = Enum.TextXAlignment.Center
   Stopwatch.TextScaled = true
   Stopwatch.TextWrapped = true
   
   local LineWindow = Instance.new("Frame")
   local TabWindow = Instance.new("ScrollingFrame")
   local TabWindowList = Instance.new("UIListLayout")
   local ContainerHold = Instance.new("Frame")
   local ContainerHoldCorner = Instance.new("UICorner")
   
   LineWindow.Name = "LineWindow"
   LineWindow.Parent = WindowFrame
   LineWindow.BackgroundColor3 = _G.TitleTextColor
   LineWindow.BorderSizePixel = 0
   LineWindow.Position = UDim2.new(0, 2, 0, 40)
   LineWindow.Size = UDim2.new(0, 583, 0, 2)
   
   TabWindow.Name = "TabWindow"
   TabWindow.Parent = WindowFrame
   TabWindow.BackgroundColor3 = _G.TabWindowColor
   TabWindow.BackgroundTransparency = 1.000
   TabWindow.BorderSizePixel = 0
   TabWindow.Position = UDim2.new(0, 3, 0, 50)
   TabWindow.Size = UDim2.new(0, 150, 0, 0)
   TabWindow.ScrollBarThickness = 0
   TabWindow.ClipsDescendants = true
   
   TabWindow:TweenSize(UDim2.new(0, 150, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 10.0, true)
   
   TabWindowList.Name = "TabWindowList"
   TabWindowList.Parent = TabWindow
   TabWindowList.FillDirection = Enum.FillDirection.Vertical
   TabWindowList.SortOrder = Enum.SortOrder.LayoutOrder
   TabWindowList.Padding = UDim.new(0, 3)
   TabWindowList.VerticalAlignment = Enum.VerticalAlignment.Top
   
   ContainerHold.Name = "ContainerHold"
   ContainerHold.Parent = WindowFrame
   ContainerHold.BackgroundColor3 = _G.ContainerColor
   ContainerHold.BorderSizePixel = 0
   ContainerHold.Position = UDim2.new(0, 160, 0, 50)
   ContainerHold.Size = UDim2.new(0, 425, 0, 325)
   
   ContainerHoldCorner.Name = "ContainerHoldCorner"
   ContainerHoldCorner.Parent = ContainerHold
   ContainerHoldCorner.CornerRadius = UDim.new(0, 5)
   
   TabWindow.CanvasSize = UDim2.new(0, 0 + TabWindowList.AbsoluteContentSize.Y, 0, 0)
   TabWindowList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
       TabWindow.CanvasSize = UDim2.new(0, 0 + TabWindowList.AbsoluteContentSize.Y, 0, 0)
   end)
   
   local opentog = false
   local closetog = false
   
   CloseImage.MouseEnter:Connect(function()
       TweenService:Create(CloseImage, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.8}):Play()
   end)
   CloseImage.MouseLeave:Connect(function()
       TweenService:Create(CloseImage, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
   end)
   
   CloseImage.MouseButton1Click:Connect(function()
       if opentog == true then
           TweenService:Create(CloseImage, TweenInfo.new(0.0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
           TweenService:Create(CloseImage, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, -370, 0, 170)}):Play()
           wait(.2)
           TweenService:Create(Shadow, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 650, 0, 450)}):Play()
           TweenService:Create(Shadow, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 295, 0, 170)}):Play()
           TweenService:Create(WindowFrame, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 589, 0, 378)}):Play()
           TweenService:Create(WindowFrame, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 32, 0, 37)}):Play()
           mintoggle = false
           MinButton.Text = "-"
           MinButton.TextSize = 35.000
           else
               TweenService:Create(CloseImage, TweenInfo.new(0.0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
               TweenService:Create(CloseImage, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, -370, 0, 170)}):Play()
               wait(.2)
               TweenService:Create(Shadow, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 650, 0, 450)}):Play()
               TweenService:Create(Shadow, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 295, 0, 170)}):Play()
               TweenService:Create(WindowFrame, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 589, 0, 378)}):Play()
               TweenService:Create(WindowFrame, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 32, 0, 37)}):Play()
               mintoggle = false
               MinButton.Text = "-"
               MinButton.TextSize = 35.000
       end
       opentog = not opentog
   end)
   
   CloseButton.MouseButton1Click:Connect(function()
       if closetog == true then
           TweenService:Create(Shadow, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
           wait(.2)
           TweenService:Create(CloseImage, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 70, 0, 70)}):Play()
           TweenService:Create(CloseImage, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, -95, 0, 170)}):Play()
           else
               TweenService:Create(Shadow, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
               wait(.2)
               TweenService:Create(CloseImage, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 70, 0, 70)}):Play()
               TweenService:Create(CloseImage, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, -95, 0, 170)}):Play()
       end
       closetog = not closetog
   end)
   
   MinButton.MouseButton1Click:Connect(function()
       if mintoggle == true then
           MinButton.Text = "-"
           MinButton.TextSize = 35.000
           TweenService:Create(WindowFrame, TweenInfo.new(.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 589, 0, 378)}):Play()
           TweenService:Create(WindowFrame, TweenInfo.new(.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 32, 0, 37)}):Play()
           TweenService:Create(Shadow, TweenInfo.new(.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 650, 0, 450)}):Play()
           else
               MinButton.Text = "+"
               MinButton.TextSize = 27.000
               TweenService:Create(WindowFrame, TweenInfo.new(.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 589, 0, 45)}):Play()
               TweenService:Create(WindowFrame, TweenInfo.new(.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 30, 0, 3)}):Play()
               TweenService:Create(Shadow, TweenInfo.new(.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 648, 0, 51)}):Play()
       end
           mintoggle = not mintoggle
   end)

   local gui = Shadow
   local gui2 = CloseImage
   local dragging
   local dragInput
   local dragStart
   local startPos
   
   local function update(input)
       local delta = input.Position - dragStart
       gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
       gui2.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
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
   gui2.InputBegan:Connect(function(input)
       if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
           dragging = true
           dragStart = input.Position
           startPos = gui2.Position
           
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
   gui2.InputChanged:Connect(function(input)
       if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
           dragInput = input
       end
   end)
   UserInputService.InputChanged:Connect(function(input)
       if input == dragInput and dragging then
           update(input)
       end
   end)
   
   function osfunc:Refresh(textadd)
       ServerTime.Text = textadd
   end
   function osfunc2:Refresh(textadd2)
       ServerDate.Text = textadd2
   end
   function osfunc3:Refresh(textadd3)
       Stopwatch.Text = textadd3
   end
   function titlefunc:Refresh(text)
       BlackTitle.Text = text
   end

   local function UpdateOS()
       local date = os.date("*t")
       local hour = (date.hour) % 24
       local ampm = hour < 12 and "AM" or "PM"
       local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
       local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
       osfunc:Refresh("Time : " .. timezone)
       osfunc2:Refresh("Date : " .. datetime .. " [" .. code .. "]")
   end
   spawn(function()
       while true do
           UpdateOS()
           game:GetService("RunService").RenderStepped:Wait()
       end
   end)
   
   
   
   local function UpdateTime()
      local GameTime = math.floor(workspace.DistributedGameTime+0.5)
      local Hour = math.floor(GameTime/(60^2))%24
      local Minute = math.floor(GameTime/(60^1))%60
      local Second = math.floor(GameTime/(60^0))%60
      osfunc3:Refresh("Server Time: "..Hour..":"..Minute..":"..Second)
      end
      spawn(function()
            while true do
               UpdateTime()
               game:GetService("RunService").RenderStepped:Wait()
            end
      end)
   
   
   spawn(function()
       while task.wait() do
           titlefunc:Refresh("") wait(.2) titlefunc:Refresh("T") wait(.2) titlefunc:Refresh("Th") wait(.2) titlefunc:Refresh("Thu") wait(.2) titlefunc:Refresh("Thun") wait(.2) titlefunc:Refresh("Thund") wait(.2) titlefunc:Refresh("Thunde") wait(.2) titlefunc:Refresh("Thunder") wait(.2) titlefunc:Refresh("ThunderZ")wait(.9) titlefunc:Refresh("Thunder ") wait(.2) titlefunc:Refresh("Thunder") wait(.2) titlefunc:Refresh("Thunde") wait(.2) titlefunc:Refresh("Thund") wait(.2) titlefunc:Refresh("Thun") wait(.2) titlefunc:Refresh("Thu") wait(.2) titlefunc:Refresh("Th") wait(.2) titlefunc:Refresh("T") wait(.2) titlefunc:Refresh("") wait(.2) wait(.3)
       end
   end)
   
   function Blacklib:Board(titleboard, text1, text2, text3, text4, text5)
       local noticefunc = {}
       local Board = Instance.new("ScreenGui")
       local Frame = Instance.new("Frame")
       local BoardFrame = Instance.new("Frame")
       local BoardCorner = Instance.new("UICorner")
       local BoardUIStroke = Instance.new("UIStroke")
       local BoardDesc = Instance.new("TextLabel")
       local BoardNotice = Instance.new("TextButton")
       local NB2 = Instance.new("TextButton")
       local NB3 = Instance.new("TextButton")
       local NB4 = Instance.new("TextButton")
       local NB5 = Instance.new("TextButton")
       local BoardClose = Instance.new("TextButton")
       local NoticeFrame = Instance.new("Frame")
       
       -- Properties --
       Board.Name = titleboard or "Board"
       Board.Parent = game.CoreGui
       Board.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
       
       Frame.Name = titleboard or "Frame"
       Frame.Parent = Board
       Frame.BackgroundColor3 = _G.WindowBackgroundColor
       Frame.BackgroundTransparency = 1.000
       Frame.Position = UDim2.new(0, 884, 0, 79)
       Frame.Size = UDim2.new(0, 350, 0, 200)
       
       TweenService:Create(Frame, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.9}):Play()
       wait(0.4)
       
       BoardFrame.Name = "BoardFrame"
       BoardFrame.Parent = Frame
       BoardFrame.AnchorPoint = Vector2.new(0, 0)
       BoardFrame.ClipsDescendants = true
       BoardFrame.BackgroundColor3 = _G.WindowBackgroundColor
       BoardFrame.BorderSizePixel = 0
       BoardFrame.Position = UDim2.new(0, 0, 0, 0)
       BoardFrame.Size = UDim2.new(0, 0, 0, 0)
       
       BoardFrame:TweenSize(UDim2.new(0, 350, 0, 200), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
       
       BoardCorner.Name = "BoardCorner"
       BoardCorner.Parent = BoardFrame
       BoardCorner.CornerRadius = UDim.new(0, 5)
       
       BoardUIStroke.Name = "BoardUIStroke"
       BoardUIStroke.Parent = BoardFrame
       BoardUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
       BoardUIStroke.Color = _G.SectionColor
       BoardUIStroke.LineJoinMode = Enum.LineJoinMode.Round
       BoardUIStroke.Thickness = 1
       BoardUIStroke.Transparency = 0
       BoardUIStroke.Enabled = true
       BoardUIStroke.Archivable = true
       
       BoardDesc.Name = "BoardDesc"
       BoardDesc.Parent = BoardFrame
       BoardDesc.BackgroundColor3 = _G.WindowBackgroundColor
       BoardDesc.BackgroundTransparency = 1.000
       BoardDesc.Position = UDim2.new(0, 25, 0, 3)
       BoardDesc.Size = UDim2.new(0, 300, 0, 30)
       BoardDesc.Font = Enum.Font.Code
       BoardDesc.Text = titleboard
       BoardDesc.TextSize = 20.000
       BoardDesc.TextColor3 = Color3.fromRGB(250, 0, 0)
       BoardDesc.TextXAlignment = Enum.TextXAlignment.Center
       
       NoticeFrame.Name = "NoticeFrame"
       NoticeFrame.Parent = BoardFrame
       NoticeFrame.BackgroundColor3 = _G.SectionColor
       NoticeFrame.BorderSizePixel = 0
       NoticeFrame.Position = UDim2.new(0, 5, 0, 37)
       NoticeFrame.Size = UDim2.new(0, 340, 0, 1)
       
       BoardNotice.Name = "BoardNotice"
       BoardNotice.Parent = BoardFrame
       BoardNotice.BackgroundColor3 = _G.WindowBackgroundColor
       BoardNotice.BackgroundTransparency = 1.000
       BoardNotice.AutoButtonColor = false
       BoardNotice.Position = UDim2.new(0, 5, 0, 50)
       BoardNotice.Size = UDim2.new(0, 340, 0, 20)
       BoardNotice.Font = Enum.Font.GothamSemibold
       BoardNotice.ZIndex = 2
       BoardNotice.Text = text1
       BoardNotice.TextSize = 14.000
       BoardNotice.TextColor3 = _G.SectionTextColor
       BoardNotice.TextXAlignment = Enum.TextXAlignment.Left
       
       NB2.Name = "NB2"
       NB2.Parent = BoardFrame
       NB2.BackgroundColor3 = _G.WindowBackgroundColor
       NB2.BackgroundTransparency = 1.000
       NB2.AutoButtonColor = false
       NB2.Position = UDim2.new(0, 5, 0, 80)
       NB2.Size = UDim2.new(0, 340, 0, 20)
       NB2.Font = Enum.Font.GothamSemibold
       NB2.ZIndex = 2
       NB2.Text = text2
       NB2.TextSize = 14.000
       NB2.TextColor3 = _G.SectionTextColor
       NB2.TextXAlignment = Enum.TextXAlignment.Left
       
       NB3.Name = "NB3"
       NB3.Parent = BoardFrame
       NB3.BackgroundColor3 = _G.WindowBackgroundColor
       NB3.BackgroundTransparency = 1.000
       NB3.AutoButtonColor = false
       NB3.Position = UDim2.new(0, 5, 0, 110)
       NB3.Size = UDim2.new(0, 340, 0, 20)
       NB3.Font = Enum.Font.GothamSemibold
       NB3.ZIndex = 2
       NB3.Text = text3
       NB3.TextSize = 14.000
       NB3.TextColor3 = _G.SectionTextColor
       NB3.TextXAlignment = Enum.TextXAlignment.Left
       
       NB4.Name = "NB4"
       NB4.Parent = BoardFrame
       NB4.BackgroundColor3 = _G.WindowBackgroundColor
       NB4.BackgroundTransparency = 1.000
       NB4.AutoButtonColor = false
       NB4.Position = UDim2.new(0, 5, 0, 140)
       NB4.Size = UDim2.new(0, 340, 0, 20)
       NB4.Font = Enum.Font.GothamSemibold
       NB4.ZIndex = 2
       NB4.Text = text4
       NB4.TextSize = 14.000
       NB4.TextColor3 = _G.SectionTextColor
       NB4.TextXAlignment = Enum.TextXAlignment.Left
       
       NB5.Name = "NB5"
       NB5.Parent = BoardFrame
       NB5.BackgroundColor3 = _G.WindowBackgroundColor
       NB5.BackgroundTransparency = 1.000
       NB5.AutoButtonColor = false
       NB5.Position = UDim2.new(0, 5, 0, 170)
       NB5.Size = UDim2.new(0, 340, 0, 20)
       NB5.Font = Enum.Font.GothamSemibold
       NB5.ZIndex = 2
       NB5.Text = text5
       NB5.TextSize = 14.000
       NB5.TextColor3 = _G.SectionTextColor
       NB5.TextXAlignment = Enum.TextXAlignment.Left
       
       BoardClose.Name = "BoardClose"
       BoardClose.Parent = BoardFrame
       BoardClose.BackgroundColor3 = _G.WindowBackgroundColor
       BoardClose.BackgroundTransparency = 1.000
       BoardClose.AutoButtonColor = true
       BoardClose.Position = UDim2.new(0, 325, 0, 5)
       BoardClose.Size = UDim2.new(0, 25, 0, 25)
       BoardClose.Font = Enum.Font.GothamSemibold
       BoardClose.Text = "×"
       BoardClose.TextSize = 30.000
       BoardClose.TextColor3 = Color3.fromRGB(150, 0, 0)
       
       BoardClose.MouseButton1Click:Connect(function()
           BoardFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
           wait(0.4)
           TweenService:Create(Frame, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
           wait(.3)
           Frame:Destroy()
           wait(.1)
           game.CoreGui:FindFirstChild("Board"):Destroy()
       end)
       
       local gui = Frame
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
       
       function noticefunc:Refresh(tochange)
           BoardNotice.Text = tochange
       end
       return noticefunc
   end
   coroutine.wrap(function()
       while wait() do
       end
   end)()
   
   function Blacklib:Notification(textdesc)
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
       
       NotificationHold.Name = "NotificationHold"
       NotificationHold.Parent = WindowFrame
       NotificationHold.BackgroundColor3 = _G.WindowBackgroundColor
       NotificationHold.BackgroundTransparency = 0.4
       NotificationHold.BorderSizePixel = 0
       NotificationHold.Size = UDim2.new(0, 589, 0, 378)
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
       NotificationFrame.BackgroundColor3 = Color3.fromRGB(12,12,12)
       NotificationFrame.BorderColor3 = _G.SectionColor
       NotificationFrame.BorderSizePixel = 0
       NotificationFrame.ClipsDescendants = true
       NotificationFrame.Position = UDim2.new(0, 295, 0, 190)
       NotificationFrame.Size = UDim2.new(0, 0, 0, 0)		

       NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
       
       NotifCorner.Name = "NotifCorner"
       NotifCorner.Parent = NotificationFrame
       NotifCorner.CornerRadius = UDim.new(0, 5)
       
       NotifHolderUIStroke.Name = "NotifHolderUIStroke"
       NotifHolderUIStroke.Parent = NotificationFrame
       NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
       NotifHolderUIStroke.Color = _G.SectionColor
       NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
       NotifHolderUIStroke.Thickness = 1
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
       OkayBtn.Font = Enum.Font.SourceSans
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
       OkayBtnTitle.Font = Enum.Font.ArialBold
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
       NotificationTitle.Text = "Notification"
       NotificationTitle.TextColor3 = Color3.fromRGB(0,255,255)
       NotificationTitle.TextSize = 22.000
       
       Line.Name = "Line"
       Line.Parent = NotificationFrame
       Line.BackgroundColor3 = _G.SectionColor
       Line.BorderSizePixel = 0
       Line.Position = UDim2.new(0, 10, 0, 40)
       Line.Size = UDim2.new(0, 380, 0, 1)
       
       NotificationDesc.Name = "NotificationDesc"
       NotificationDesc.Parent = NotificationFrame
       NotificationDesc.BackgroundColor3 = _G.SectionColor
       NotificationDesc.BackgroundTransparency = 1.000
       NotificationDesc.Position = UDim2.new(0, 10, 0, 70)
       NotificationDesc.Size = UDim2.new(0, 380, 0, 100)
       NotificationDesc.Font = Enum.Font.GothamSemibold
       NotificationDesc.Text = textdesc
       NotificationDesc.TextColor3 = _G.SectionTextColor
       NotificationDesc.TextSize = 16.000
       NotificationDesc.TextWrapped = true
       NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
       NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
       
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
   
   local Tabs = {}
   function Tabs:Tab(tabtitle, img)
       local TabFrame = Instance.new("TextButton")
       local TabCorner = Instance.new("UICorner")
       local TabTitle = Instance.new("TextLabel")
       local TabImage = Instance.new("ImageLabel")
       
       -- Prop --
       TabFrame.Name = tabtitle or "TabFrame"
       TabFrame.Parent = TabWindow
       TabFrame.BackgroundColor3 = _G.TabThemeColor
       TabFrame.BackgroundTransparency = 1.000
       TabFrame.BorderSizePixel = 0
       TabFrame.AutoButtonColor = false
       TabFrame.Size = UDim2.new(0, 150, 0, 30)
       TabFrame.Font = Enum.Font.GothamSemibold
       TabFrame.Text = ""
       TabFrame.TextColor3 = _G.TabTextColor
       TabFrame.TextSize = 15.000
       
       TabCorner.Name = tabtitle or "TabCorner"
       TabCorner.Parent = TabFrame
       TabCorner.CornerRadius = UDim.new(0, 10)
       
       TabImage.Name = tabtitle or "TabImage"
       TabImage.Parent = TabFrame
       TabImage.BackgroundColor3 = _G.TabWindowColor
       TabImage.BackgroundTransparency = 1.000
       TabImage.Position = UDim2.new(0, 3, 0, 4)
       TabImage.Size = UDim2.new(0, 20, 0, 20)
       TabImage.Image = img or "rbxassetid://8666601749"
       TabImage.ImageColor3 = _G.TabImageColor
       
       TabTitle.Name = tabtitle or "TabTitle"
       TabTitle.Parent = TabFrame
       TabTitle.BackgroundColor3 = _G.TabWindowColor
       TabTitle.BackgroundTransparency = 1.000
       TabTitle.BorderSizePixel = 0
       TabTitle.Position = UDim2.new(0, 30, 0, 2.5)
       TabTitle.Size = UDim2.new(0, 120, 0, 25)
       TabTitle.Font = Enum.Font.GothamSemibold
       TabTitle.Text = tabtitle or "Put Tab Title"
       TabTitle.TextColor3 = _G.TabTextColor
       TabTitle.TextSize = 15.000
       TabTitle.TextXAlignment = Enum.TextXAlignment.Left
       
       local Container = Instance.new("ScrollingFrame")
       local ContainerLayout = Instance.new("UIListLayout")
       
       -- Prop --
       Container.Name = "Container"
       Container.Parent = ContainerHold
       Container.AnchorPoint = Vector2.new(0, 0)
       Container.BackgroundColor3 = _G.ContainerColor
       Container.BackgroundTransparency = 1.000
       Container.Position = UDim2.new(0, 0, 0, 5)
       Container.Size = UDim2.new(0, 0, 0, 0)
       Container.ScrollBarThickness = 0
       Container.CanvasSize = UDim2.new(0, 0, 0, 0)
       Container.ClipsDescendants = true
       Container.Visible = true
       
       ContainerLayout.Name = "ContainerLayout"
       ContainerLayout.Parent = Container
       ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
       ContainerLayout.Padding = UDim.new(0, 3)
       
       -- function --
       TabFrame.MouseButton1Click:Connect(function()
           
           for i,v in pairs(ContainerHold:GetChildren()) do
               if v.Name == "Container" then
                   v:TweenSize(UDim2.new(0, 425, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .5, true)
               end
           end
           for i,v in pairs(TabWindow:GetChildren()) do
               if v.ClassName == "TextButton" then
                   TweenService:Create(v, TweenInfo.new(.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                   TweenService:Create(TabFrame, TweenInfo.new(.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.7}):Play()
               end
           end
           wait(.3)
           Container:TweenSize(UDim2.new(0, 425, 0, 315), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .5, true)
       end)
       TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
       
       local NewSection = {}
       function NewSection:Button(buttontitle, callback)
           local ButtonFrame = Instance.new("Frame")
           local Button = Instance.new("TextButton")
           local ButtonTitle = Instance.new("TextLabel")
           local ButtonCorner = Instance.new("UICorner")
           
           --- Properties ---
           ButtonFrame.Name = buttontitle or "ButtonFrame"
           ButtonFrame.Parent = Container
           ButtonFrame.BackgroundColor3 = _G.SectionColor
           ButtonFrame.BackgroundTransparency = 1.000
           ButtonFrame.BorderSizePixel = 0
           ButtonFrame.Size = UDim2.new(0, 425, 0, 34)
           
           Button.Name = "Button"
           Button.Parent = ButtonFrame
           Button.AutoButtonColor = false
           Button.BackgroundColor3 = Color3.fromRGB(0,255,255)
           Button.BorderSizePixel = 0
           Button.Position = UDim2.new(0, 50, 0, 2)
           Button.Size = UDim2.new(0, 325, 0, 30)
           Button.Font = Enum.Font.GothamSemibold
           Button.Text = ""
           Button.TextColor3 = _G.SectionTextColor
           Button.TextSize = 15.000
           
           ButtonTitle.Name = "ButtonTitle"
           ButtonTitle.Parent = Button
           ButtonTitle.BackgroundColor3 = _G.SectionColor
           ButtonTitle.BackgroundTransparency = 1.000
           ButtonTitle.Position = UDim2.new(0, 0, 0, 3)
           ButtonTitle.Size = UDim2.new(0, 325, 0, 25)
           ButtonTitle.Font = Enum.Font.GothamSemibold
           ButtonTitle.Text = buttontitle or "Button Title"
           ButtonTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
           ButtonTitle.TextSize = 14.000
           ButtonTitle.TextXAlignment = Enum.TextXAlignment.Center
           
           ButtonCorner.Name = "ButtonCorner"
           ButtonCorner.Parent = Button
           ButtonCorner.CornerRadius = UDim.new(0, 5)
           
           -- function --
           Button.MouseButton1Down:Connect(function()
               TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(140, 140, 140)}):Play()
               TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 325, 0, 27)}):Play()
               TweenService:Create(ButtonTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(70, 70, 70)}):Play()
               TweenService:Create(ButtonTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 2)}):Play()
           end)
           
           Button.MouseButton1Up:Connect(function()
               TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(180, 180, 180)}):Play()
               TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 325, 0, 30)}):Play()
               TweenService:Create(ButtonTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(0, 255,255)}):Play()
               TweenService:Create(ButtonTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 3)}):Play()
           end)
           
           Button.MouseButton1Click:Connect(function()
               pcall(function()
                   callback()
               end)
           end)
           
           Container.CanvasSize = UDim2.new(0, 0, 0, 0 + ContainerLayout.Padding.Offset + ContainerLayout.AbsoluteContentSize.Y)
       end
       
       function NewSection:Toggle(TogInfo, callback)
           local toggle = false
           local CheckFrame = Instance.new("Frame")
           local CheckFrame2 = Instance.new("Frame")
           local CheckCorner = Instance.new("UICorner")
           local CheckUIStroke = Instance.new("UIStroke")
           local CheckImage = Instance.new("ImageLabel")
           local CheckSpace = Instance.new("TextLabel")
           local CheckTitle = Instance.new("TextLabel")
           local CheckButton = Instance.new("ImageButton")
           
           -- Properties -- 
           CheckFrame.Name = TogInfo or "CheckFrame"
           CheckFrame.Parent = Container
           CheckFrame.BackgroundColor3 = _G.SectionColor
           CheckFrame.BackgroundTransparency = 1.000
           CheckFrame.BorderSizePixel = 0
           CheckFrame.Size = UDim2.new(0, 425, 0, 36)
           
           CheckFrame2.Name = "CheckFrame2"
           CheckFrame2.Parent = CheckFrame
           CheckFrame2.BackgroundColor3 = _G.SectionColor
           CheckFrame2.BackgroundTransparency = 1.000
           CheckFrame2.BorderSizePixel = 0
           CheckFrame2.Position = UDim2.new(0, 10, 0, 2)
           CheckFrame2.Size = UDim2.new(0, 405, 0, 32)
           
           CheckImage.Name = "CheckImage"
           CheckImage.Parent = CheckFrame2
           CheckImage.BackgroundColor3 = _G.SectionColor
           CheckImage.BackgroundTransparency = 1.000
           CheckImage.BorderSizePixel = 0
           CheckImage.Position = UDim2.new(0, 5, 0, 7.5)
           CheckImage.Size = UDim2.new(0, 18, 0, 18)
           CheckImage.Image = "rbxassetid://8825010231"
           CheckImage.ImageColor3 = _G.SectionTextColor
           
           CheckSpace.Name = "CheckSpace"
           CheckSpace.Parent = CheckFrame2
           CheckSpace.BackgroundColor3 = _G.SectionColor
           CheckSpace.BackgroundTransparency = 1.000
           CheckSpace.Position = UDim2.new(0, 30, 0, 4.5)
           CheckSpace.Size = UDim2.new(0, 15, 0, 25)
           CheckSpace.Font = Enum.Font.GothamSemibold
           CheckSpace.Text = "|"
           CheckSpace.TextSize = 14.000
           CheckSpace.TextColor3 = _G.SectionTextColor
           CheckSpace.TextXAlignment = Enum.TextXAlignment.Center
           
           CheckTitle.Name = "CheckTitle"
           CheckTitle.Parent = CheckFrame2
           CheckTitle.BackgroundColor3 = _G.SectionColor
           CheckTitle.BackgroundTransparency = 1.000
           CheckTitle.Position = UDim2.new(0, 50, 0, 4.5)
           CheckTitle.Size = UDim2.new(0, 325, 0, 25)
           CheckTitle.Font = Enum.Font.GothamSemibold
           CheckTitle.Text = TogInfo or "checkBox Title"
           CheckTitle.TextColor3 = _G.SectionTextColor
           CheckTitle.TextSize = 14.000
           CheckTitle.TextXAlignment = Enum.TextXAlignment.Left
           
           CheckButton.Name = "CheckButton"
           CheckButton.Parent = CheckFrame2
           CheckButton.BackgroundColor3 = _G.WindowBackgroundColor
           CheckButton.BackgroundTransparency = 1.000
           CheckButton.Position = UDim2.new(0, 375, 0, 4.5)
           CheckButton.Size = UDim2.new(0, 25, 0, 25)
           CheckButton.ZIndex = 2
           CheckButton.Image = "rbxassetid://3926311105"
           CheckButton.ImageColor3 = _G.SectionColor
           CheckButton.ImageRectOffset = Vector2.new(940, 784)
           CheckButton.ImageRectSize = Vector2.new(48, 48)
           
           CheckButton.MouseButton1Click:Connect(function()
               if toggle then
                   TweenService:Create(CheckButton.Parent.CheckTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                   CheckButton.ImageRectOffset = Vector2.new(940, 784)
                   TweenService:Create(CheckButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionColor}):Play()
                   TweenService:Create(CheckSpace, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(CheckImage, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionColor}):Play()
                   toggle = false
                   pcall(function()
                       callback(toggle)
                   end)
               else
                   TweenService:Create(CheckButton.Parent.CheckTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                   CheckButton.ImageRectOffset = Vector2.new(4, 836)
                   TweenService:Create(CheckButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                   TweenService:Create(CheckSpace, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(CheckImage, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                   toggle = true
                   pcall(function()
                       callback(toggle)
                   end)
               end
           end)
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
       end
       
       function NewSection:Dropdown(droptitle, list, callback)
           local dropfunc = {}
           local ItemCount = 0
           local FrameSize = 0
           local DropToggled = false
           local DropSizeFrame = Instance.new("Frame")
           local DropCover = Instance.new("Frame")
           local DropImage = Instance.new("ImageLabel")
           local DropSpace = Instance.new("TextLabel")
           local DropTitle = Instance.new("TextLabel")
           local DropArrow = Instance.new("ImageButton")
           
           -- Properties --
           DropSizeFrame.Name = droptitle or "DropSizeFrame"
           DropSizeFrame.Parent = Container
           DropSizeFrame.BackgroundColor3 = _G.SectionColor
           DropSizeFrame.BackgroundTransparency = 1.000
           DropSizeFrame.Size = UDim2.new(0, 425, 0, 68)
           
           DropCover.Name = "DropCover"
           DropCover.Parent = DropSizeFrame
           DropCover.BackgroundColor3 = _G.SectionColor
           DropCover.BackgroundTransparency = 1.000
           DropCover.Position = UDim2.new(0, 10, 0, 2)
           DropCover.Size = UDim2.new(0, 405, 0, 32)
           
           DropImage.Name = "DropImage"
           DropImage.Parent = DropCover
           DropImage.BackgroundColor3 = _G.SectionColor
           DropImage.BackgroundTransparency = 1.000
           DropImage.Position = UDim2.new(0, 5, 0, 8)
           DropImage.Size = UDim2.new(0, 18, 0, 18)
           DropImage.Image = "rbxassetid://8825005073"
           DropImage.ImageColor3 = _G.SectionTextColor
           
           DropSpace.Name = "DropSpace"
           DropSpace.Parent = DropCover
           DropSpace.BackgroundColor3 = _G.SectionColor
           DropSpace.BackgroundTransparency = 1.000
           DropSpace.Position = UDim2.new(0, 30, 0, 4.5)
           DropSpace.Size = UDim2.new(0, 15, 0, 25)
           DropSpace.Font = Enum.Font.GothamSemibold
           DropSpace.Text = "|"
           DropSpace.TextSize = 14.000
           DropSpace.TextColor3 = _G.SectionTextColor
           DropSpace.TextXAlignment = Enum.TextXAlignment.Center
           
           DropTitle.Name = "DropTitle"
           DropTitle.Parent = DropCover
           DropTitle.BackgroundColor3 = _G.SectionColor
           DropTitle.BackgroundTransparency = 1.000
           DropTitle.Position = UDim2.new(0, 50, 0, 4.5)
           DropTitle.Size = UDim2.new(0, 325, 0, 25)
           DropTitle.Font = Enum.Font.GothamSemibold
           DropTitle.Text = droptitle or "Drop Title"
           DropTitle.TextColor3 = _G.SectionTextColor
           DropTitle.TextSize = 14.000
           DropTitle.TextXAlignment = Enum.TextXAlignment.Left
           
           DropArrow.Name = "DropArrow"
           DropArrow.Parent = DropCover
           DropArrow.BackgroundColor3 = _G.SectionColor
           DropArrow.BackgroundTransparency = 1.000
           DropArrow.Position = UDim2.new(0, 377, 0, 7)
           DropArrow.Size = UDim2.new(0, 21, 0, 21)
           DropArrow.Image = "rbxassetid://8530745436"
           DropArrow.ImageColor3 = _G.SectionColor
           
           local DropFrameList = Instance.new("Frame")
           local DropCornerList = Instance.new("UICorner")
           local DropStrokeList = Instance.new("UIStroke")
           local DropTextList = Instance.new("TextLabel")
           
           DropFrameList.Name = "DropFrameList"
           DropFrameList.Parent = DropSizeFrame
           DropFrameList.BackgroundColor3 = _G.SectionColor
           DropFrameList.BackgroundTransparency = 1.000
           DropFrameList.Position = UDim2.new(0, 15, 0, 34)
           DropFrameList.Size = UDim2.new(0, 395, 0, 30)
           
           DropCornerList.Name = "DropCornerList"
           DropCornerList.Parent = DropFrameList
           DropCornerList.CornerRadius = UDim.new(0, 5)
           
           DropStrokeList.Name = "DropStrokeList"
           DropStrokeList.Parent = DropFrameList
           DropStrokeList.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
           DropStrokeList.Color = _G.SectionColor
           DropStrokeList.LineJoinMode = Enum.LineJoinMode.Round
           DropStrokeList.Thickness = 1
           DropStrokeList.Transparency = 0
           DropStrokeList.Enabled = true
           DropStrokeList.Archivable = true
           
           DropTextList.Name = "DropTextList"
           DropTextList.Parent = DropFrameList
           DropTextList.BackgroundColor3 = _G.SectionColor
           DropTextList.BackgroundTransparency = 1.000
           DropTextList.Position = UDim2.new(0, 0, 0, 3)
           DropTextList.Size = UDim2.new(0, 395, 0, 26)
           DropTextList.Font = Enum.Font.GothamSemibold
           DropTextList.Text = v or "...."
           DropTextList.TextColor3 = _G.SectionTextColor
           DropTextList.TextSize = 14.000
           DropTextList.TextXAlignment = Enum.TextXAlignment.Center
           
           local ItemFramez = Instance.new("Frame")
           local DropItemFrame = Instance.new("Frame")
           local DropItemCorner = Instance.new("UICorner")
           local DropItemStroke = Instance.new("UIStroke")
           local DropItemScroll = Instance.new("ScrollingFrame")
           local DropItemLayout = Instance.new("UIListLayout")
           
           ItemFramez.Name = droptitle or "ItemFramez"
           ItemFramez.Parent = Container
           ItemFramez.BackgroundColor3 = _G.SectionColor
           ItemFramez.BackgroundTransparency = 1.000
           ItemFramez.Size = UDim2.new(0, 425, 0, 0)
           
           
           DropItemFrame.Name = "DropItemFrame"
           DropItemFrame.Parent = ItemFramez
           DropItemFrame.BackgroundColor3 = _G.SectionColor
           DropItemFrame.BackgroundTransparency = 1.000
           DropItemFrame.Position = UDim2.new(0, 15, 0, 0)
           DropItemFrame.Size = UDim2.new(0, 395, 0, 0)
           
           
           DropItemCorner.Name = "DropItemCorner"
           DropItemCorner.Parent = DropItemFrame
           DropItemCorner.CornerRadius = UDim.new(0, 5)
           
           DropItemStroke.Name = "DropItemStroke"
           DropItemStroke.Parent = DropItemFrame
           DropItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
           DropItemStroke.Color = _G.SectionColor
           DropItemStroke.LineJoinMode = Enum.LineJoinMode.Round
           DropItemStroke.Thickness = 0
           DropItemStroke.Transparency = 0
           DropItemStroke.Enabled = true
           DropItemStroke.Archivable = true
           
           DropItemScroll.Name = "DropItemScroll"
           DropItemScroll.Parent = DropItemFrame
           DropItemScroll.BackgroundColor3 = _G.SectionColor
           DropItemScroll.BackgroundTransparency = 1.000
           DropItemScroll.Position = UDim2.new(0, 0, 0, 0)
           DropItemScroll.Size = UDim2.new(0, 395, 0, 0)
           DropItemScroll.ScrollBarThickness = 0
           DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
           
           DropItemLayout.Name = "DropItemLayout"
           DropItemLayout.Parent = DropItemScroll
           DropItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
           DropItemLayout.Padding = UDim.new(0, 2)
           
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
           
           DropArrow.MouseButton1Click:Connect(function()
               if DropToggled == false then
                   TweenService:Create(DropItemStroke, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Thickness = 1}):Play()
                   ItemFramez:TweenSize(UDim2.new(0, 425, 0, FrameSize), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                   DropItemFrame:TweenSize(UDim2.new(0, 395, 0, FrameSize), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                   DropItemScroll:TweenSize(UDim2.new(0, 395, 0, FrameSize), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 180}):Play()
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionOn}):Play()
                   TweenService:Create(DropTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(DropSpace, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(DropImage, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionOn}):Play()
                   
                   Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                   else
                   TweenService:Create(DropItemStroke, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Thickness = 0}):Play()
                   ItemFramez:TweenSize(UDim2.new(0, 425, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   DropItemFrame:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   DropItemScroll:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
                   TweenService:Create(DropTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(DropSpace, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(DropImage, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
                   
                   Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
               DropToggled = not DropToggled
           end)
           
           for i,v in next, list do
               ItemCount = ItemCount + 1
               if ItemCount == 1 then
                   FrameSize = 39
               elseif ItemCount == 2 then
                   FrameSize = 69
               elseif ItemCount >= 3 then
                   FrameSize = 100
               end
               
               local ItemFrame = Instance.new("Frame")
               local ItemList = Instance.new("TextButton")
               local ItemListCorner = Instance.new("UICorner")
               
               ItemFrame.Name = "ItemFrame"
               ItemFrame.Parent = DropItemScroll
               ItemFrame.BackgroundColor3 = _G.SectionColor
               ItemFrame.BackgroundTransparency = 1.000
               ItemFrame.Size = UDim2.new(0, 395, 0, 26)
               
               ItemList.Name = "ItemList"
               ItemList.Parent = ItemFrame
               ItemList.BackgroundColor3 = _G.SectionOn
               ItemList.BackgroundTransparency = 1.000
               ItemList.Position = UDim2.new(0, 10, 0, 2)
               ItemList.Size = UDim2.new(0, 375, 0, 24)
               ItemList.AutoButtonColor = false
               ItemList.Font = Enum.Font.GothamSemibold
               ItemList.TextColor3 = _G.SectionTextColor
               ItemList.TextSize = 14.000
               ItemList.Text = "• " .. v
               ItemList.TextXAlignment = Enum.TextXAlignment.Center
               
               ItemListCorner.Name = "ItemListCorner"
               ItemListCorner.Parent = ItemList
               ItemListCorner.CornerRadius = UDim.new(0, 10)
               
               ItemList.MouseEnter:Connect(function()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.8}):Play()
               end)
               ItemList.MouseLeave:Connect(function()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
               end)
               ItemList.MouseButton1Click:Connect(function()
                   DropTextList.Text = "• " .. v
                   pcall(callback, v)
                   DropToggled = false
                   TweenService:Create(DropItemStroke, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Thickness = 0}):Play()
                   ItemFramez:TweenSize(UDim2.new(0, 425, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   DropItemFrame:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   DropItemScroll:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
                   TweenService:Create(DropTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(DropSpace, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(DropImage, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
                   TweenService:Create(DropTextList, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   
                   Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end)
               DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y + 15)
           end
           
           function dropfunc:Clear()
               DropTextList.Text = "...."
               FrameSize = 0
               ItemCount = 0
               for _, alllist in pairs(DropItemScroll:GetChildren()) do
                   if alllist:IsA("Frame") then
                       alllist:Destroy()
                   end
               end
               
               TweenService:Create(DropItemStroke, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Thickness = 0}):Play()
               ItemFramez:TweenSize(UDim2.new(0, 425, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               DropItemFrame:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               DropItemScroll:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
               TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
               TweenService:Create(DropTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
               TweenService:Create(DropSpace, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
               TweenService:Create(DropImage, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
               TweenService:Create(DropTextList, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
               
               Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
           end
           
           function dropfunc:Add(toadd)
               ItemCount = ItemCount + 1
               if ItemCount == 1 then
                   FrameSize = 39
               elseif ItemCount == 2 then
                   FrameSize = 69
               elseif ItemCount >= 3 then
                   FrameSize = 100
               end
               
               local ItemFrame = Instance.new("Frame")
               local ItemList = Instance.new("TextButton")
               local ItemListCorner = Instance.new("UICorner")
               
               ItemFrame.Name = "ItemFrame"
               ItemFrame.Parent = DropItemScroll
               ItemFrame.BackgroundColor3 = _G.SectionColor
               ItemFrame.BackgroundTransparency = 1.000
               ItemFrame.Size = UDim2.new(0, 395, 0, 26)
               
               ItemList.Name = "ItemList"
               ItemList.Parent = ItemFrame
               ItemList.BackgroundColor3 = _G.SectionOn
               ItemList.BackgroundTransparency = 1.000
               ItemList.Position = UDim2.new(0, 10, 0, 2)
               ItemList.Size = UDim2.new(0, 375, 0, 24)
               ItemList.AutoButtonColor = false
               ItemList.Font = Enum.Font.GothamSemibold
               ItemList.TextColor3 = _G.SectionTextColor
               ItemList.TextSize = 14.000
               ItemList.Text = "• " .. toadd
               ItemList.TextXAlignment = Enum.TextXAlignment.Center
               
               ItemListCorner.Name = "ItemListCorner"
               ItemListCorner.Parent = ItemList
               ItemListCorner.CornerRadius = UDim.new(0, 10)
               
               ItemList.MouseEnter:Connect(function()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.8}):Play()
               end)
               ItemList.MouseLeave:Connect(function()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
               end)
               
               ItemList.MouseButton1Click:Connect(function()
                   DropTextList.Text = "• " .. toadd
                   pcall(callback, toadd)
                   DropToggled = false
                   TweenService:Create(DropItemStroke, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Thickness = 0}):Play()
                   ItemFramez:TweenSize(UDim2.new(0, 425, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   DropItemFrame:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   DropItemScroll:TweenSize(UDim2.new(0, 395, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                   TweenService:Create(DropArrow, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
                   TweenService:Create(DropTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(DropSpace, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(DropImage, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionColor}):Play()
                   TweenService:Create(DropTextList, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   
                   Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end)
               DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y + 15)
           end
           return dropfunc
       end
       
       function NewSection:Slider(slidertitle, minvalue, maxvalue, start, callback)
           local sliderfunc = {}
           slidertitle = slidertitle or Slider
           local SliderFrame = Instance.new("Frame")
           local SliderImage = Instance.new("ImageLabel")
           local SliderSpace = Instance.new("TextLabel")
           local SliderTitled = Instance.new("TextLabel")
           local SliderInput = Instance.new("Frame")
           local SliderCount = Instance.new("Frame")
           local SliderCorner = Instance.new("UICorner")
           local SliderCorner2 = Instance.new("UICorner")
           local SliderBox = Instance.new("TextBox")
           local SliderStroke = Instance.new("UIStroke")
           local SliderCorner3 = Instance.new("UICorner")
           
           -- Properties --
           SliderFrame.Name = slidertitle or "SliderFrame"
           SliderFrame.Parent = Container
           SliderFrame.BackgroundColor3 = _G.SectionColor
           SliderFrame.BackgroundTransparency = 1.000
           SliderFrame.Size = UDim2.new(0, 425, 0, 45)
           
           SliderImage.Name = "SliderImage"
           SliderImage.Parent = SliderFrame
           SliderImage.BackgroundColor3 = _G.SectionColor
           SliderImage.BackgroundTransparency = 1.000
           SliderImage.Position = UDim2.new(0, 15, 0, 9)
           SliderImage.Size = UDim2.new(0, 18, 0, 18)
           SliderImage.Image = "rbxassetid://8825007757"
           SliderImage.ImageColor3 = _G.SectionImageColor
           
           SliderSpace.Name = "SliderSpace"
           SliderSpace.Parent = SliderFrame
           SliderSpace.BackgroundColor3 = _G.SectionColor
           SliderSpace.BackgroundTransparency = 1.000
           SliderSpace.Position = UDim2.new(0, 40, 0, 6.5)
           SliderSpace.Size = UDim2.new(0, 15, 0, 25)
           SliderSpace.Font = Enum.Font.GothamSemibold
           SliderSpace.Text = "|"
           SliderSpace.TextSize = 14.000
           SliderSpace.TextColor3 = _G.SectionTextColor
           SliderSpace.TextXAlignment = Enum.TextXAlignment.Center
           
           SliderTitled.Name = "SliderTitled"
           SliderTitled.Parent = SliderFrame
           SliderTitled.BackgroundColor3 = _G.SectionColor
           SliderTitled.BackgroundTransparency = 1.000
           SliderTitled.Position = UDim2.new(0, 60, 0, 6.5)
           SliderTitled.Size = UDim2.new(0, 325, 0, 25)
           SliderTitled.Font = Enum.Font.GothamSemibold
           SliderTitled.Text = slidertitle or "Slider Title"
           SliderTitled.TextColor3 = _G.SectionTextColor
           SliderTitled.TextSize = 14.000
           SliderTitled.TextXAlignment = Enum.TextXAlignment.Left
           
           SliderInput.Name = "SliderInput"
           SliderInput.Parent = SliderFrame
           SliderInput.BackgroundColor3 = Color3.fromRGB(47, 47, 56)
           SliderInput.BorderSizePixel = 0
           SliderInput.Position = UDim2.new(0, 15, 0, 35)
           SliderInput.Size = UDim2.new(0, 395, 0, 9)
           
           SliderCount.Name = "SliderCount"
           SliderCount.Parent = SliderInput
           SliderCount.BackgroundColor3 = _G.SectionOn
           SliderCount.BorderSizePixel = 0
           SliderCount.Position = UDim2.new(0, 0, 0, 0)
           SliderCount.Size = UDim2.new((start or 0) / maxvalue, 0, 0, 9)
           
           SliderCorner.CornerRadius = UDim.new(0, 10)
           SliderCorner.Parent = SliderCount

           SliderCorner2.CornerRadius = UDim.new(0, 10)
           SliderCorner2.Parent = SliderInput
           
           SliderBox.Name = "SliderBox"
           SliderBox.Parent = SliderFrame
           SliderBox.BackgroundColor3 = Color3.fromRGB(47, 47, 56)
           SliderBox.BackgroundTransparency = 1.000
           SliderBox.Position = UDim2.new(0, 338, 0, 8)
           SliderBox.Size = UDim2.new(0, 70, 0, 18)
           SliderBox.ClearTextOnFocus = false
           SliderBox.Font = Enum.Font.GothamSemibold
           SliderBox.Text = tostring(start and math.floor((start / maxvalue) * (maxvalue - minvalue) + minvalue) or 0)
           SliderBox.TextColor3 = _G.SectionTextColor
           SliderBox.TextSize = 13.000
           SliderBox.TextXAlignment = Enum.TextXAlignment.Center
           SliderBox.TextEditable = true
           
           SliderCorner3.Parent = SliderBox
           SliderCorner3.CornerRadius = UDim.new(0, 1)
           
           SliderStroke.Name = "SliderStroke"
           SliderStroke.Parent = SliderBox
           SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
           SliderStroke.Color = _G.SectionColor
           SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
           SliderStroke.Thickness = 2
           SliderStroke.Transparency = 0
           SliderStroke.Enabled = true
           SliderStroke.Archivable = true
           
           local dragging
           local dragInput
           
           local function slide(input)
               local slidein = UDim2.new(math.clamp((input.Position.X - SliderInput.AbsolutePosition.X) / SliderInput.AbsoluteSize.X, 0, 1), 0, 0, 9)
               SliderCount:TweenSize(slidein, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
               local Value = math.floor(((slidein.X.Scale * maxvalue) / maxvalue) * (maxvalue - minvalue) + minvalue)
               SliderBox.Text = tostring(Value)
               pcall(callback, Value)
           end
           
           SliderInput.InputBegan:Connect(function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                   dragging = true
                   TweenService:Create(SliderBox, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(SliderTitled, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(SliderSpace, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionOn}):Play()
                   TweenService:Create(SliderImage, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionOn}):Play()
                   input.Changed:Connect(function()
                       if input.UserInputType == Enum.UserInputState.End then
                           dragging = false
                       end
                   end)
               end
           end)
           SliderInput.InputEnded:Connect(function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                   dragging = false
                   TweenService:Create(SliderBox, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(SliderTitled, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(SliderSpace, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.SectionTextColor}):Play()
                   TweenService:Create(SliderImage, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = _G.SectionImageColor}):Play()
               end
           end)
           UserInputService.InputChanged:Connect(function(input)
               if dragging == true then
                   slide(input)
               end
           end)
           
           function set(property)
               if property == "Text" then
                   if tonumber(SliderBox.Text) then 
                       if tonumber(SliderBox.Text) <= maxvalue then
                           Value = SliderBox.Text
                           SliderCount:TweenSize(UDim2.new(((tonumber(SliderBox.Text) or minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                           pcall(function()
                               callback(Value)
                           end)
                       end
                       if tonumber(SliderBox.Text) > maxvalue then
                           SliderBox.Text = maxvalue
                           Value = maxvalue
                           SliderCount:TweenSize(UDim2.new(((maxvalue or minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                           pcall(function()
                               callback(Value)
                           end)
                       end
                       if tonumber(SliderBox.Text) >= minvalue then
                           Value = SliderBox.Text
                           SliderCount:TweenSize(UDim2.new(((tonumber(SliderBox.Text) or minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                           pcall(function()
                               callback(Value)
                           end)
                       end
                       if tonumber(SliderBox.Text) < minvalue then
                           Value = minvalue
                           SliderCount.Size = UDim2.new(((minvalue or minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9)
                           pcall(function()
                               callback(Value)
                           end)
                       end
                   else
                       SliderBox.Text = "" or Value
                   end
               end
           end
           
           SliderBox.Focused:Connect(function()
               SliderBox.Changed:Connect(set)
           end)
           
           SliderBox.FocusLost:Connect(function(enterP)
               if not enterP then
                   if SliderBox.Text == "" then
                       SliderBox.Text = minvalue
                       Value = minvalue
                       SliderCount:TweenSize(UDim2.new(((minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                       pcall(function()
                           callback(Value)
                       end)
                   end
                   if tonumber(SliderBox.Text) > tonumber(maxvalue) then
                       Value = maxvalue
                       SliderBox.Text = maxvalue
                       SliderCount:TweenSize(UDim2.new(((maxvalue or minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                       pcall(function()
                           callback(Value)
                       end)
                   else
                       Value = tonumber(SliderBox.Text)
                   end
                   if tonumber(SliderBox.Text) < minvalue then
                       SliderBox.Text = minvalue
                       Value = minvalue
                       SliderCount:TweenSize(UDim2.new(((minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                       pcall(function()
                           callback(Value)
                       end)
                   else
                       Value = tonumber(SliderBox.Text)
                   end
               end
               if tonumber(SliderBox.Text) > maxvalue then
                   SliderBox.Text = maxvalue
                   Value = maxvalue
                   SliderCount:TweenSize(UDim2.new(((maxvalue or minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                   pcall(function()
                       callback(Value)
                   end)
               else
                   Value = tonumber(SliderBox.Text)
               end
               if tonumber(SliderBox.Text) < minvalue then
                   SliderBox.Text = minvalue
                   Value = minvalue
                   SliderCount.Size = UDim2.new(((minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9)
                   pcall(function()
                       callback(Value)
                   end)
               else
                   Value = tonumber(SliderBox.Text)
               end
               if SliderBox.Text == "" then
                   SliderBox.Text = minvalue
                   Value = minvalue
                   SliderCount:TweenSize(UDim2.new(((minvalue) - minvalue) / (maxvalue - minvalue), 0, 0, 9), "InOut", "Linear", 0.05, true)
                   pcall(function()
                       callback(Value)
                   end)
               end
           end)
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
           return sliderfunc
       end
       
       function NewSection:TextBox(boxtitle, textbox, callback)
           textbox = textbox or "Type here"
           callback = callback or function() end
           local BoxFrame = Instance.new("Frame")
           local BoxCover = Instance.new("Frame")
           local BoxImage = Instance.new("ImageLabel")
           local BoxSpace = Instance.new("TextLabel")
           local BoxTitle = Instance.new("TextLabel")
           local BoxList = Instance.new("TextBox")
           local BoxCorner = Instance.new("UICorner")
           local BoxStroke = Instance.new("UIStroke")
           
           -- Properties --
           BoxFrame.Name = boxtitle or "BoxFrame"
           BoxFrame.Parent = Container
           BoxFrame.BackgroundColor3 = _G.SectionColor
           BoxFrame.BackgroundTransparency = 1.000
           BoxFrame.Size = UDim2.new(0, 425, 0, 36)
           
           BoxCover.Name = "BoxCover"
           BoxCover.Parent = BoxFrame
           BoxCover.BackgroundColor3 = _G.SectionColor
           BoxCover.BackgroundTransparency = 1.000
           BoxCover.Position = UDim2.new(0, 10, 0, 2)
           BoxCover.Size = UDim2.new(0, 405, 0, 32)
           
           BoxImage.Name = "BoxImage"
           BoxImage.Parent = BoxCover
           BoxImage.BackgroundColor3 = _G.SectionColor
           BoxImage.BackgroundTransparency = 1.000
           BoxImage.Position = UDim2.new(0, 5, 0, 8)
           BoxImage.Size = UDim2.new(0, 18, 0, 18)
           BoxImage.Image = "rbxassetid://8825051254"
           BoxImage.ImageColor3 = _G.SectionImageColor
           
           BoxSpace.Name = "BoxSpace"
           BoxSpace.Parent = BoxCover
           BoxSpace.BackgroundColor3 = _G.SectionColor
           BoxSpace.BackgroundTransparency = 1.000
           BoxSpace.Position = UDim2.new(0, 30, 0, 4.5)
           BoxSpace.Size = UDim2.new(0, 15, 0, 25)
           BoxSpace.Font = Enum.Font.GothamSemibold
           BoxSpace.Text = "|"
           BoxSpace.TextSize = 14.000
           BoxSpace.TextColor3 = _G.SectionTextColor
           BoxSpace.TextXAlignment = Enum.TextXAlignment.Center
           
           BoxTitle.Name = "BoxTitle"
           BoxTitle.Parent = BoxCover
           BoxTitle.BackgroundColor3 = _G.SectionColor
           BoxTitle.BackgroundTransparency = 1.000
           BoxTitle.Position = UDim2.new(0, 50, 0, 4.5)
           BoxTitle.Size = UDim2.new(0, 325, 0, 25)
           BoxTitle.Font = Enum.Font.GothamSemibold
           BoxTitle.Text = boxtitle or "Box Title"
           BoxTitle.TextColor3 = _G.SectionTextColor
           BoxTitle.TextSize = 14.000
           BoxTitle.TextXAlignment = Enum.TextXAlignment.Left
           
           BoxList.Name = "BoxList"
           BoxList.Parent = BoxCover
           BoxList.BackgroundColor3 = _G.SectionColor
           BoxList.BackgroundTransparency= 1.000
           BoxList.Position = UDim2.new(0, 318, 0, 5)
           BoxList.Size = UDim2.new(0, 80, 0, 22)
           BoxList.Font = Enum.Font.GothamSemibold
           BoxList.PlaceholderText = textbox
           BoxList.Text = ""
           BoxList.TextColor3 = _G.SectionTextColor
           BoxList.PlaceholderColor3 = _G.SectionTextColor
           BoxList.TextSize = 13.000
           
           BoxCorner.Parent = BoxList
           BoxCorner.CornerRadius = UDim.new(0, 1)
           
           BoxStroke.Parent = BoxList
           BoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
           BoxStroke.Color = _G.SectionColor
           BoxStroke.LineJoinMode = Enum.LineJoinMode.Round
           BoxStroke.Thickness = 2
           BoxStroke.Transparency = 0
           BoxStroke.Enabled = true
           BoxStroke.Archivable = true
           
           function anim(property)
               if property == "Text" then
                   BoxList.TweenSize(UDim2.new(0, 70,0, 20), "InOut", "Linear", 0.1, true)
                   wait(0.18)
                   BoxList:TweenSize(UDim2.new(0, 80,0, 22), "InOut", "Linear", 0.1, true)
               end
           end
           
           BoxList.FocusLost:Connect(function()
               if not EnterPressed then return end
               callback(BoxList.Text)
               BoxList.TweenSize(UDim2.new(0, 70,0, 20), "InOut", "Linear", 0.1, true)
               wait(0.18)
               BoxList:TweenSize(UDim2.new(0, 80,0, 22), "InOut", "Linear", 0.1, true)
               BoxList.Text = textbox 
           end)
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
       end
       
       function NewSection:Line()
           local Frame = Instance.new("Frame")
           local Lines = Instance.new("TextButton")
           
           -- Properties --
           Frame.Name = "Frame"
           Frame.Parent = Container
           Frame.BackgroundColor3 = _G.SectionColor
           Frame.BackgroundTransparency = 1.000
           Frame.Size = UDim2.new(0, 425, 0, 1)
           
           Lines.Name = "Lines"
           Lines.Parent = Frame
           Lines.BackgroundColor3 = _G.SectionColor
           Lines.BorderSizePixel = 0
           Lines.AutoButtonColor = false
           Lines.Position = UDim2.new(0, 10, 0, 0)
           Lines.Size = UDim2.new(0, 405, 0, 1)
           Lines.Font = Enum.Font.GothamSemibold
           Lines.Text = ""
           Lines.TextColor3 = _G.SectionTextColor
           Lines.TextSize = 14.000
           
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
       end
       
       function NewSection:Label(textlabel)
           local labelfunc = {}
           local Frame = Instance.new("Frame")
           local Labels = Instance.new("TextButton")
           
           -- Properties --
           Frame.Name = "Frame"
           Frame.Parent = Container
           Frame.BackgroundColor3 = _G.SectionColor
           Frame.BackgroundTransparency = 1.000
           Frame.Size = UDim2.new(0, 425, 0, 26)
           
           Labels.Name = "Labels"
           Labels.Parent = Frame
           Labels.BackgroundColor3 = _G.SectionColor
           Labels.BackgroundTransparency = 1.000
           Labels.BorderSizePixel = 0
           Labels.AutoButtonColor = false
           Labels.Position = UDim2.new(0, 10, 0, 2)
           Labels.Size = UDim2.new(0, 405, 0, 22)
           Labels.Font = Enum.Font.GothamSemibold
           Labels.Text = textlabel
           Labels.TextColor3 = Color3.fromRGB(0, 255, 255)
           Labels.TextSize = 14.000
           Labels.TextXAlignment = Enum.TextXAlignment.Center
           
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
           
           function labelfunc:Refresh(tochange)
               Labels.Text = tochange
           end
           
           spawn(function()
               while task.wait() do
                   pcall(function()
                       labelfunc:Refresh("")
                       wait(.3)
                       labelfunc:Refresh("• " .. textlabel .. " •")
                       wait(.1)
                       wait(.8)
                   end)
               end
           end)
           return labelfunc
       end
       
       function NewSection:Note(notetext)
           local Frame = Instance.new("Frame")
           local Notes = Instance.new("TextButton")
           
           -- Properties --
           Frame.Name = "Frame"
           Frame.Parent = Container
           Frame.BackgroundColor3 = _G.SectionColor
           Frame.BackgroundTransparency = 1.000
           Frame.Size = UDim2.new(0, 425, 0, 26)
           
           Notes.Name = "Notes"
           Notes.Parent = Frame
           Notes.BackgroundColor3 = _G.SectionColor
           Notes.BackgroundTransparency = 1.000
           Notes.BorderSizePixel = 0
           Notes.AutoButtonColor = false
           Notes.Position = UDim2.new(0, 15, 0, 2)
           Notes.Size = UDim2.new(0, 395, 0, 22)
           Notes.Font = Enum.Font.GothamSemibold
           Notes.Text = notetext
           Notes.TextColor3 = _G.SectionTextColor
           Notes.TextSize = 14.000
           Notes.TextXAlignment = Enum.TextXAlignment.Left
           
           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
       end
       
       return NewSection
   end
   return Tabs
end

-- Themes --
_G.WindowBackgroundColor = Color3.fromRGB(12, 12, 12)
_G.TabWindowColor = Color3.fromRGB(30, 30, 30)
_G.ContainerColor = Color3.fromRGB(23, 23, 23)
_G.TitleTextColor = Color3.fromRGB(0,255,255)
_G.ImageColor = Color3.fromRGB(0,255,255)
_G.LineThemeColor = Color3.fromRGB(0,255,255)
_G.TabTextColor = Color3.fromRGB(0,255,255)
_G.TabImageColor = Color3.fromRGB(0,255,255)
_G.TabThemeColor = Color3.fromRGB(0,255,255)
_G.SectionColor = Color3.fromRGB(0,255,255)
_G.SectionImageColor = Color3.fromRGB(0,255,255)
_G.SectionTextColor = Color3.fromRGB(0,255,255)
_G.SectionOn = Color3.fromRGB(0,255,255)



if game.PlaceId == 6284583030 then
local start = tick()
repeat task.wait() until game:isLoaded()
repeat task.wait() until game:GetService("Players")
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')
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
local Win = Blacklib:Window("Pet Simulator X")
-- Tab --
local FirstPage = Win:Tab("• Farming", "rbxassetid://9247749254")
local Collect = Win:Tab("• Auto", "rbxassetid://9247881830")
local Egg = Win:Tab("• Egg", "rbxassetid://9247822567")
local Pets = Win:Tab("• Pet", "rbxassetid://9248110350")
local Misc = Win:Tab("• Misc", "rbxassetid://9248167337")
local Setting = Win:Tab("• Settings" , "rbxassetid://9248123266")

FirstPage:Line()
FirstPage:Label("== Farming Section ==")
FirstPage:Note("[ Dont Enable Nearest Farm if Automated Farm is ON ]")
FirstPage:Line()
local MethodList = {'Normal', 'Multi Target', 'Highest Value'}

FirstPage:Dropdown("Select Method",MethodList, function(methodfunc)
if methodfunc then
_G.methodfunc = methodfunc
end
print("Selected method: ", methodfunc)
end)

------------

FirstPage:Dropdown("Select location", AreaListLoc, function(mapafunc)
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
FirstPage:Toggle("Enable Automated Farm", function(farmingtogglefunc)
local CurrentFarmingPets = {}
if farmingtogglefunc == true then
_G.FarmingToggle = true
elseif farmingtogglefunc == false or destroygui then
_G.FarmingToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
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

end)


FirstPage:Toggle("Enable Nearest Farm", function(nearesttogglefunc)
local CurrentFarmingPets = {}
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

    
local ItemToFarmList = {'Magma Chest', 'Enchanted Chest', 'Hell Chest', 'Haunted Chest', 'Angel Chest', 'Grand Heaven Chest','Giant Tech Chest', 'Giant Steampunk Chest', 'Giant Alien Chest', 'Giant Hacker Chest', 'Giant Ocean Chest', 'Giant Pixel Chest' }

FirstPage:Dropdown("Select Chest", ItemToFarmList, function(itemtofarmfunc)
if itemtofarmfunc then
_G.itemtofarmfunc = itemtofarmfunc
end
print("Selected item: ", itemtofarmfunc)
end)

FirstPage:Toggle("Enable Chest Farm" , function(chest)
local CurrentFarmingPets = {}
if chest == true then
_G.ChestToggle = true
elseif chest == false or destroygui then
_G.ChestToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
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
    end)

-------------------------------
Collect:Line()
Collect:Label("== Collect Section ==")
Collect:Line()
Collect:Toggle("Auto Collect Lootbag", function(lootbag)
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
Collect:Toggle("Auto Collect Gems / Coins", function(autocollecting)

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
Collect:Toggle("Auto Claim Gifts", function(gift)
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
Collect:Toggle("Auto collect rewards [Both VIP and Rank.]", function(autorewards)

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

Collect:Line()
Collect:Label("== Auto Potion Section ==")
Collect:Line()

-------------------------------------------------------------------------------------------------
Collect:Toggle("Auto use triple damage", function(autotripledamage)

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

Collect:Toggle("Auto use triple coins", function(autotriplecoins)

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

Collect:Toggle("Auto use Super Luck", function(autosuperluck)

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

Collect:Toggle("Auto use Ultra Lucky", function(autoultraluck)

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
Egg:Line()
Egg:Label("== Egg Section ==")
Egg:Line()

Egg:Dropdown("Select egg", EggData, function(eggor)
if eggor then
_G.Egg = eggor
end
--print("Text: ", eggor)
--print("_G.Egg: ", _G.Egg)
end)

Egg:Toggle("Open Eggs",function(dropegg)
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
Egg:Toggle("Remove Egg Animation", function(delanimation)
if delanimation == true then 
getsenv(pathToScript).OpenEgg = function() return end 
else
getsenv(pathToScript).OpenEgg = oldFunc
end 
end)
-------------------------
Egg:Toggle("Use Triple Eggs (Gamepass)", function(triplegamepass)

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


--fuse
--local PetsList = {'Vampire Bat', 'Werewolf'}
Pets:Label("== Auto Fuse =")
Pets:Line()
Pets:Dropdown("Select pet", PetNamesTable, function(petfunc)
    if petfunc then
        _G.SelectedPet = petfunc
        _G.FuseList = {
            {
                [_G.SelectedPet] = _G.PetCount or 3;
            };
        }
    end
    print("Selected pet: ",  _G.SelectedPet)
end)
------------------------------------------
local TypeList = {'Normal', 'Gold', 'Rainbow'}
Pets:Dropdown("Select pet type", TypeList, function(typefunc)
if typefunc then
    _G.Type = typefunc
end
print("Selected type: ", _G.Type)
end)
------------------------------------------
Pets:Slider("Select pet amount", 3, 12, 3, function(countfusefunc)
if countfusefunc then
    _G.PetCount = countfusefunc
    _G.FuseList = {
        {
            [_G.SelectedPet] = _G.PetCount or 3;
        };
    }end
--print("Selected Count: ", _G.PetCount)
end)
------------------------------------------
Pets:Toggle("Enable automated fuse",  function(autofusefunc)
if autofusefunc == true then
    _G.Enabled = true
    print("_G.Enabled: ", _G.Enabled)
    print("Selected count: ", _G.PetCount)
    print("Selected type: ", _G.Type)
    print("Selected pet: ", _G.SelectedPet)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/inceldom/skid/main/fuzefart.lua'))() -- runs script as I use while wait and _G.enabled so loop ends when _G.enabled is false
elseif autofusefunc == false then
    _G.Enabled = false
    print("_G.Enabled: ", _G.Enabled)
end
--Set globals so script doesn't error--
_G.Enabled = false
_G.Type = "Rainbow"
_G.FuseList = {{}}
end)
---------------------------------------


--auto gold/rainbow
Pets:Line()
Pets:Label("== Auto Golden And Rainbow ==")
Pets:Line()
Pets:Slider("Select Pet Amount", 0, 6, 1, function(countcombinefunc)
    if countcombinefunc then
        _G.CountCombineFunc1 = countcombinefunc
    end
    --print("Selected Combine Count: ", _G.CountCombineFunc1)
end)
------------------------------------------

Pets:Toggle("Auto Golden", function(togglegoldfunc)

if togglegoldfunc == true then
_G.ToggleGold = true
elseif togglegoldfunc == false then
_G.ToggleGold = false
end
end)


Pets:Toggle("Auto Rainbow", function(toggleraibowfunc)

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

Pets:Toggle("Enable Automated Golden or Rainbow",function(autocombinefunc)

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
Pets:Line()
Pets:Label("== Auto Dark Matter ==")
Pets:Line()

Pets:Button("Remaining Time Check", function()
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


-------------------------------

Pets:TextBox("Type Pet to Dark Matter", "Enter Name", PetNamesTable, function(value)

if value then
_G.NameOfPet = value
end
print("dark matter enabled", value)
end)

-------------------------------
Pets:Slider("Select Amount Pet" , 1,6,4 , function(countdarkmatterfunc)
if countdarkmatterfunc then
_G.CountDarkMatterFunc1 = countdarkmatterfunc
end
--print("Selected Dark Matter Count: ", _G.CountDarkMatterFunc1)
end)


-------------------------------

Pets:Toggle("Enable Auto-Making Dark Matter Pets", function(automakedarkmatters)

if automakedarkmatters == true then
_G.AutoMakeDarkMatter = true
elseif automakedarkmatters == false then
_G.AutoMakeDarkMatter = false
end


while task.wait() and _G.AutoMakeDarkMatter do
local Save = GameLibrary.Save.Get()
local Slots = Save.DarkMatterSlots
local Queued = 0
for a, b in pairs(Save.DarkMatterQueue) do
    Queued = Queued + 1 
end
local Slots = Slots - Queued
for count = 1, Slots do
    if Slots - count >= 0 then
        local PetList = {}
        for i,v in pairs(GameLibrary.Save.Get().Pets) do
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
task.wait(15)
end
end)

-------------------------------
Pets:Toggle("Enable Auto Claiming Dark Matter Pets", function(autoclaimdark)

if autoclaimdark == true then
_G.AutoClaimDarkMatter = true
elseif autoclaimdark == false then
_G.AutoClaimDarkMatter = false
end

spawn(function()
while task.wait() and _G.AutoClaimDarkMatter do
for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
    if math.floor(v.readyTime - os.time()) < 0 then
        workspace.__THINGS.__REMOTES["redeem dark matter pet"]:InvokeServer({[1] = i})
    end
    end
task.wait(15)
end
end)
end)

Misc:Label("== Player Section ==")
Misc:Slider("Walkspeed", 16, 500, 20, function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
print(Value)
end)
Misc:Slider("JumpPower", 35, 500 ,40 , function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
print(Value)
end)

local InfiniteJumpEnabled;
Misc:Toggle("Infinite Jump", function(State)
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
Misc:Line()
Misc:Label("== Remote GUI ==")
Misc:Line()

Misc:Button("Open Merchant", function()
game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = true
end)
Misc:Button("Open Bank", function()
game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = true
end)
Misc:Button("Open Golden Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = true
end)
Misc:Button("Open Rainbow Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = true
end)
Misc:Button("Open Dark Matter Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = true
end)
Misc:Button("Open Fuse Pets Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = true
end)
Misc:Button("Open Teleport", function()
game:GetService("Players").LocalPlayer.PlayerGui.Teleport.Enabled = true
end)

Misc:Line()
Misc:Label("== Lag Reducer ==")
Misc:Line()
Misc:Button("FPS Booster", "Lag reduction", function()
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
if game:GetService("Workspace"):FindFirstChild("__DEBRIS") then
game:GetService("Workspace")["__DEBRIS"]:Destroy()
end
print("Clicked")
end)
Misc:Button("Turn OFF Texture in Game \n[Good for Potato Device or AFKing.]", function()
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

Misc:Line()
Misc:Label("== Visual Section ==")
Misc:Line()

Misc:Button("Give gamepasses [Some are visual.]", function(gamepasses)
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

Misc:Button("Unlock Hoverboard")
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

Setting:Button("Copy link discord")
setclipboard("https://discord.gg/EAasK6nBMr")
Setting:Button("Credit", function()
Blacklib:Notification("/ = /Fikury#7140 / = / \nThunder Z")
end)
