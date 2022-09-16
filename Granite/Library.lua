local a = {}

local TweenFunctions = {
	Tween = function(properties)

		local TweenService = game:GetService("TweenService")
		local tweeninfo = TweenInfo.new(
			properties.Time, 
			Enum.EasingStyle[properties.Style], 
			Enum.EasingDirection[properties.Direction], 
			properties.Repeat
		)
		local Animate = TweenService:Create(
			properties.Object,
			tweeninfo,
			properties.Animation
		)
		return Animate
	end,
	Tweens = function(properties)
		local TweenService = game:GetService("TweenService")
		local tweeninfo = TweenInfo.new(
			properties.Time, 
			Enum.EasingStyle[properties.Style], 
			Enum.EasingDirection[properties.Direction], 
			properties.Repeat
		)
		for i,v in next, properties.Objects do
			TweenService:Create(
				v,
				tweeninfo,
				properties.Animation
			):Play()
		end
	end
} 


function a:StartLibrary(o)
	o = o or {
		Name = "New Library"
	}
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local WindowContainer = Instance.new("Frame")
	local SearchBox = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local SearchBar = Instance.new("TextBox")
	local UICorner_3 = Instance.new("UICorner")
	local Windows = Instance.new("Frame")
	local UIPageLayout = Instance.new("UIPageLayout")
	local SideBar = Instance.new("Frame")
	local Tabs = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Title = Instance.new("TextLabel")
	local Creator = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local UICorner_4 = Instance.new("UICorner")
	local Minimize = Instance.new("ImageButton")
	local UICorner_5 = Instance.new("UICorner")
	local Granite = Instance.new("ScreenGui")
	
	Granite.Name = "Granite: "..o.Name
	Granite.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Granite.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Granite
	MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	MainFrame.BorderColor3 = Color3.fromRGB(22, 22, 22)
	MainFrame.Position = UDim2.new(0.131802052, 0, 0.0691481158, 0)
	MainFrame.Size = UDim2.new(0, 615, 0, 548)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = MainFrame

	WindowContainer.Name = "WindowContainer"
	WindowContainer.Parent = MainFrame
	WindowContainer.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	WindowContainer.BorderColor3 = Color3.fromRGB(22, 22, 22)
	WindowContainer.Position = UDim2.new(0.231611848, 0, 0.0656934306, 0)
	WindowContainer.Size = UDim2.new(0, 472, 0, 512)

	SearchBox.Name = "SearchBox"
	SearchBox.Parent = WindowContainer
	SearchBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	SearchBox.BorderColor3 = Color3.fromRGB(30, 30, 30)
	SearchBox.Position = UDim2.new(0.0298409238, 0, 0.0229609497, 0)
	SearchBox.Size = UDim2.new(0, 153, 0, 26)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = SearchBox

	ImageLabel.Parent = SearchBox
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.055374559, 0, 0.15384616, 0)
	ImageLabel.Size = UDim2.new(0, 15, 0, 15)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=6031154871"
	ImageLabel.ImageColor3 = Color3.fromRGB(102, 102, 102)

	SearchBar.Name = "SearchBar"
	SearchBar.Parent = SearchBox
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

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = WindowContainer

	Windows.Name = "Windows"
	Windows.Parent = WindowContainer
	Windows.AnchorPoint = Vector2.new(0.5, 0.5)
	Windows.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Windows.BackgroundTransparency = 1.000
	Windows.ClipsDescendants = true
	Windows.Position = UDim2.new(0.502118707, 0, 0.551906288, 0)
	Windows.Size = UDim2.new(0, 475, 0, 460)

	UIPageLayout.Parent = Windows
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Circular
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	UIPageLayout.TweenTime = 0.500

	SideBar.Name = "SideBar"
	SideBar.Parent = MainFrame
	SideBar.AnchorPoint = Vector2.new(0, 0.5)
	SideBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SideBar.BackgroundTransparency = 1.000
	SideBar.BorderSizePixel = 0
	SideBar.Position = UDim2.new(0, 0, 0.5, 0)
	SideBar.Size = UDim2.new(0, 152, 1, 0)

	Tabs.Name = "Tabs"
	Tabs.Parent = SideBar
	Tabs.AnchorPoint = Vector2.new(0.5, 1)
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDim2.new(0.5, 0, 1, -8)
	Tabs.Size = UDim2.new(1, -16, 1, -82)

	UIListLayout.Parent = Tabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	Title.Name = "Title"
	Title.Parent = SideBar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 12, 0, 10)
	Title.Size = UDim2.new(1, -12, 0, 26)
	Title.Font = Enum.Font.GothamBlack
	Title.Text = o.Name
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 20.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.TextYAlignment = Enum.TextYAlignment.Bottom

	Creator.Name = "Creator"
	Creator.Parent = SideBar
	Creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Creator.BackgroundTransparency = 1.000
	Creator.Position = UDim2.new(0, 12, 0, 36)
	Creator.Size = UDim2.new(1, -12, 0, 26)
	Creator.Font = Enum.Font.GothamBold
	Creator.Text = "Nylzek+vykzs"
	Creator.TextColor3 = Color3.fromRGB(2, 85, 255)
	Creator.TextSize = 15.000
	Creator.TextTransparency = 0.700
	Creator.TextWrapped = true
	Creator.TextXAlignment = Enum.TextXAlignment.Left
	Creator.TextYAlignment = Enum.TextYAlignment.Top

	Close.Name = "Close"
	Close.Parent = MainFrame
	Close.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(20, 20, 20)
	Close.Position = UDim2.new(0.955939293, 0, 0.0172992703, 0)
	Close.Size = UDim2.new(0, 18, 0, 18)
	Close.Image = "rbxassetid://10145570075"

	UICorner_4.Parent = Close

	Minimize.Name = "Minimize"
	Minimize.Parent = MainFrame
	Minimize.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Minimize.BackgroundTransparency = 1.000
	Minimize.BorderColor3 = Color3.fromRGB(20, 20, 20)
	Minimize.Position = UDim2.new(0.928297043, 0, 0.0172992703, 0)
	Minimize.Size = UDim2.new(0, 18, 0, 18)
	Minimize.Image = "http://www.roblox.com/asset/?id=6026568240"

	UICorner_5.Parent = Minimize
	
	
	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	local gui = MainFrame
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	local function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;

		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()

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
	runService.Heartbeat:Connect(Update)
	
	local close = Close
	local ui = close.Parent.Parent
	close.MouseButton1Click:Connect(function()
		ui:Destroy()
	end)
	
	local close = Minimize
	local ui = close.Parent.Parent
	close.MouseButton1Click:Connect(function()
		ui:Destroy()
	end)
	
	local b = {}
	function b:CreatePage(o)
		o = o or {
			Name = "New Page"
		}
		local Window = Instance.new("ScrollingFrame")
		local UICorner = Instance.new("UICorner")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")

		Window.Name = "Window: "..o.Name
		Window.Parent = Windows
		Window.Active = true
		Window.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		Window.BackgroundTransparency = 1.000
		Window.BorderColor3 = Color3.fromRGB(22, 22, 22)
		Window.Position = UDim2.new(0, 0, 0.0960000008, 0)
		Window.Size = UDim2.new(1, 0, 1, 0)
		Window.ScrollBarThickness = 4

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Window

		UIListLayout.Parent = Window
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 3)

		UIPadding.Parent = Window
		UIPadding.PaddingLeft = UDim.new(0, 10)	
		
		local newTab = Instance.new("Frame")
		local Button = Instance.new("TextButton")
		local TName = Instance.new("TextLabel")
		local UICorner1 = Instance.new("UICorner")

		newTab.Name = "newTab: "..o.Name
		newTab.Parent = Tabs
		newTab.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		newTab.Size = UDim2.new(1, -1, 0, 30)

		Button.Name = "Button"
		Button.Parent = newTab
		Button.AnchorPoint = Vector2.new(0.5, 0.5)
		Button.BackgroundColor3 = Color3.fromRGB(2, 85, 255)
		Button.BackgroundTransparency = 1.000
		Button.Position = UDim2.new(0.5, 0, 0.5, 0)
		Button.Size = UDim2.new(1, 0, 1, 0)
		Button.AutoButtonColor = false
		Button.Font = Enum.Font.SourceSans
		Button.Text = ""
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextSize = 14.000

		TName.Name = "TName"
		TName.Parent = newTab
		TName.AnchorPoint = Vector2.new(1, 0.5)
		TName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TName.BackgroundTransparency = 1.000
		TName.Position = UDim2.new(1, 0, 0.5, 0)
		TName.Size = UDim2.new(1, -10, 1, 0)
		TName.Font = Enum.Font.GothamBold
		TName.Text = o.Name
		TName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TName.TextSize = 13.000
		TName.TextStrokeColor3 = Color3.fromRGB(20, 20, 20)
		TName.TextStrokeTransparency = 0.500
		TName.TextXAlignment = Enum.TextXAlignment.Left

		UICorner1.CornerRadius = UDim.new(0, 3)
		UICorner1.Parent = newTab


		local r = TweenFunctions
		local p = Button;local tab = newTab;


		p.MouseButton1Click:Connect(function()
			Windows.UIPageLayout:JumpTo(Window)
			for _,v in pairs(tab.Parent:GetChildren()) do
				if v:IsA("Frame")then
					r.Tween({
						Object = v,
						Animation = {BackgroundColor3 = Color3.fromRGB(22, 22, 22)},
						Time = 0.35,Style = "Sine",Direction = "InOut",Repeat = 0
					}):Play()
				end
			end
			r.Tween({
				Object = tab,
				Animation = {BackgroundColor3 = Color3.fromRGB(2, 85, 255)},
				Time = 0.35,Style = "Sine",Direction = "InOut",Repeat = 0
			}):Play()
		end)

		
		
		local c = {}
		function c:newButton(o)
			o = o or {
				Name = "New Button",
				Callback = function() end
			}
			local newButton = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextButton = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local title = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")


			newButton.Name = "newButton: "..o.Name
			newButton.Parent = Window
			newButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			newButton.BorderColor3 = Color3.fromRGB(35, 35, 35)
			newButton.Size = UDim2.new(0, 449, 0, 46)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = newButton

			TextButton.Parent = newButton
			TextButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			TextButton.BorderColor3 = Color3.fromRGB(22, 22, 22)
			TextButton.Position = UDim2.new(0.53674835, 0, 0.282608688, 0)
			TextButton.Size = UDim2.new(0, 196, 0, 18)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = "Click"
			TextButton.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextButton.TextSize = 14.000

			UICorner_2.CornerRadius = UDim.new(0, 3)
			UICorner_2.Parent = TextButton

			title.Name = "title"
			title.Parent = newButton
			title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			title.BorderColor3 = Color3.fromRGB(30, 30, 30)
			title.BorderSizePixel = 0
			title.Position = UDim2.new(0.0136127174, 0, 0.0789763927, 0)
			title.Size = UDim2.new(0, 106, 0, 16)
			title.Font = Enum.Font.GothamBlack
			title.Text = o.Name
			title.TextColor3 = Color3.fromRGB(180, 180, 180)
			title.TextSize = 14.000
			title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			title.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = title
			UIPadding.PaddingLeft = UDim.new(0, 8)
			UIPadding.PaddingTop = UDim.new(0, 3)
			
			TextButton.MouseButton1Click:Connect(function()
				o.Callback()
			end)
		end
		
		function c:newToggle(o)
			o = o or {
				Name = "New Toggle",
				Description = "Description",
				Default = false,
				Callback = function() end
			}
			local newToggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local ToggleButton = Instance.new("ImageButton")
			local UICorner_2 = Instance.new("UICorner")
			local title = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local desc = Instance.new("TextLabel")
			local UIPadding_2 = Instance.new("UIPadding")
			local UIStroke = Instance.new("UIStroke")

			newToggle.Name = "newToggle: "..o.Name
			newToggle.Parent = Window
			newToggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			newToggle.BorderColor3 = Color3.fromRGB(35, 35, 35)
			newToggle.Size = UDim2.new(0, 449, 0, 46)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = newToggle

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = newToggle
			ToggleButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			ToggleButton.BorderColor3 = Color3.fromRGB(22, 22, 22)
			ToggleButton.Position = UDim2.new(0.913016677, 0, 0.2628057, 0)
			ToggleButton.Size = UDim2.new(0, 20, 0, 20)
			ToggleButton.Image = "rbxassetid://0"

			UICorner_2.CornerRadius = UDim.new(0, 3)
			UICorner_2.Parent = ToggleButton

			title.Name = "title"
			title.Parent = newToggle
			title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			title.BorderColor3 = Color3.fromRGB(35, 35, 35)
			title.Position = UDim2.new(0.0136127174, 0, 0.0789763927, 0)
			title.Size = UDim2.new(0, 106, 0, 16)
			title.Font = Enum.Font.GothamBlack
			title.Text = o.Name
			title.TextColor3 = Color3.fromRGB(180, 180, 180)
			title.TextSize = 14.000
			title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			title.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = title
			UIPadding.PaddingLeft = UDim.new(0, 8)
			UIPadding.PaddingTop = UDim.new(0, 3)

			desc.Name = "desc"
			desc.Parent = newToggle
			desc.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			desc.BorderColor3 = Color3.fromRGB(35, 35, 35)
			desc.Position = UDim2.new(0.0146462629, 0, 0.517572761, 0)
			desc.Size = UDim2.new(0, 331, 0, 16)
			desc.Font = Enum.Font.GothamMedium
			desc.Text = o.Description
			desc.TextColor3 = Color3.fromRGB(66, 155, 251)
			desc.TextSize = 14.000
			desc.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			desc.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_2.Parent = desc
			UIPadding_2.PaddingLeft = UDim.new(0, 8)
			UIPadding_2.PaddingTop = UDim.new(0, 3)

			UIStroke.Parent = ToggleButton
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			UIStroke.Color = Color3.fromRGB(50,50,50)
			UIStroke.LineJoinMode = Enum.LineJoinMode.Round
			UIStroke.Thickness = 2
			UIStroke.Transparency = 0


			local Toggle = ToggleButton
			local OnOffToggler = false
			Toggle.MouseButton1Down:Connect(function()
				OnOffToggler = not OnOffToggler
				o.Callback(OnOffToggler)
				if OnOffToggler then
					game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(2, 85, 255)}):Play()
				else
					game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(22, 22, 22)}):Play()
				end	
			end)
			OnOffToggler = o.Default
			if OnOffToggler then
				game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(2, 85, 255)}):Play()
			else
				game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(22, 22, 22)}):Play()
			end	
			o.Callback(OnOffToggler)
		end
		
		function c:newDropDown(o)
			o = o or {
				Name = "New DropDown",
				Items = {},
				Callback = function() end
			}
			local newDropDown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local title = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local ImageButton = Instance.new("ImageButton")
			local DropFrame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			newDropDown.Name = "newDropDown: "..o.Name
			newDropDown.Parent = Window
			newDropDown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			newDropDown.BorderColor3 = Color3.fromRGB(35, 35, 35)
			newDropDown.ClipsDescendants = true
			newDropDown.Position = UDim2.new(0, 0, 0.0065645515, 0)
			newDropDown.Size = UDim2.new(0, 449, 0, 90)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = newDropDown

			title.Name = "title"
			title.Parent = newDropDown
			title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			title.BorderColor3 = Color3.fromRGB(35, 35, 35)
			title.Position = UDim2.new(0, 6, 0, 3)
			title.Size = UDim2.new(0, 106, 0, 16)
			title.Font = Enum.Font.GothamBlack
			title.Text = o.Name
			title.TextColor3 = Color3.fromRGB(180, 180, 180)
			title.TextSize = 14.000
			title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			title.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = title
			UIPadding.PaddingLeft = UDim.new(0, 8)
			UIPadding.PaddingTop = UDim.new(0, 3)

			ImageButton.Parent = newDropDown
			ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			ImageButton.BackgroundTransparency = 1.000
			ImageButton.BorderColor3 = Color3.fromRGB(30, 30, 30)
			ImageButton.Position = UDim2.new(0, 418, 0, 20)
			ImageButton.Size = UDim2.new(0, 20, 0, 20)
			ImageButton.Image = "rbxassetid://7072706663"

			DropFrame.Name = "DropFrame"
			DropFrame.Parent = newDropDown
			DropFrame.AnchorPoint = Vector2.new(0.5, 0)
			DropFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			DropFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
			DropFrame.BorderSizePixel = 0
			DropFrame.ClipsDescendants = true
			DropFrame.Position = UDim2.new(0.5, 0, 0, 40)
			DropFrame.Size = UDim2.new(1, 0, 0, 50)

			UIListLayout.Parent = DropFrame
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			for _,v in next, o.Items do
				local Item = Instance.new("TextButton")
				Item.Name = "Item: "..v
				Item.Parent = DropFrame
				Item.AnchorPoint = Vector2.new(0.5, 0.5)
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Position = UDim2.new(0.5, 0, 0.5, 0)
				Item.Size = UDim2.new(1, 0, 0, 22)
				Item.Font = Enum.Font.Gotham
				Item.Text = v
				Item.TextColor3 = Color3.fromRGB(180, 180, 180)
				Item.TextSize = 14.000

				Item.MouseButton1Down:Connect(function()
					o.Callback(v)
				end)
			end


			local toggle = newDropDown:FindFirstChild('ImageButton')
			local drop = toggle.Parent;local OnOffToggler = false;local itemframe = drop.DropFrame
			local r = TweenFunctions


			toggle.MouseButton1Down:Connect(function()
				OnOffToggler = not OnOffToggler
				if OnOffToggler then -- Enabled
					r.Tween({
						Object = drop,
						Animation = {Size = UDim2.new(0, 449, 0, 90)},
						Direction = "Out",Time = 0.35,Style = "Sine", Repeat = 0
					}):Play()
					r.Tween({
						Object = toggle,
						Animation = {Rotation = 180},
						Direction = "Out",Time = 0.35,Style = "Sine", Repeat = 0
					}):Play()
				else
					r.Tween({
						Object = drop,
						Animation = {Size = UDim2.new(0, 449, 0, 40)},
						Direction = "In",Time = 0.35,Style = "Sine", Repeat = 0
					}):Play()
					r.Tween({
						Object = toggle,
						Animation = {Rotation = 0},
						Direction = "In",Time = 0.35,Style = "Sine", Repeat = 0
					}):Play()
				end	
			end)
		end
		
		function c:newSlider(o)
			o = o or {
				Name = "New Slider",
				Description = "Description",
				Min = 0,
				Max = 100,
				Callback = function() end
			}
			local newSlider = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local title = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local desc = Instance.new("TextLabel")
			local UIPadding_2 = Instance.new("UIPadding")
			local base = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local sliderdrag = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local slidervalue = Instance.new("TextLabel")
			local UIPadding_3 = Instance.new("UIPadding")
			local TextButton = Instance.new("TextButton")


			newSlider.Name = "newSlider: "..o.Name
			newSlider.Parent = Window
			newSlider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			newSlider.BorderColor3 = Color3.fromRGB(35, 35, 35)
			newSlider.Size = UDim2.new(0, 449, 0, 46)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = newSlider

			title.Name = "title"
			title.Parent = newSlider
			title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			title.BorderColor3 = Color3.fromRGB(35, 35, 35)
			title.Position = UDim2.new(0.0136127174, 0, 0.0789763927, 0)
			title.Size = UDim2.new(0, 106, 0, 16)
			title.Font = Enum.Font.GothamBlack
			title.Text = o.Name
			title.TextColor3 = Color3.fromRGB(180, 180, 180)
			title.TextSize = 14.000
			title.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			title.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = title
			UIPadding.PaddingLeft = UDim.new(0, 8)
			UIPadding.PaddingTop = UDim.new(0, 3)

			desc.Name = "desc"
			desc.Parent = newSlider
			desc.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			desc.BorderColor3 = Color3.fromRGB(35, 35, 35)
			desc.Position = UDim2.new(0.0146462629, 0, 0.51757282, 0)
			desc.Size = UDim2.new(0, 197, 0, 16)
			desc.Font = Enum.Font.GothamMedium
			desc.Text = o.Description
			desc.TextColor3 = Color3.fromRGB(66, 155, 251)
			desc.TextSize = 14.000
			desc.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			desc.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_2.Parent = desc
			UIPadding_2.PaddingLeft = UDim.new(0, 8)
			UIPadding_2.PaddingTop = UDim.new(0, 3)

			base.Name = "base"
			base.Parent = newSlider
			base.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			base.BorderColor3 = Color3.fromRGB(22, 22, 22)
			base.Position = UDim2.new(0.469933212, 0, 0.608695686, 0)
			base.Size = UDim2.new(0, 227, 0, 11)

			UICorner_2.CornerRadius = UDim.new(0, 3)
			UICorner_2.Parent = base

			sliderdrag.Name = "sliderdrag"
			sliderdrag.Parent = base
			sliderdrag.BackgroundColor3 = Color3.fromRGB(2, 85, 255)
			sliderdrag.BorderColor3 = Color3.fromRGB(2, 85, 255)
			sliderdrag.BorderSizePixel = 0
			sliderdrag.Size = UDim2.new(0, 0, 0, 11)

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = sliderdrag

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = newSlider
			slidervalue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			slidervalue.BorderColor3 = Color3.fromRGB(35, 35, 35)
			slidervalue.Position = UDim2.new(0.469933182, 0, 0.0789761767, 0)
			slidervalue.Size = UDim2.new(0, 226, 0, 19)
			slidervalue.Font = Enum.Font.GothamBold
			slidervalue.Text = "0"
			slidervalue.TextColor3 = Color3.fromRGB(180, 180, 180)
			slidervalue.TextSize = 14.000
			slidervalue.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
			slidervalue.TextXAlignment = Enum.TextXAlignment.Right

			UIPadding_3.Parent = slidervalue
			UIPadding_3.PaddingLeft = UDim.new(0, 8)
			UIPadding_3.PaddingTop = UDim.new(0, 3)

			TextButton.Parent = newSlider
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Position = UDim2.new(0.469933182, 0, 0.50223577, 0)
			TextButton.Size = UDim2.new(0, 227, 0, 16)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
			TextButton.TextTransparency = 1.000

			local minvalue = tonumber(o.Min)
			local maxvalue = tonumber(o.Max)

			local sliderbar = newSlider:FindFirstChild('base');
			local button = newSlider:FindFirstChild('TextButton')

			local mouse = game.Players.LocalPlayer:GetMouse()
			local SliderValue = newSlider:FindFirstChild('slidervalue')

			local Bar = newSlider:FindFirstChild('base').sliderdrag

			local rel = (mouse.X - sliderbar.AbsolutePosition.X)
			local relpercent = (rel / sliderbar.AbsoluteSize.X) * 100

			local realpercent = math.clamp((maxvalue - minvalue)*(relpercent / 100)+minvalue,minvalue,maxvalue)
			local uis = game:GetService("UserInputService")

			button.MouseButton1Down:Connect(function()
				local rel = (mouse.X - sliderbar.AbsolutePosition.X)
				local relpercent = (rel / sliderbar.AbsoluteSize.X) * 100
				local realpercent = math.clamp((maxvalue - minvalue)*(relpercent / 100)+minvalue,minvalue,maxvalue)

				SliderValue.Text = tostring(math.round(realpercent))
				Bar:TweenSize(UDim2.new(0,math.clamp(mouse.X - sliderbar.AbsolutePosition.X,1,227),0,11),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.1,true)
				local a = spawn(function()
					o.Callback(realpercent)
				end)
				a = nil

				local move = mouse.Move:Connect(function() -- When their mouse moves, change the value and slider size
					local rel = (mouse.X - sliderbar.AbsolutePosition.X)
					local relpercent = (rel / sliderbar.AbsoluteSize.X)*100
					local realpercent = math.clamp((maxvalue - minvalue)*(relpercent / 100)+minvalue,minvalue,maxvalue)
					SliderValue.Text = tostring(math.round(realpercent))
					Bar:TweenSize(UDim2.new(0,math.clamp(mouse.X - sliderbar.AbsolutePosition.X,1,227),0,11),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.1,true)
					spawn(function()
						o.Callback(realpercent)
					end)
				end)
				uis.InputEnded:Connect(function(key)
					if key.UserInputType == Enum.UserInputType.MouseButton1 then
						move:Disconnect()
					end
				end)
			end)

		end
		return c
	end
	return b
end
return a
