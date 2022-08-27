local url = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/Blue/BlueLibrary.lua"))()

local lib = url:StartLibrary({
    Name = "Library Title"
  })
local window = lib:CreatePage({
    Name = "hello"
  })

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

local label = window:newLabel({
	Text = "label"
})

label:Update("new text here")

local paragraph = window:newParagraph({
	Title = "title",
	Body = "body"
})

paragraph:Update({
	Title = "new title",
	Body	 = "new body"
})

local slider = window:newSlider({
	Name = "slider",
	Minimum = 63,
	Maximum = 124,
	Step = 10,
	Callback = function(place) 
		print("slider2 "..place)
	end
})

local textbox = window:newTextBox({
	Name = "textbox",
	OnStartText = "startertext",
	Callback = function(text)
		print("textbox2 "..text)
	end
})

local toggle = window:newToggle({
	Name = "toggle",
	Default = true,
	Callback = function(boolean)
		print("boolean2 is",boolean)
	end
})
