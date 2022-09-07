local DurksLib = {}

function DurksLib:CreateUI(name, premium)
	name = name or "UILib"
	premium = premium or false
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.Name = name
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
	Main.BorderColor3 = Color3.fromRGB(19, 19, 19)
	Main.Position = UDim2.new(0.232517317, 0, 0.19135806, 0)
	Main.Size = UDim2.new(0, 646, 0, 500)
	
	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main
	
	local TopFrame = Instance.new("Frame")
	TopFrame.Name = "TopFrame"
	TopFrame.Parent = Main
	TopFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	TopFrame.BorderColor3 = Color3.fromRGB(18, 18, 18)
	TopFrame.Size = UDim2.new(0, 646, 0, 32)
	
	local UICorner2 = Instance.new("UICorner")
	UICorner2.CornerRadius = UDim.new(0, 5)
	UICorner2.Parent = TopFrame
	
	local CloseBtn = Instance.new("ImageButton")
	CloseBtn.Name = "CloseBtn"
	CloseBtn.Parent = TopFrame
	CloseBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	CloseBtn.BackgroundTransparency = 1.000
	CloseBtn.BorderColor3 = Color3.fromRGB(30, 30, 30)
	CloseBtn.Position = UDim2.new(0.94551748, 0, 0.0822035968, 0)
	CloseBtn.Size = UDim2.new(0, 25, 0, 25)
	CloseBtn.Image = "http://www.roblox.com/asset/?id=6031094678"
	CloseBtn.ScaleType = Enum.ScaleType.Crop
	
	local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Parent = TopFrame
	Title.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	Title.BorderColor3 = Color3.fromRGB(18, 18, 18)
	Title.ClipsDescendants = true
	Title.Position = UDim2.new(0.0189296752, 0, 0.033423081, 0)
	Title.Size = UDim2.new(0, 200, 0, 29)
	Title.Font = Enum.Font.ArialBold
	Title.Text = name
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	local Dropshadow = Instance.new("ImageLabel")
	Dropshadow.Name = "Dropshadow"
	Dropshadow.Parent = Main
	Dropshadow.Active = true
	Dropshadow.AnchorPoint = Vector2.new(0.5, 0.5)
	Dropshadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dropshadow.BackgroundTransparency = 1.000
	Dropshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	Dropshadow.Size = UDim2.new(1, 48, 1, 48)
	Dropshadow.ZIndex = -2
	Dropshadow.Image = "rbxassetid://6049668989"
	Dropshadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Dropshadow.ScaleType = Enum.ScaleType.Slice
	Dropshadow.SliceCenter = Rect.new(128, 128, 128, 128)
	Dropshadow.SliceScale = 0.350
	
	local UserFrame = Instance.new("Frame")
	UserFrame.Name = "UserFrame"
	UserFrame.Parent = Main
	UserFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	UserFrame.BorderColor3 = Color3.fromRGB(24, 24, 24)
	UserFrame.Position = UDim2.new(0, 0, 0.885999918, 0)
	UserFrame.Size = UDim2.new(0, 161, 0, 57)
	
	local UICorner3 = Instance.new("UICorner")
	UICorner3.CornerRadius = UDim.new(0, 5)
	UICorner3.Parent = UserFrame

	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Parent = UserFrame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(24, 24, 24)
	ImageLabel.ClipsDescendants = true
	ImageLabel.Position = UDim2.new(0, 5, 0, 11)
	ImageLabel.Size = UDim2.new(0, 35, 0, 35)
	ImageLabel.Image = "rbxassetid://10590477428"
	ImageLabel.ScaleType = Enum.ScaleType.Fit
	
	local UICorner4 = Instance.new("UICorner")
	UICorner4.CornerRadius = UDim.new(1, 0)
	UICorner4.Parent = ImageLabel
	
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint.Parent = ImageLabel
	
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = UserFrame
	TextLabel.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(28, 28, 28)
	TextLabel.ClipsDescendants = true
	TextLabel.Position = UDim2.new(0.303743899, 0, 0.210960448, 0)
	TextLabel.Size = UDim2.new(0.620370388, 0, 0.205784321, 0)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "N/A"
	TextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 10.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = TextLabel
	UIPadding.PaddingLeft = UDim.new(0, 1)
	
	local TextLabel2 = Instance.new("TextLabel")
	TextLabel2.Parent = UserFrame
	TextLabel2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	TextLabel2.BackgroundTransparency = 1.000
	TextLabel2.BorderColor3 = Color3.fromRGB(28, 28, 28)
	TextLabel2.ClipsDescendants = true
	TextLabel2.Position = UDim2.new(0.301999986, 0, 0.405543804, 0)
	TextLabel2.Size = UDim2.new(0.620370388, 0, 0.220276982, 0)
	TextLabel2.Font = Enum.Font.SourceSansSemibold
	TextLabel2.Text = "N/A"
	TextLabel2.TextColor3 = Color3.fromRGB(220, 220, 220)
	TextLabel2.TextScaled = true
	TextLabel2.TextSize = 14.000
	TextLabel2.TextWrapped = true
	TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
	
	local UIPadding2 = Instance.new("UIPadding")
	UIPadding2.Parent = TextLabel2
	UIPadding2.PaddingLeft = UDim.new(0, 1)
	
	local Tabs = Instance.new("ScrollingFrame")
	Tabs.Name = "Tabs"
	Tabs.Parent = Main
	Tabs.Active = true
	Tabs.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Tabs.BorderColor3 = Color3.fromRGB(24, 24, 24)
	Tabs.Position = UDim2.new(0, 0, 0.150000006, 0)
	Tabs.Size = UDim2.new(0, 161, 0, 367)
	Tabs.ScrollBarThickness = 6
	Tabs.ScrollBarImageTransparency = 1
	
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = Tabs
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)
	
	local Items = Instance.new("Frame")
	Items.Name = "Items"
	Items.Parent = Main
	Items.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Items.BorderColor3 = Color3.fromRGB(30, 30, 30)
	Items.Position = UDim2.new(0.0113381781, 0, 0.0784671009, 0)
	Items.Size = UDim2.new(0, 148, 0, 26)
	
	local UICorner5 = Instance.new("UICorner")
	UICorner5.CornerRadius = UDim.new(0, 5)
	UICorner5.Parent = Items
	
	local ImageLabel2 = Instance.new("ImageLabel")
	ImageLabel2.Parent = Items
	ImageLabel2.BackgroundTransparency = 1.000
	ImageLabel2.BorderSizePixel = 0
	ImageLabel2.Position = UDim2.new(0.055374559, 0, 0.15384616, 0)
	ImageLabel2.Size = UDim2.new(0, 15, 0, 15)
	ImageLabel2.Image = "http://www.roblox.com/asset/?id=6031154871"
	ImageLabel2.ImageColor3 = Color3.fromRGB(102, 102, 102)
	
	local SearchBar = Instance.new("TextBox")
	SearchBar.Name = "SearchBar"
	SearchBar.Parent = Items
	SearchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchBar.BackgroundTransparency = 1.000
	SearchBar.BorderColor3 = Color3.fromRGB(255, 255, 255)
	SearchBar.Position = UDim2.new(0.192629352, 0, 0.230769232, 0)
	SearchBar.Size = UDim2.new(0, 115, 0, 14)
	SearchBar.Font = Enum.Font.GothamBlack
	SearchBar.PlaceholderColor3 = Color3.fromRGB(108, 108, 108)
	SearchBar.PlaceholderText = "Search"
	SearchBar.Text = ""
	SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
	SearchBar.TextSize = 14.000
	SearchBar.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	SearchBar.TextXAlignment = Enum.TextXAlignment.Left
	
	local Windows = Instance.new("Frame")
	Windows.Name = "Windows"
	Windows.Parent = Main
	Windows.AnchorPoint = Vector2.new(0.5, 0.5)
	Windows.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Windows.BackgroundTransparency = 1.000
	Windows.Position = UDim2.new(0.624226093, 0, 0.539233506, 0)
	Windows.Size = UDim2.new(0, 485, 0, 460)
	
	local UIStroke, UIStroke2, UIStroke3, UIStroke4 = Instance.new("UIStroke"),Instance.new("UIStroke"),Instance.new("UIStroke"),Instance.new("UIStroke")
	UIStroke.Name = "UIStroke"
	UIStroke.Parent = Main
	UIStroke.Color = Color3.fromRGB(30,30,30)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UIStroke.LineJoinMode = Enum.LineJoinMode.Round
	UIStroke.Thickness = 2
	UIStroke2.Name = "UIStroke"
	UIStroke2.Parent = Items
	UIStroke2.Color = Color3.fromRGB(40,40,40)
	UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
	UIStroke2.Thickness = 1
	UIStroke3.Name = "UIStroke"
	UIStroke3.Parent = TopFrame
	UIStroke3.Color = Color3.fromRGB(30,30,30)
	UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UIStroke3.LineJoinMode = Enum.LineJoinMode.Round
	UIStroke3.Thickness = 2
	UIStroke4.Name = "UIStroke"
	UIStroke4.Parent = ImageLabel
	UIStroke4.Color = Color3.fromRGB(62,62,62)
	UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UIStroke4.LineJoinMode = Enum.LineJoinMode.Round
	UIStroke4.Thickness = 1
	
	
	--> Scripting
	local ui = CloseBtn.Parent.Parent
	CloseBtn.MouseButton1Click:Connect(function()
		ui:Destroy()
	end)
	
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	ImageLabel.Image = content
	
	TextLabel.Text = game.Players.LocalPlayer.Name
	
	if premium then
		TextLabel2.RichText = true
		TextLabel2.Text = '<font color="#FFA500">Premium</font>'
	else
		TextLabel2.RichText = true
		TextLabel2.Text = '<font color="#FFFFFF">Normal</font>'
	end
		
	local function Update()
		local search = string.lower(SearchBar.Text)
		for i, v in	 ipairs(Tabs:GetChildren()) do
			if v:IsA("TextButton") then
				if search ~= "" then
					local item = string.lower(v.Text)
					if string.find(item, search) then
						print(v.Parent)
						v.Visible = true
					else
						v.Visible = false
					end
				else
					v.Visible = true
				end
			end
		end
	end
	SearchBar.Changed:Connect(Update)
	
	local a = {}
	function a:CreateWindow(name)
		name = name or "Tab Name"
		
		local Tab = Instance.new("TextButton")
		Tab.Name = "Tab"
		Tab.Parent = Tabs
		Tab.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		Tab.BorderColor3 = Color3.fromRGB(24, 24, 24)
		Tab.Size = UDim2.new(0, 150, 0, 43)
		Tab.Font = Enum.Font.Arial
		Tab.Text = name
		Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tab.TextSize = 14.000

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Tab
		
		local Window = Instance.new("Frame")
		Window.Name = "Window: "..name
		Window.Parent = Windows
		Window.AnchorPoint = Vector2.new(0.5, 0.5)
		Window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Window.BackgroundTransparency = 1.000
		Window.Position = UDim2.new(0.5, 0, 0.5, 0)
		Window.Size = UDim2.new(1, 0, 1, 0)
		Window.Visible = false	
		
		local UIListLayout3 = Instance.new("UIListLayout")
		UIListLayout3.Parent = Window
		UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout3.Padding = UDim.new(0, 10)
		
		local UIPadding5 = Instance.new("UIPadding")
		UIPadding5.Parent = Window
		UIPadding5.PaddingLeft = UDim.new(0, 7)
		
		--> Scripting
		local button = Tab
		local folder = button.Parent
		button.MouseButton1Click:Connect(function()
			for i,v in next, folder:GetChildren() do  
				if v:IsA("TextButton") then
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					}):Play()
				end
			end
			for i,v in next, Windows:GetChildren() do
				if v:IsA("Frame") then
					v.Visible = false
				end
			end
			game.TweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
				BackgroundColor3 = Color3.fromRGB(62, 62, 62) 
			}):Play()
			Window.Visible = true
		end)
		
		local b = {}
		function b:CreateContainer(name)
			name = name or "Container"
			local Container = Instance.new("Frame")
			Container.Name = "Container: "..name
			Container.Parent = Window
			Container.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			Container.BorderColor3 = Color3.fromRGB(62, 62, 62)
			Container.Position = UDim2.new(0.62844491, 0, 0.0820000023, 0)
			Container.Size = UDim2.new(0, 230, 0, 452)
			
			local UIListLayout = Instance.new("UIListLayout")
			UIListLayout.Parent = Container
			UIListLayout.Padding = UDim.new(0, 5)
			UIListLayout.FillDirection = Enum.FillDirection.Vertical
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			
			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Container
			
			local UIStroke5 = Instance.new("UIStroke")
			UIStroke5.Name = "UIStroke"
			UIStroke5.Parent = Container
			UIStroke5.Color = Color3.fromRGB(30,30,30)
			UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			UIStroke5.LineJoinMode = Enum.LineJoinMode.Round
			UIStroke5.Thickness = 2
			
			local c = {}
			function c:CreateDropDown(props)
				props = props or {
					Name = "DropDown",
					Items = {},
					CallBack = function() end
				}
				local dropdown = Instance.new("Frame")
				dropdown.Name = "dropdown"
				dropdown.Parent = Container
				dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				dropdown.BorderColor3 = Color3.fromRGB(30, 30, 30)
				dropdown.Position = UDim2.new(0, 0, 0.203539819, 0)
				dropdown.Size = UDim2.new(0, 230, 0, 46)

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = dropdown

				local title = Instance.new("TextLabel")
				title.Name = "title"
				title.Parent = dropdown
				title.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				title.BorderColor3 = Color3.fromRGB(37, 37, 37)
				title.Position = UDim2.new(0.0136127174, 0, 0.0789763927, 0)
				title.Size = UDim2.new(0, 106, 0, 16)
				title.Font = Enum.Font.GothamBlack
				title.Text = props.Name
				title.TextColor3 = Color3.fromRGB(180, 180, 180)
				title.TextSize = 14.000
				title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
				title.TextXAlignment = Enum.TextXAlignment.Left

				local UIPadding = Instance.new("UIPadding")
				UIPadding.Parent = title
				UIPadding.PaddingLeft = UDim.new(0, 8)
				UIPadding.PaddingTop = UDim.new(0, 3)

				local ImageButton = Instance.new("ImageButton")
				ImageButton.Parent = dropdown
				ImageButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderColor3 = Color3.fromRGB(30, 30, 30)
				ImageButton.Position = UDim2.new(0.876130521, 0, 0.282608688, 0)
				ImageButton.Size = UDim2.new(0, 20, 0, 20)
				ImageButton.Image = "rbxassetid://7072706663"

				local ScrollingFrame = Instance.new("ScrollingFrame")
				ScrollingFrame.Parent = dropdown
				ScrollingFrame.Active = true
				ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				ScrollingFrame.BackgroundTransparency = 1.000
				ScrollingFrame.BorderSizePixel = 0
				ScrollingFrame.BorderColor3 = Color3.fromRGB(30, 30, 30)
				ScrollingFrame.Position = UDim2.new(0, 0, 0.5, 0)
				ScrollingFrame.Size = UDim2.new(0, 225, 0, 0)
				ScrollingFrame.ScrollBarThickness = 4
				ScrollingFrame.ScrollBarImageTransparency = 1

				local UIListLayout = Instance.new("UIListLayout")
				UIListLayout.Parent = ScrollingFrame
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 2)
				
				local UICorner2 = Instance.new("UICorner")
				UICorner2.CornerRadius = UDim.new(0, 5)
				UICorner2.Parent = ScrollingFrame
				
				--> Scripting
				local toggle = dropdown:FindFirstChild('ImageButton')
				local drop = toggle.Parent
				local dropframe = drop.ScrollingFrame
				local OnOffToggler = false
				
				for i,v in next, props.Items do
					local TextButton = Instance.new("TextButton")
					TextButton.Parent = ScrollingFrame
					TextButton.Text = v
					TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					TextButton.BorderColor3 = Color3.fromRGB(30, 30, 30)
					TextButton.Position = UDim2.new(0.0614035092, 0, 0, 0)
					TextButton.Size = UDim2.new(0, 206, 0, 22)
					TextButton.Font = Enum.Font.SourceSans
					TextButton.TextColor3 = Color3.fromRGB(180, 180, 180)
					TextButton.TextSize = 14.000
					TextButton.MouseButton1Click:Connect(function()
						
						drop:TweenSize(UDim2.new(0, 230, 0, 46), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
						dropframe:TweenSize(UDim2.new(0, 230, 0, 46), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
						game:GetService("TweenService"):Create(toggle, TweenInfo.new(0.15), {Rotation = 0}):Play()
						for i,v in next, dropframe:GetChildren() do
							if v:IsA('TextButton') then
								v.Visible = false
							end
						end
						props.CallBack(v)
					end)
				end
			
				toggle.MouseButton1Down:Connect(function()
					OnOffToggler = not OnOffToggler
					if OnOffToggler == true then -- Enabled
						drop:TweenSize(UDim2.new(0, 230, 0, 110), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
						dropframe:TweenSize(drop.Size, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
						game:GetService("TweenService"):Create(toggle, TweenInfo.new(0.15), {Rotation = 180}):Play()
						for i,v in next, dropframe:GetChildren() do
							if v:IsA('TextButton') then
								v.Visible = true
							end
						end
					elseif OnOffToggler == false then -- Disabled
						drop:TweenSize(UDim2.new(0, 230, 0, 46), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
						dropframe:TweenSize(UDim2.new(0, 230, 0, 46), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
						game:GetService("TweenService"):Create(toggle, TweenInfo.new(0.15), {Rotation = 0}):Play()
						for i,v in next, dropframe:GetChildren() do
							if v:IsA('TextButton') then
								v.Visible = false
							end
						end
					end	
				end)
			end
			function c:CreateSlider(props)
				props = props or {
					Name = "Slider",
					Min = 0,
					Max = 100,
					CallBack = function() end
				}
				local slider = Instance.new("Frame")
				slider.Name = "slider"
				slider.Parent = Container
				slider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				slider.BorderColor3 = Color3.fromRGB(30, 30, 30)
				slider.Position = UDim2.new(0, 0, -0.00221238937, 0)
				slider.Size = UDim2.new(0, 230, 0, 46)

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = slider

				local title = Instance.new("TextLabel")
				title.Name = "title"
				title.Parent = slider
				title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				title.BorderColor3 = Color3.fromRGB(30, 30, 30)
				title.Position = UDim2.new(0.0136127174, 0, 0.0789763927, 0)
				title.Size = UDim2.new(0, 106, 0, 16)
				title.Font = Enum.Font.GothamBlack
				title.Text = props.Name
				title.TextColor3 = Color3.fromRGB(180, 180, 180)
				title.TextSize = 14.000
				title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
				title.TextXAlignment = Enum.TextXAlignment.Left

				local UIPadding = Instance.new("UIPadding")
				UIPadding.Parent = title
				UIPadding.PaddingLeft = UDim.new(0, 8)
				UIPadding.PaddingTop = UDim.new(0, 3)

				local base = Instance.new("Frame")
				base.Name = "base"
				base.Parent = slider
				base.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				base.BorderColor3 = Color3.fromRGB(22, 22, 22)
				base.Position = UDim2.new(0.0438463278, 0, 0.739130437, 0)
				base.Size = UDim2.new(0, 212, 0, 11)

				local UICorner_2 = Instance.new("UICorner")
				UICorner_2.CornerRadius = UDim.new(0, 3)
				UICorner_2.Parent = base

				local sliderdrag = Instance.new("Frame")
				sliderdrag.Name = "sliderdrag"
				sliderdrag.Parent = base
				sliderdrag.BackgroundColor3 = Color3.fromRGB(66, 155, 251)
				sliderdrag.BorderColor3 = Color3.fromRGB(66, 155, 251)
				sliderdrag.Size = UDim2.new(0, 0, 0, 11)

				local UICorner_3 = Instance.new("UICorner")
				UICorner_3.CornerRadius = UDim.new(0, 5)
				UICorner_3.Parent = sliderdrag

				local slidervalue = Instance.new("TextLabel")
				slidervalue.Name = "slidervalue"
				slidervalue.Parent = slider
				slidervalue.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				slidervalue.BorderColor3 = Color3.fromRGB(30, 30, 30)
				slidervalue.Position = UDim2.new(0.469933271, 0, 0.0789761767, 0)
				slidervalue.Size = UDim2.new(0, 114, 0, 19)
				slidervalue.Font = Enum.Font.GothamBold
				slidervalue.Text = "0"
				slidervalue.TextColor3 = Color3.fromRGB(180, 180, 180)
				slidervalue.TextSize = 14.000
				slidervalue.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
				slidervalue.TextXAlignment = Enum.TextXAlignment.Right

				local UIPadding_2 = Instance.new("UIPadding")
				UIPadding_2.Parent = slidervalue
				UIPadding_2.PaddingLeft = UDim.new(0, 8)
				UIPadding_2.PaddingTop = UDim.new(0, 3)

				local TextButton = Instance.new("TextButton")
				TextButton.Parent = slider
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1.000
				TextButton.Position = UDim2.new(0, 0, 0.50223577, 0)
				TextButton.Size = UDim2.new(0, 222, 0, 25)
				TextButton.Font = Enum.Font.SourceSans
				TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.TextSize = 14.000
				TextButton.TextTransparency = 1.000
				
				--> Scripting
				local minvalue = props.Min;
				local maxvalue = props.Max;
				local sliderbar = slider:FindFirstChild('base');
				local button = slider:FindFirstChild('TextButton')
				local mouse = game.Players.LocalPlayer:GetMouse()
				local SliderValue = slider:FindFirstChild('slidervalue')
				local Bar = slider:FindFirstChild('base').sliderdrag
				local rel = (mouse.X - sliderbar.AbsolutePosition.X)
				local relpercent = (rel / sliderbar.AbsoluteSize.X) * 100
				local realpercent = math.clamp((maxvalue - minvalue)*(relpercent / 100)+minvalue,minvalue,maxvalue)
				local uis = game:GetService("UserInputService")
				button.MouseButton1Down:Connect(function()
					local rel = (mouse.X - sliderbar.AbsolutePosition.X)
					local relpercent = (rel / sliderbar.AbsoluteSize.X) * 100
					local realpercent = math.clamp((maxvalue - minvalue)*(relpercent / 100)+minvalue,minvalue,maxvalue)

					SliderValue.Text = tostring(math.round(realpercent))
					Bar:TweenSize(UDim2.new(0,math.clamp(mouse.X - sliderbar.AbsolutePosition.X,1,212),0,11),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.1,true)

					local move = mouse.Move:Connect(function() -- When their mouse moves, change the value and slider size
						local rel = (mouse.X - sliderbar.AbsolutePosition.X)
						local relpercent = (rel / sliderbar.AbsoluteSize.X)*100
						local realpercent = math.clamp((maxvalue - minvalue)*(relpercent / 100)+minvalue,minvalue,maxvalue)
						SliderValue.Text = tostring(math.round(realpercent))
						Bar:TweenSize(UDim2.new(0,math.clamp(mouse.X - sliderbar.AbsolutePosition.X,1,212),0,11),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.1,true)
						spawn(function()
							props.CallBack(tostring(math.round(realpercent)))
						end)
					end)
					uis.InputEnded:Connect(function(key)
						if key.UserInputType == Enum.UserInputType.MouseButton1 then
							move:Disconnect()
						end
					end)
				end)
			end
			function c:CreateTextBox(CallBack)
				CallBack = CallBack or function() end
				local textbox = Instance.new("Frame")
				textbox.Name = "textbox"
				textbox.Parent = Container
				textbox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				textbox.BorderColor3 = Color3.fromRGB(30, 30, 30)
				textbox.Position = UDim2.new(0, 0, 0.338495582, 0)
				textbox.Size = UDim2.new(0, 226, 0, 41)

				local SearchBar = Instance.new("TextBox")
				SearchBar.Name = "SearchBar"
				SearchBar.Parent = textbox
				SearchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SearchBar.BackgroundTransparency = 1.000
				SearchBar.BorderColor3 = Color3.fromRGB(255, 255, 255)
				SearchBar.Position = UDim2.new(0.192629337, 0, 0.230769455, 0)
				SearchBar.Size = UDim2.new(0, 157, 0, 22)
				SearchBar.Font = Enum.Font.GothamBlack
				SearchBar.PlaceholderColor3 = Color3.fromRGB(108, 108, 108)
				SearchBar.PlaceholderText = "Text Here"
				SearchBar.Text = ""
				SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
				SearchBar.TextSize = 14.000
				SearchBar.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
				SearchBar.TextXAlignment = Enum.TextXAlignment.Left

				local ImageLabel = Instance.new("ImageLabel")
				ImageLabel.Parent = textbox
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Position = UDim2.new(0.0391304344, 0, 0.195121944, 0)
				ImageLabel.Size = UDim2.new(0, 32, 0, 24)
				ImageLabel.Image = "rbxassetid://7072716382"

				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				UIAspectRatioConstraint.Parent = ImageLabel

				SearchBar.FocusLost:Connect(function()
					CallBack(SearchBar.Text)
				end)
			end
			function c:CreateToggle(props)
				props = props or {
					Name = "Toggle",
					Default = false,
					CallBack = function() end
				}
				local toggle = Instance.new("Frame")
				toggle.Name = "toggle"
				toggle.Parent = Container
				toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				toggle.BorderColor3 = Color3.fromRGB(30, 30, 30)
				toggle.Position = UDim2.new(0, 0, 0.101769909, 0)
				toggle.Size = UDim2.new(0, 230, 0, 46)

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = toggle

				local ToggleButton = Instance.new("ImageButton")
				ToggleButton.Name = "ToggleButton"
				ToggleButton.Parent = toggle
				ToggleButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				ToggleButton.BorderColor3 = Color3.fromRGB(22, 22, 22)
				ToggleButton.Position = UDim2.new(0.878234088, 0, 0.2628057, 0)
				ToggleButton.Size = UDim2.new(0, 20, 0, 20)
				ToggleButton.Image = "rbxassetid://0"

				local UICorner_2 = Instance.new("UICorner")
				UICorner_2.CornerRadius = UDim.new(0, 3)
				UICorner_2.Parent = ToggleButton

				local title = Instance.new("TextLabel")
				title.Name = "title"
				title.Parent = toggle
				title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				title.BorderColor3 = Color3.fromRGB(30, 30, 30)
				title.Position = UDim2.new(0.0136127174, 0, 0.252889454, 0)
				title.Size = UDim2.new(0, 106, 0, 16)
				title.Font = Enum.Font.GothamBlack
				title.Text = "Toggle Title"
				title.TextColor3 = Color3.fromRGB(180, 180, 180)
				title.TextSize = 14.000
				title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
				title.TextXAlignment = Enum.TextXAlignment.Left

				local UIPadding = Instance.new("UIPadding")
				UIPadding.Parent = title
				UIPadding.PaddingLeft = UDim.new(0, 8)
				UIPadding.PaddingTop = UDim.new(0, 3)

				--> Scripting
				local toggle = false

				ToggleButton.MouseButton1Down:Connect(function()
					toggle = not toggle
					if toggle == true then -- Enabled
						game:GetService("TweenService"):Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(46, 139, 232)}):Play()
					elseif toggle == false then -- Disabled
						game:GetService("TweenService"):Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(22, 22, 22)}):Play()
					end
				end)
				toggle = props.Default
				if toggle then
					game:GetService("TweenService"):Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(46, 139, 232)}):Play()
				else
					game:GetService("TweenService"):Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(22, 22, 22)}):Play()
				end
			end
			function c:CreateButton(CallBack)
				CallBack = CallBack or function() end
				local button = Instance.new("TextButton")
				button.Name = "button"
				button.Parent = Container
				button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				button.BorderColor3 = Color3.fromRGB(24, 24, 24)
				button.Position = UDim2.new(0, 0, 0.440265477, 0)
				button.Size = UDim2.new(0, 230, 0, 43)
				button.Font = Enum.Font.GothamBlack
				button.TextColor3 = Color3.fromRGB(180, 180, 180)
				button.TextSize = 14.000
				button.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = button
				
				--> Scripting
				button.MouseButton1Down:Connect(function()
					game.TweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					}):Play()
				end)
				button.MouseButton1Up:Connect(function()
					game.TweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(30, 30, 30) 
					}):Play()
				end)
				button.MouseLeave:Connect(function()
					game.TweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					}):Play()
				end)
				button.MouseButton1Click:Connect(function()
					CallBack()
				end)
			end
			return c
		end
		return b
	end
	return a
end
