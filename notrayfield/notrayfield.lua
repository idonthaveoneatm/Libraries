local a = {}

function a:StartLibrary(o)
	o = o or {
		Name = "New Library"
	}
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Frame_3 = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local Windows = Instance.new("Frame")
	local UIPageLayout = Instance.new("UIPageLayout")
	
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.550233662, 0, 0.435681462, 0)
	Frame.Size = UDim2.new(0, 360, 0, 310)

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = Frame

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Color3.fromRGB(33, 35, 36)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.5, 0, 0.0580645166, 0)
	Frame_2.Size = UDim2.new(0, 360, 0, 36)

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = Frame_2

	Frame_3.Parent = Frame_2
	Frame_3.AnchorPoint = Vector2.new(0.5, 1)
	Frame_3.BackgroundColor3 = Color3.fromRGB(33, 35, 36)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.5, 0, 1, 0)
	Frame_3.Size = UDim2.new(0, 360, 0, 16)

	TextLabel.Parent = Frame_2
	TextLabel.AnchorPoint = Vector2.new(0, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0, 15, 0.5, 0)
	TextLabel.Size = UDim2.new(0, 200, 1, 0)
	TextLabel.Font = Enum.Font.GothamMedium
	TextLabel.Text = "["..o.Name.."]"
	TextLabel.TextColor3 = Color3.fromRGB(216, 222, 233)
	TextLabel.TextSize = 16.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Windows.Name = "Windows"
	Windows.Parent = Frame
	Windows.AnchorPoint = Vector2.new(0.5, 0.5)
	Windows.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Windows.BackgroundTransparency = 1.000
	Windows.ClipsDescendants = true
	Windows.Position = UDim2.new(0.5, 0, 0.55806452, 0)
	Windows.Size = UDim2.new(0, 360, 0, 274)

	UIPageLayout.Parent = Windows
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quint
	
	local b = {}
	function b:CreatePage()
		local Window = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		
		Window.Name = "Window"
		Window.Parent = Windows
		Window.AnchorPoint = Vector2.new(0.5, 0.5)
		Window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Window.BackgroundTransparency = 1.000
		Window.Position = UDim2.new(0.5, 0, 0.5, 0)
		Window.Size = UDim2.new(1, 0, 1, 0)

		UIListLayout.Parent = Window
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		UIPadding.Parent = Window
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		local c = {}
		function c:newToggle(o)
			o = o or {
				Name = "New Toggle",
				Callback = function() end
			}
			local Toggle = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local TextLabel_2 = Instance.new("TextLabel")
			local TextButton = Instance.new("TextButton")
			Toggle.Name = "Toggle"
			Toggle.Parent = Window
			Toggle.AnchorPoint = Vector2.new(0, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(33, 35, 36)
			Toggle.BackgroundTransparency = 0.500
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0, 0, 0.5, 0)
			Toggle.Size = UDim2.new(1, -10, 0, 45)

			UICorner_3.CornerRadius = UDim.new(0, 4)
			UICorner_3.Parent = Toggle

			TextLabel_2.Parent = Toggle
			TextLabel_2.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(175, 60, 35)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.Position = UDim2.new(0, 10, 0.5, 0)
			TextLabel_2.Size = UDim2.new(0, 250, 1, 0)
			TextLabel_2.Font = Enum.Font.Gotham
			TextLabel_2.TextColor3 = Color3.fromRGB(216, 222, 233)
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel_2.Text = o.Name

			TextButton.Parent = Toggle
			TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextButton.Size = UDim2.new(1, 0, 1, 0)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
			local toggle = false

			TextButton.MouseButton1Click:Connect(function()
				toggle = not toggle
				o.Callback(toggle)
				if toggle then
					TextButton.Parent.TextLabel.TextColor3 = Color3.fromRGB(0, 213, 65)
				else
					TextButton.Parent.TextLabel.TextColor3 = Color3.fromRGB(175, 60, 35)
				end
			end)
			
		end
		return c
	end
	return b
end
return a
