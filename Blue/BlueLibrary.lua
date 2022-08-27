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
local r = TweenFunctions

function a:StartLibrary(props)
	props = props or {
		Name = "griffin"
	}
		local BlueThing = Instance.new("ScreenGui")
	BlueThing.Name = "BlueThing2"
	BlueThing.Parent = game.CoreGui
	BlueThing.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = BlueThing
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(67, 69, 92)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 560, 0, 350)
	Main.Visible = true
		local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Parent = Main
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.188999996, 0, 0.075000003, 0)
	Title.Size = UDim2.new(0, 190, 0, 42)
	Title.Font = Enum.Font.GothamMedium
	Title.Text = tostring(props.Name)
	Title.TextColor3 = Color3.fromRGB(175, 178, 194)
	Title.TextSize = 18.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
		local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Main
		local UIStroke = Instance.new("UIStroke")
	UIStroke.Parent = Main
	UIStroke.Thickness = 1
	UIStroke.Color = Color3.fromRGB(46, 48, 71)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		local decor = Instance.new("Frame")
	decor.Name = "decor"
	decor.Parent = Main
	decor.AnchorPoint = Vector2.new(0.5, 0.5)
	decor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	decor.BackgroundTransparency = 1.000
	decor.Position = UDim2.new(0.5, 0, 0.5, 0)
	decor.Size = UDim2.new(1, 0, 1, 0)
	decor.ZIndex = 0
		local a = Instance.new("Frame")
	a.Name = "a"
	a.Parent = decor
	a.AnchorPoint = Vector2.new(0.5, 0.5)
	a.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
	a.BorderSizePixel = 0
	a.Position = UDim2.new(0, 95, 0, 175)
	a.Size = UDim2.new(0, 180, 0, 340)
	a.ZIndex = 0
		local UIStroke8 = Instance.new("UIStroke")
	UIStroke8.Parent = a
	UIStroke8.Thickness = 1
	UIStroke8.Color = Color3.fromRGB(90, 94, 120)
	UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		local d1 = Instance.new("UICorner")
	d1.CornerRadius = UDim.new(0, 4)
	d1.Name = "d1"
	d1.Parent = a
		local a1 = Instance.new("Frame")
	a1.Name = "a1"
	a1.Parent = a
	a1.AnchorPoint = Vector2.new(0.5, 0.5)
	a1.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
	a1.BorderSizePixel = 0
	a1.Position = UDim2.new(0.5, 0, 0.5, 0)
	a1.Size = UDim2.new(0, 180, 0, 340)
	a1.ZIndex = 0
		local d12 = Instance.new("UICorner")
	d12.CornerRadius = UDim.new(0, 4)
	d12.Name = "d1"
	d12.Parent = a1
		local b = Instance.new("Frame")
	b.Name = "b"
	b.Parent = decor
	b.AnchorPoint = Vector2.new(0.5, 0.5)
	b.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
	b.Position = UDim2.new(0, 365, 0, 26)
	b.Size = UDim2.new(0, 380, 0, 42)
	b.ZIndex = 0
		local UIStroke9 = Instance.new("UIStroke")
	UIStroke9.Parent = b
	UIStroke9.Thickness = 1
	UIStroke9.Color = Color3.fromRGB(90, 94, 120)
	UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		local d13 = Instance.new("UICorner")
	d13.CornerRadius = UDim.new(0, 4)
	d13.Name = "d1"
	d13.Parent = b
		local c = Instance.new("Frame")
	c.Name = "c"
	c.Parent = decor
	c.AnchorPoint = Vector2.new(0.5, 0.5)
	c.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
	c.BorderSizePixel = 0
	c.Position = UDim2.new(0, 160, 0, 30)
	c.Size = UDim2.new(0, 50, 0, 50)
	c.ZIndex = 0
		local d = Instance.new("Frame")
	d.Name = "d"
	d.Parent = decor
	d.AnchorPoint = Vector2.new(0.5, 0.5)
	d.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
	d.Position = UDim2.new(0.664285719, 0, 0.567142904, 0)
	d.Size = UDim2.new(0, 365, 0, 293)
	d.ZIndex = 0
		local d14 = Instance.new("UICorner")
	d14.CornerRadius = UDim.new(0, 4)
	d14.Name = "d1"
	d14.Parent = d
		local Buttons = Instance.new("ScrollingFrame")
	Buttons.Name = "Buttons"
	Buttons.Parent = Main
	Buttons.Active = true
	Buttons.AnchorPoint = Vector2.new(0.5, 0.5)
	Buttons.BackgroundTransparency = 1.000
	Buttons.BorderSizePixel = 0
	Buttons.Position = UDim2.new(0.170000017, 0, 0.560000002, 0)
	Buttons.Size = UDim2.new(0, 180, 0, 298)
	Buttons.CanvasSize = UDim2.new(0, 0, 0, 0)
	Buttons.ScrollBarThickness = 4
	Buttons.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
		local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = Buttons
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
		local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = Buttons
	UIPadding.PaddingTop = UDim.new(0, 1)
		local Windows = Instance.new("Frame")
	Windows.Name = "Windows"
	Windows.Parent = Main
	Windows.AnchorPoint = Vector2.new(0.5, 0.5)
	Windows.BackgroundTransparency = 1.000
	Windows.Position = UDim2.new(0.664875031, 0, 0.567428589, 0)
	Windows.Size = UDim2.new(0, 365, 0, 292)
	Windows.ClipsDescendants = true
		local UIPageLayout = Instance.new("UIPageLayout")
	UIPageLayout.Parent = Windows
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingStyle = Enum.EasingStyle.Exponential
	UIPageLayout.TweenTime = 0.25
	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	local gui = Main
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function Lerp(a, b, m)
		return a + (b - a) * m
	end
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (10); -- // The speed of the UI darg.
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
	end
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
	
	local b = {}
	function b:CreatePage(props)
		props = props or {
			Name = "griffin"
		}
			local newTab = Instance.new("TextButton")
		newTab.Name = "newTab"
		newTab.Parent = Buttons
		newTab.AnchorPoint = Vector2.new(0.5, 0.5)
		newTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		newTab.BackgroundTransparency = 1.000
		newTab.BorderSizePixel = 0
		newTab.Position = UDim2.new(0.499425262, 0, 0.0580204763, 0)
		newTab.Size = UDim2.new(0, 174, 0, 30)
		newTab.Font = Enum.Font.SourceSans
		newTab.Text = ""
		newTab.TextColor3 = Color3.fromRGB(0, 0, 0)
		newTab.TextSize = 14.000
			local BGC = Instance.new("Frame")
		BGC.Name = "BGC"
		BGC.Parent = newTab
		BGC.AnchorPoint = Vector2.new(0.5, 0.5)
		BGC.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
		BGC.BorderSizePixel = 0
		BGC.Position = UDim2.new(0.5, 0, 0.5, 0)
		BGC.Size = UDim2.new(1, 0, 1, 0)
		BGC.ZIndex = 0
			local UIStroke1 = Instance.new("UIStroke")
		UIStroke1.Parent = BGC
		UIStroke1.Thickness = 1
		UIStroke1.Color = Color3.fromRGB(90, 94, 120)
		UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			local UICorner2 = Instance.new("UICorner")
		UICorner2.CornerRadius = UDim.new(0, 4)
		UICorner2.Parent = BGC
			local d15 = Instance.new("Frame")
		d15.Name = "d1"
		d15.Parent = BGC
		d15.AnchorPoint = Vector2.new(1, 0.5)
		d15.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
		d15.BorderColor3 = Color3.fromRGB(90, 94, 120)
		d15.Position = UDim2.new(1, 0, 0.5, 0)
		d15.Size = UDim2.new(0.0586207584, 0, 1, 0)
			local d2 = Instance.new("Frame")
		d2.Name = "d2"
		d2.Parent = BGC
		d2.AnchorPoint = Vector2.new(1, 0.5)
		d2.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
		d2.BorderColor3 = Color3.fromRGB(90, 94, 120)
		d2.BorderSizePixel = 0
		d2.Position = UDim2.new(1, 0, 0.5, 0)
		d2.Size = UDim2.new(0.116092026, 0, 1, 0)
			local BText = Instance.new("TextLabel")
		BText.Name = "BText"
		BText.Parent = newTab
		BText.AnchorPoint = Vector2.new(0.5, 0.5)
		BText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BText.BackgroundTransparency = 1.000
		BText.Position = UDim2.new(0.5, 0, 0.5, 0)
		BText.Size = UDim2.new(1, 0, 1, 0)
		BText.ZIndex = 0
		BText.Font = Enum.Font.Gotham
		BText.Text = props.Name
		BText.TextColor3 = Color3.fromRGB(137, 142, 166)
		BText.TextSize = 14.000
		BText.RichText = true
			local Window = Instance.new("ScrollingFrame")
		Window.Name = "Window"..props.Name
		Window.Parent = Windows
		Window.Active = true
		Window.AnchorPoint = Vector2.new(0.5, 0.5)
		Window.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
		Window.BackgroundTransparency = 1.000
		Window.BorderSizePixel = 0
		Window.Position = UDim2.new(0.5, 0, 0.5, 0)
		Window.Size = UDim2.new(0, 365, 0, 293)
		Window.CanvasPosition = Vector2.new(0, 150)
		Window.ScrollBarThickness = 6
		Window.ScrollBarImageColor3 = Color3.fromRGB(90, 94, 120)
		Window.CanvasPosition = Vector2.new(0,0)
			local UIListLayout2 = Instance.new("UIListLayout")
		UIListLayout2.Parent = Window
		UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout2.Padding = UDim.new(0, 8)
			local UIPadding2 = Instance.new("UIPadding")
		UIPadding2.Parent = Window
		UIPadding2.PaddingLeft = UDim.new(0, 10)
		UIPadding2.PaddingTop = UDim.new(0, 10)
		
		--> Scripting For Window
		local p = newTab
		local function toggle(v, ob)
			if v == true then
				r.Tweens({
					Objects = {ob.BGC, ob.BGC.d1, ob.BGC.d2},
					Animation = {BackgroundColor3 = Color3.fromRGB(90, 94, 120)},
					Time = 0.15,Style = "Sine",Direction = "In",Repeat = 0,
				})
				r.Tween({
					Object = ob.BText,
					Animation = {TextColor3 = Color3.fromRGB(46, 48, 71)},
					Time = 0.15,Style = "Sine",Direction = "In",Repeat = 0,
				}):Play()
			elseif v == false then
				r.Tweens({
					Objects = {ob.BGC, ob.BGC.d1, ob.BGC.d2},
					Animation = {BackgroundColor3 = Color3.fromRGB(60, 63, 88)},
					Time = 0.15,Style = "Sine",Direction = "Out",Repeat = 0,
				})
				r.Tween({
					Object = ob.BText,
					Animation = {TextColor3 = Color3.fromRGB(137, 142, 166)},
					Time = 0.15,Style = "Sine",Direction = "Out",Repeat = 0,
				}):Play()
			end
		end
		
		p.MouseButton1Click:Connect(function()
			for i,v in pairs(Buttons:GetChildren()) do
				if v:IsA("TextButton") then
					toggle(false, v)
				end
			end
			toggle(true, p)
			UIPageLayout:JumpTo(Window)
		end)
		
		
		--> Item Functions
		local c = {}
		function c:newButton(props)
			props = props or {
				Name = "griffin",
				Callback = function() end
			}
				local newButton = Instance.new("Frame")
			newButton.Name = "newButton"
			newButton.Parent = Window
			newButton.AnchorPoint = Vector2.new(0.5, 0.5)
			newButton.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
			newButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newButton.BorderSizePixel = 0
			newButton.Position = UDim2.new(0, 180, 0, 23)
			newButton.Size = UDim2.new(0.949999988, 0, 0, 35)
				local Button_2 = Instance.new("TextButton")
			Button_2.Name = "Button"
			Button_2.Parent = newButton
			Button_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button_2.BackgroundTransparency = 1.000
			Button_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Button_2.Size = UDim2.new(1, 0, 1, 0)
			Button_2.Font = Enum.Font.SourceSans
			Button_2.Text = ""
			Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button_2.TextSize = 14.000
				local BBG = Instance.new("Frame")
			BBG.Name = "BBG"
			BBG.Parent = Button_2
			BBG.AnchorPoint = Vector2.new(0.5, 0.5)
			BBG.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
			BBG.Position = UDim2.new(0.5, 0, 0.5, 0)
			BBG.Size = UDim2.new(1, 0, 1, 0)
				local UICorner_7 = Instance.new("UICorner")
			UICorner_7.CornerRadius = UDim.new(0, 4)
			UICorner_7.Parent = BBG
				local BName = Instance.new("TextLabel")
			BName.Name = "BName"
			BName.Parent = newButton
			BName.AnchorPoint = Vector2.new(0.5, 0.5)
			BName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BName.BackgroundTransparency = 1.000
			BName.Position = UDim2.new(0.5, 0, 0.5, 0)
			BName.Size = UDim2.new(1, 0, 1, 0)
			BName.Font = Enum.Font.Gotham
			BName.Text = props.Name
			BName.TextColor3 = Color3.fromRGB(216, 222, 233)
			BName.TextSize = 15.000
			BName.RichText = true
				local UICorner_8 = Instance.new("UICorner")
			UICorner_8.CornerRadius = UDim.new(0, 4)
			UICorner_8.Parent = newButton
				local UIStroke2 = Instance.new("UIStroke")
			UIStroke2.Parent = newButton
			UIStroke2.Thickness = 1
			UIStroke2.Color = Color3.fromRGB(90, 94, 120)
			UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			
			
			--> Scripting For Button
			local p = Button_2
			local up1 = r.Tween({Object = p.BBG, Animation = {BackgroundColor3 = Color3.fromRGB(60, 63, 88)}, Time = 0.065, Direction = "InOut", Style = "Sine", Repeat = 0})
			local up2 = r.Tween({Object = p.Parent.BName, Animation = {TextSize = 15}, Time = 0.065, Direction = "InOut", Style = "Sine", Repeat = 0})

			p.MouseButton1Down:Connect(function()
				r.Tween({Object = p.BBG, Animation = {BackgroundColor3 = Color3.fromRGB(53, 56, 80)}, Time = 0.065, Direction = "InOut", Style = "Sine", Repeat = 0}):Play() 
				r.Tween({Object = p.Parent.BName, Animation = {TextSize = 16}, Time = 0.065, Direction = "InOut", Style = "Sine", Repeat = 0}):Play()
			end)
			p.MouseLeave:Connect(function()
				up1:Play() up2:Play()
			end)
			p.MouseButton1Up:Connect(function()
				up1:Play() up2:Play()
			end)
			p.MouseButton1Click:Connect(function()
				props.Callback()
			end)			
		end
		function c:newDropDown(props)
			props = props or {
				Name = "griffin",
				Items = {"griffin"},
				Callback = function()end
			}
				local newDropDown = Instance.new("Frame")
			newDropDown.Name = "newDropDown"
			newDropDown.Parent = Window
			newDropDown.AnchorPoint = Vector2.new(0.5, 0.5)
			newDropDown.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
			newDropDown.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newDropDown.BorderSizePixel = 0
			newDropDown.Position = UDim2.new(0.5, 0, 0.5, 0)
			newDropDown.Size = UDim2.new(0.949999988, 0, 0, 50)
				local UICorner_5 = Instance.new("UICorner")
			UICorner_5.CornerRadius = UDim.new(0, 4)
			UICorner_5.Parent = newDropDown
				local DDName = Instance.new("TextLabel")
			DDName.Name = "DDName"
			DDName.Parent = newDropDown
			DDName.AnchorPoint = Vector2.new(0.5, 0)
			DDName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DDName.BackgroundTransparency = 1.000
			DDName.Position = UDim2.new(0.5, 0, 0, 0)
			DDName.Size = UDim2.new(1, 0, 0, 16)
			DDName.Font = Enum.Font.Gotham
			DDName.Text = props.Name
			DDName.TextColor3 = Color3.fromRGB(216, 222, 233)
			DDName.TextSize = 15.000
			DDName.RichText = true
				local DDButton = Instance.new("TextButton")
			DDButton.Name = "DDButton"
			DDButton.Parent = newDropDown
			DDButton.AnchorPoint = Vector2.new(0.5, 0)
			DDButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DDButton.BackgroundTransparency = 1.000
			DDButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DDButton.Position = UDim2.new(0, 168, 0, 19)
			DDButton.Size = UDim2.new(0, 281, 0, 20)
			DDButton.Font = Enum.Font.SourceSans
			DDButton.Text = ""
			DDButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DDButton.TextSize = 14.000
				local value = Instance.new("TextLabel")
			value.Name = "value"
			value.Parent = DDButton
			value.AnchorPoint = Vector2.new(0.5, 0.5)
			value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			value.BackgroundTransparency = 1.000
			value.Position = UDim2.new(0.5, 0, 0.5, 0)
			value.Size = UDim2.new(1, 0, 1.16666734, 0)
			value.ZIndex = 0
			value.Font = Enum.Font.Gotham
			value.Text = "Current Item"
			value.TextColor3 = Color3.fromRGB(137, 142, 166)
			value.TextSize = 13.000
				local DDBG = Instance.new("Frame")
			DDBG.Name = "DDBG"
			DDBG.Parent = newDropDown
			DDBG.AnchorPoint = Vector2.new(0.5, 0)
			DDBG.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			DDBG.Position = UDim2.new(0, 168, 0, 19)
			DDBG.Size = UDim2.new(0, 281, 0, 20)
			DDBG.ZIndex = 0
				local UICorner_6 = Instance.new("UICorner")
			UICorner_6.CornerRadius = UDim.new(0, 4)
			UICorner_6.Parent = DDBG
				local DropBody = Instance.new("Frame")
			DropBody.Name = "DropBody"
			DropBody.Parent = newDropDown
			DropBody.AnchorPoint = Vector2.new(0.5, 0)
			DropBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropBody.BackgroundTransparency = 1.000
			DropBody.BorderSizePixel = 0
			DropBody.ClipsDescendants = true
			DropBody.Position = UDim2.new(0, 168, 0, 36)
			DropBody.Size = UDim2.new(0, 281, 0, 0)
				local UIListLayout_3 = Instance.new("UIListLayout")
			UIListLayout_3.Parent = DropBody
			UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
				local UIStroke3 = Instance.new("UIStroke")
			UIStroke3.Parent = newDropDown
			UIStroke3.Thickness = 1
			UIStroke3.Color = Color3.fromRGB(90, 94, 120)
			UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			
			
			--> Scripting For DropDown
			local p = DDButton
			local dd = p.Parent
			local ddbg = dd.DDBG
			local dropbody = dd.DropBody
			local ddopen = false
									
			for i,v in next, props.Items do
					local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropBody
				Item.AnchorPoint = Vector2.new(0.5, 0.5)
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Position = UDim2.new(0.5, 0, 0.5, 0)
				Item.Size = UDim2.new(1, 0, 0, 24)
				Item.Font = Enum.Font.SourceSans
				Item.Text = ""
				Item.TextColor3 = Color3.fromRGB(0, 0, 0)
				Item.TextSize = 14.000
					local IName = Instance.new("TextLabel")
				IName.Name = "IName"
				IName.Parent = Item
				IName.AnchorPoint = Vector2.new(0.5, 0.5)
				IName.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
				IName.BackgroundTransparency = 1.000
				IName.BorderSizePixel = 0
				IName.Position = UDim2.new(0.5, 0, 0.5, 0)
				IName.Size = UDim2.new(1, 0, 1, 0)
				IName.Font = Enum.Font.GothamMedium
				IName.Text = v
				IName.TextColor3 = Color3.fromRGB(216, 222, 233)
				IName.TextSize = 12.000
				IName.RichText = true
				
				
				--> Scripting For Items
				local a = r.Tween({ Object = IName, Animation = {TextColor3 = Color3.fromRGB(216, 222, 233)}, Time = 0.065, Direction = "Out", Style = "Sine", Repeat = 0})
				local a1 = r.Tween({ Object = IName, Animation = {TextColor3 = Color3.fromRGB(216, 222, 233)}, Time = 0.065, Direction = "Out", Style = "Sine", Repeat = 0})
				local b = r.Tween({ Object = IName, Animation = {TextColor3 = Color3.fromRGB(137, 142, 166)}, Time = 0.065, Direction = "In", Style = "Sine", Repeat = 0})
				local p = DDButton
				local dd = p.Parent
				local ddbg = dd.DDBG
				local dropbody = dd.DropBody
				
				local function check(val)
					if val then
						ddopen = false
						r.Tween({
							Object = dd, Animation = {Size = UDim2.new(0.95,0,0,50)},
							Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
						}):Play()
						r.Tween({
							Object = ddbg, Animation = {Size = UDim2.new(0,281,0,20)},
							Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
						}):Play()
						r.Tween({
							Object = dropbody, Animation = {Size = UDim2.new(0,281,0,0)},
							Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
						}):Play()
					end
				end 
				Item.MouseButton1Down:Connect(function()
					b:Play()
				end)
				Item.MouseLeave:Connect(function()
					repeat wait() until b.Completed
					a1:Play()
				end)
				Item.MouseButton1Click:Connect(function()
					value.Text = v
					props.Callback(v)
					repeat wait() until b.Completed
					a:Play()
					a.Completed:Connect(function()
						check(ddopen)
					end)
				end)
			end
			
			local function count()
				local items = 0
				for i,v in pairs(dropbody:GetChildren()) do
					if v:IsA("TextButton") then
						items = items + 24
					end
				end
				return items
			end local i = count()
			local function openclose(val)
				if val then
					r.Tween({
						Object = dd, Animation = {Size = UDim2.new(0.95,0,0,40+i)},
						Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
					}):Play()
					r.Tween({
						Object = ddbg, Animation = {Size = UDim2.new(0,281,0,16+i)},
						Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
					}):Play()
					r.Tween({Object = dropbody, Animation = {Size = UDim2.new(0,281,0,i)}, 
					Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
					}):Play()
				else
					r.Tween({
						Object = dd, Animation = {Size = UDim2.new(0.95,0,0,50)},
						Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
					}):Play()
					r.Tween({
						Object = ddbg, Animation = {Size = UDim2.new(0,281,0,20)},
						Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
					}):Play()
					r.Tween({
						Object = dropbody, Animation = {Size = UDim2.new(0,281,0,0)},
						Time = 0.25, Direction = "Out", Style = "Sine", Repeat = 0
					}):Play()
				end
			end
			p.MouseButton1Click:Connect(function()
				ddopen = not ddopen openclose(ddopen)
			end)
		end
		function c:newLabel(props)
			props = props or {
				Text = "griffin"
			}
				local newLabel = Instance.new("Frame")
			newLabel.Name = "newLabel"
			newLabel.Parent = Window
			newLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			newLabel.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			newLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newLabel.BorderSizePixel = 0
			newLabel.Position = UDim2.new(0, 180, 0, 23)
			newLabel.Size = UDim2.new(0.949999988, 0, 0, 20)
				local LText = Instance.new("TextLabel")
			LText.Name = "LText"
			LText.Parent = newLabel
			LText.AnchorPoint = Vector2.new(0.5, 0.5)
			LText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LText.BackgroundTransparency = 1.000
			LText.Position = UDim2.new(0.5, 0, 0.5, 0)
			LText.Size = UDim2.new(1, 0, 1, 0)
			LText.Font = Enum.Font.GothamMedium
			LText.Text = props.Text
			LText.TextColor3 = Color3.fromRGB(216, 222, 233)
			LText.TextSize = 15.000
			LText.RichText = true
				local UICorner_10 = Instance.new("UICorner")
			UICorner_10.CornerRadius = UDim.new(0, 4)
			UICorner_10.Parent = newLabel
			
			
			-->Scripting For Label
			function props:Update(newtext)
				LText.Text = newtext
			end
			return props
		end
		function c:newParagraph(props)
			props = props or {
				Title = "griffin",
				Body = "griffin"
			}
				local newParagraph = Instance.new("Frame")
			newParagraph.Name = "newParagraph"
			newParagraph.Parent = Window
			newParagraph.AnchorPoint = Vector2.new(0.5, 0.5)
			newParagraph.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			newParagraph.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newParagraph.BorderSizePixel = 0
			newParagraph.Position = UDim2.new(0, 180, 0, 23)
			newParagraph.Size = UDim2.new(0.949999988, 0, 0, 50)
				local PTitle = Instance.new("TextLabel")
			PTitle.Name = "PTitle"
			PTitle.Parent = newParagraph
			PTitle.AnchorPoint = Vector2.new(0.5, 0)
			PTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			PTitle.BackgroundTransparency = 1.000
			PTitle.Position = UDim2.new(0.5, 0, 0, 0)
			PTitle.Size = UDim2.new(0.980000019, 0, 0, 20)
			PTitle.Font = Enum.Font.GothamMedium
			PTitle.Text = props.Title
			PTitle.TextColor3 = Color3.fromRGB(216, 222, 233)
			PTitle.TextSize = 15.000
			PTitle.TextXAlignment = Enum.TextXAlignment.Left
			PTitle.RichText = true
				local UICorner_11 = Instance.new("UICorner")
			UICorner_11.CornerRadius = UDim.new(0, 4)
			UICorner_11.Parent = newParagraph
				local PBody = Instance.new("TextLabel")
			PBody.Name = "PBody"
			PBody.Parent = newParagraph
			PBody.AnchorPoint = Vector2.new(0.5, 0)
			PBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			PBody.BackgroundTransparency = 1.000
			PBody.Position = UDim2.new(0.5, 0, 0, 20)
			PBody.Size = UDim2.new(0.980000019, 0, 0, math.round(PBody.TextBounds.Y))
			PBody.Font = Enum.Font.Gotham
			PBody.Text = ""..props.Body
			PBody.TextColor3 = Color3.fromRGB(137, 142, 166)
			PBody.TextSize = 13.000
			PBody.TextWrapped = true
			PBody.TextXAlignment = Enum.TextXAlignment.Left
			PBody.TextYAlignment = Enum.TextYAlignment.Top
			PBody.RichText = true
			
			
			--> Scripting For Paragraph
			newParagraph.Size = UDim2.new(0.949999988, 0, 0, 22 + math.round(PBody.TextBounds.Y))
			function props:Update(texts)
				texts = texts or {
					Title = "Title",
					Body = "Body"
				}
				PTitle.Text = props.Title
				PBody.Text = ""..props.Body
				newParagraph.Size = UDim2.new(0.949999988, 0, 0, 22 + math.round(PBody.TextBounds.Y))
			end
			return props
		end
		function c:newSlider(props)
			props = props or {
				Name = "griffin",
				Minimum = 0,
				Maximum = 100,
				Step = 0,
				Callback = function() end
			}
				local newSlider = Instance.new("Frame")
			newSlider.Name = "newSlider"
			newSlider.Parent = Window
			newSlider.AnchorPoint = Vector2.new(0.5, 0.5)
			newSlider.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
			newSlider.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newSlider.BorderSizePixel = 0
			newSlider.Position = UDim2.new(0, 180, 0, 23)
			newSlider.Size = UDim2.new(0.949999988, 0, 0, 45)
				local SName = Instance.new("TextLabel")
			SName.Name = "SName"
			SName.Parent = newSlider
			SName.AnchorPoint = Vector2.new(0.5, 0)
			SName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SName.BackgroundTransparency = 1.000
			SName.Position = UDim2.new(0.5, 0, 0, 0)
			SName.Size = UDim2.new(1, 0, 0, 16)
			SName.Font = Enum.Font.Gotham
			SName.Text = props.Name
			SName.TextColor3 = Color3.fromRGB(216, 222, 233)
			SName.TextSize = 15.000
				local slider = Instance.new("Frame")
			slider.Name = "slider"
			slider.Parent = newSlider
			slider.AnchorPoint = Vector2.new(0.5, 0.5)
			slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			slider.BackgroundTransparency = 1.000
			slider.Position = UDim2.new(0.443686426, 0, 0.608555555, 0)
			slider.Size = UDim2.new(0, 250, 0, 14)
				local UICorner_3 = Instance.new("UICorner")
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = slider
				local Button = Instance.new("TextButton")
			Button.Name = "Button"
			Button.Parent = slider
			Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Button.BackgroundColor3 = Color3.fromRGB(175, 178, 194)
			Button.BackgroundTransparency = 1.000
			Button.Position = UDim2.new(0.5, 0, 0.5, 0)
			Button.Size = UDim2.new(1, 0, 0, 12)
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
				local slider_2 = Instance.new("Frame")
			slider_2.Name = "slider"
			slider_2.Parent = slider
			slider_2.AnchorPoint = Vector2.new(0, 0.5)
			slider_2.BackgroundColor3 = Color3.fromRGB(90, 94, 120)
			slider_2.BorderColor3 = Color3.fromRGB(60, 63, 88)
			slider_2.Position = UDim2.new(0, 0, 0.5, 0)
			slider_2.Size = UDim2.new(0, 0, 0, 14)
				local d1_6 = Instance.new("UICorner")
			d1_6.CornerRadius = UDim.new(0, 5)
			d1_6.Name = "d1"
			d1_6.Parent = slider_2
				local d_2 = Instance.new("Frame")
			d_2.Name = "d"
			d_2.Parent = slider
			d_2.AnchorPoint = Vector2.new(0.5, 0.5)
			d_2.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			d_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			d_2.Size = UDim2.new(0, 250, 0, 14)
			d_2.ZIndex = 0
				local d1_7 = Instance.new("UICorner")
			d1_7.CornerRadius = UDim.new(0, 5)
			d1_7.Name = "d1"
			d1_7.Parent = d_2
				local UICorner_4 = Instance.new("UICorner")
			UICorner_4.CornerRadius = UDim.new(0, 4)
			UICorner_4.Parent = newSlider
				local value = Instance.new("TextLabel")
			value.Name = "value"
			value.Parent = newSlider
			value.AnchorPoint = Vector2.new(0.5, 0.5)
			value.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			value.Position = UDim2.new(0.896000028, 0, 0.587000012, 0)
			value.Size = UDim2.new(0, 30, 0, 16)
			value.Font = Enum.Font.Gotham
			value.Text = ""
			value.TextColor3 = Color3.fromRGB(216, 222, 233)
			value.TextSize = 14.000
				local d1_8 = Instance.new("UICorner")
			d1_8.CornerRadius = UDim.new(0, 4)
			d1_8.Name = "d1"
			d1_8.Parent = value
				local UIStroke4 = Instance.new("UIStroke")
			UIStroke4.Parent = newSlider
			UIStroke4.Thickness = 1
			UIStroke4.Color = Color3.fromRGB(90, 94, 120)
			UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			
			
			--> Scripting For Slider
			local Player = game:GetService("Players")
			local UIS = game:GetService("UserInputService")
			local RunService = game:GetService("RunService")
			local Frame = Button.Parent.slider
			local Button = Button
			local db = false local percentage = 0
			local min = tonumber(props.Minimum)
			local max = tonumber(props.Maximum)
			local a = tonumber(props.Step)
			local step
			
			local function checkstep()
				if props.Step == 0 then
					step = 1/(props.Minimum + props.Maximum)
				else
					step = 1/a
				end
				return step
			end
			checkstep()
			local function snap(number,factor)
				if factor == 0 then
					return number
				else
					return math.floor(number/factor)*factor
				end
			end
			UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if db == true then
						db= false
						r.Tween({Object = Frame, Animation = {Size = UDim2.new(Frame.Size.X.Scale, 0, 0, 14)},Time = 0.05,Direction = "In",Style = "Sine",Repeat = 0}):Play()
						props.Callback(value.Text)
					end
				end
			end)
			Button.MouseButton1Down:Connect(function()
				db = true
				r.Tween({Object = Frame, Animation = {Size = UDim2.new(Frame.Size.X.Scale, 0, 0, 14)},Time = 0.05,Direction = "In",Style = "Sine",Repeat = 0}):Play()
			end)
			Frame.Changed:Connect(function()
				local a = max local b = min
				local c = tonumber(Frame.Size.X.Scale)
				local d = 1 local f1 = 100*c local f = (0.01)*f1
				local pos = (((a-b)/d)*f)+b local pos2 = math.round(pos)
				value.Text = pos2
			end)
			RunService.RenderStepped:Connect(function()
				if db then
					local MousePos = UIS:GetMouseLocation().X
					local FrameSize = Button.Parent.AbsoluteSize.X
					local FramePos = Button.Parent.AbsolutePosition.X
					local pos = snap((MousePos-FramePos)/FrameSize,step)
					local percentage = math.clamp(pos,0,1)
					r.Tween({Object = Frame, Animation = {Size = UDim2.new(percentage, 0, 0, 14)}, Time = 0.05,Direction = "In",Style = "Sine",Repeat = 0}):Play()
				end
			end)
		end
		function c:newTextBox(props)
			props = props or {
				Name = "griffin",
				OnStartText = "",
				Callback = function() end
			}
				local newTextBox = Instance.new("Frame")
			newTextBox.Name = "newTextBox"
			newTextBox.Parent = Window
			newTextBox.AnchorPoint = Vector2.new(0.5, 0.5)
			newTextBox.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
			newTextBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newTextBox.BorderSizePixel = 0
			newTextBox.Position = UDim2.new(0, 180, 0, 23)
			newTextBox.Size = UDim2.new(0.949999988, 0, 0, 30)
				local UICorner_9 = Instance.new("UICorner")
			UICorner_9.CornerRadius = UDim.new(0, 4)
			UICorner_9.Parent = newTextBox
				local TBName = Instance.new("TextLabel")
			TBName.Name = "TBName"
			TBName.Parent = newTextBox
			TBName.AnchorPoint = Vector2.new(0.5, 0)
			TBName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TBName.BackgroundTransparency = 1.000
			TBName.Position = UDim2.new(0.187175691, 0, 0, 0)
			TBName.Size = UDim2.new(0.369532973, 0, 1, 0)
			TBName.Font = Enum.Font.Gotham
			TBName.Text = "TextBox Name"
			TBName.TextColor3 = Color3.fromRGB(216, 222, 233)
			TBName.TextSize = 15.000
				local TextBox = Instance.new("TextBox")
			TextBox.Parent = newTextBox
			TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
			TextBox.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			TextBox.Position = UDim2.new(0.714974105, 0, 0.533333302, 0)
			TextBox.Size = UDim2.new(0, 84, 0, 20)
			TextBox.Font = Enum.Font.Gotham
			TextBox.PlaceholderText = "PlaceHold"
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(216, 222, 233)
			TextBox.TextSize = 14.000
				local d1_9 = Instance.new("UICorner")
			d1_9.CornerRadius = UDim.new(0, 4)
			d1_9.Name = "d1"
			d1_9.Parent = TextBox
				local UIStroke5 = Instance.new("UIStroke")
			UIStroke5.Parent = newTextBox
			UIStroke5.Thickness = 1
			UIStroke5.Color = Color3.fromRGB(90, 94, 120)
			UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			
			
			-->Scripting For TextBox

			TextBox.Changed:Connect(function()
				local a = math.round(TextBox.TextBounds.X)
				local b = a + 20
				r.Tween({
					Object = TextBox,
					Animation = {Size = UDim2.new(0,b, 0,20)},
					Time = 0.045, Direction = "InOut", Style = "Sine", Repeat = 0
				}):Play()
				b = 0
			end)
			TextBox.FocusLost:Connect(function()
				props.Callback(tostring(TextBox.Text))
			end)
			TextBox.Text = tostring(props.OnStartText) props.Callback(TextBox.Text)
		end
		function c:newToggle(props)
			props = props or {
				Name = "griffin",
				Default = false,
				Callback = function() end
			}
				local newToggle = Instance.new("Frame")
			newToggle.Name = "newToggle"
			newToggle.Parent = Window
			newToggle.AnchorPoint = Vector2.new(0.5, 0.5)
			newToggle.BackgroundColor3 = Color3.fromRGB(60, 63, 88)
			newToggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
			newToggle.BorderSizePixel = 0
			newToggle.Position = UDim2.new(0, 180, 0, 23)
			newToggle.Size = UDim2.new(0.949999988, 0, 0, 30)
				local UICorner_12 = Instance.new("UICorner")
			UICorner_12.CornerRadius = UDim.new(0, 4)
			UICorner_12.Parent = newToggle
				local TName = Instance.new("TextLabel")
			TName.Name = "TName"
			TName.Parent = newToggle
			TName.AnchorPoint = Vector2.new(0.5, 0)
			TName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TName.BackgroundTransparency = 1.000
			TName.Position = UDim2.new(0.187175691, 0, 0, 0)
			TName.Size = UDim2.new(0.369532973, 0, 1, 0)
			TName.Font = Enum.Font.Gotham
			TName.Text = props.Name
			TName.TextColor3 = Color3.fromRGB(216, 222, 233)
			TName.TextSize = 15.000
				local TextButton = Instance.new("TextButton")
			TextButton.Parent = newToggle
			TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextButton.Size = UDim2.new(1, 0, 1, 0)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
				local Icon = Instance.new("ImageLabel")
			Icon.Name = "Icon"
			Icon.Parent = TextButton
			Icon.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon.BackgroundTransparency = 1.000
			Icon.Position = UDim2.new(0.805000007, 0, 0.5, 0)
			Icon.Size = UDim2.new(0, 28, 0, 28)
			Icon.Image = "http://www.roblox.com/asset/?id=10705942495"
			Icon.ImageColor3 = Color3.fromRGB(216, 222, 233)
			Icon.ImageRectOffset = Vector2.new(0, 0)
			Icon.ImageRectSize = Vector2.new(0, 0)
			Icon.ScaleType = Enum.ScaleType.Fit
			Icon.ImageTransparency = 1
				local Decor = Instance.new("Frame")
			Decor.Name = "Decor"
			Decor.Parent = TextButton
			Decor.AnchorPoint = Vector2.new(0.5, 0.5)
			Decor.BackgroundColor3 = Color3.fromRGB(53, 56, 80)
			Decor.Position = UDim2.new(0.805000007, 0, 0.5, 0)
			Decor.Size = UDim2.new(0, 28, 0, 28)
			Decor.ZIndex = 0
				local UICorner_13 = Instance.new("UICorner")
			UICorner_13.CornerRadius = UDim.new(0, 4)
			UICorner_13.Parent = Decor
				local UIStroke6 = Instance.new("UIStroke")
			UIStroke6.Parent = newToggle
			UIStroke6.Thickness = 1
			UIStroke6.Color = Color3.fromRGB(90, 94, 120)
			UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			
			
			--> Scripting for Toggle
			local on  = false
			
			TextButton.MouseButton1Click:Connect(function()
				on = not on
				props.Callback(on)
				if on then
					r.Tween({
						Object = Icon,
						Animation = {ImageTransparency = 0},
						Time = 0.095, Direction = "In", Style = "Sine", Repeat = 0
					}):Play()

				else
					r.Tween({
						Object = Icon,
						Animation = {ImageTransparency = 1},
						Time = 0.095, Direction = "In", Style = "Sine", Repeat = 0
					}):Play()
				end
			end)
			on = props.Default
			if props.Default then
				props.Callback(on)
				r.Tween({
					Object = Icon,
					Animation = {ImageTransparency = 0},
					Time = 0.095, Direction = "In", Style = "Sine", Repeat = 0
				}):Play()
			else
				r.Tween({
					Object = Icon,
					Animation = {ImageTransparency = 1},
					Time = 0.095, Direction = "In", Style = "Sine", Repeat = 0
				}):Play()
			end
		end
		return c
		
	end
	return b
	
end
