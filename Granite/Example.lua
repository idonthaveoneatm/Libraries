local url = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/Granite/Library.lua"))()

local lib = url:StartLibrary({Name = "your name here"})
local window = lib:CreatePage({Name = "hello"})

local button = window:newButton({
	Name = "button",
	Callback = function()
		print("button")
	end
})

local dropdown = window:newDropDown({
	Name = "dropdown",
	Items = {"item1", "item2"},
	Callback = function(current)
		print("dropdown: "..current)
	end
})

local slider = window:newSlider({
	Name = "slider",
	Description = "Description",
	Min = 63,
	Max = 124,
	Callback = function(place) 
		print("slider: "..place)
	end
})

local toggle = window:newToggle({
	Name = "toggle",
	Description = "Description",
	Default = true,
	Callback = function(boolean)
		print("boolean2 is",boolean)
	end
})
