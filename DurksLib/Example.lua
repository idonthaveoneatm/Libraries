
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/DurksLib/Library.lua", true))()

local ui = lib:CreateUI("test", true)

local w1 = ui:CreateWindow("Atest1")
local w2 = ui:CreateWindow("Btest2")

local c1 = w1:CreateContainer("container1")
local c2 = w1:CreateContainer("container2")

local c3 = w2:CreateContainer("container3")

local dd1 = c1:CreateDropDown({
	Name = "dropdownyo",
	Items = {"item1", "item2"},
	CallBack = function(value)
		print(value)
	end,
})

local slider1 = c1:CreateSlider({
	Name = "slideryo",
	Min = 10,
	Max = 46,
	CallBack = function(value)
		print(value)
	end,
})
local slider2 = c2:CreateSlider({
	Name = "slideryo2",
	Min = 10,
	Max = 46,
	CallBack = function(value)
		print(value)
	end,
})

local textbox1 = c1:CreateTextBox(function(text)
	print(text)
end)
local toggle1 = c1:CreateToggle({
	Name = "Toggleyo",
	Default = true,
	CallBack = function(value)
		print(value)
	end
})
local button1 = c1:CreateButton(function()
	print("hello world!")
end)
