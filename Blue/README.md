# Documentation: Index
[Basics](), [Items]()
## Basics
Starting Library:
```lua
local URL = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/Blue/BlueLibrary.lua"))()
```
Adding a Title:
```lua
local Library = URL:StartLibrary({
  Name = "Blue Library!"
})

[[
  Name = <string> 
]]
```
Adding a Window/Page:
```lua
local Page = Library:CreatePage({
  Name = "Page Name"
})

[[
  Name = <string>
]]
```
## Items
Creating Button:
```lua
local Button = Page:newButton({
	Name = "A Button",
	Callback = function()
		print("button")
	end
})

[[
Name = <string>
Callback = <function>
]]
```
Creating Toggle:
```lua
local Toggle = Page:newToggle({
	Name = "A Toggle",
	Default = true,
	Callback = function(boolean)
		print("Toggle is:",boolean)
	end
})

[[
Name = <string>
Default = <boolean> <- fires at the start of execution
Callback = <function>
]]
```
Creating Slider:
```lua
local Slider = Page:newSlider({
	Name = "A Slider",
	Minimum = 63,
	Maximum = 124,
	Step = 10,
	Callback = function(place) 
		print("slider2 "..place)
	end
})

[[
Name = <string>
Minimum = <number>
Maximum = <number>
Step = <number>
^ determines how many times the slider will move forward before reaching end
^ if 0 will do increments of 1 aka 1/(Minimum+Maximum)
Callback = <function>
]]
```
Creating DropDown:
```lua
local DropDown = Page:newDropDown({
	Name = "A DropDown",
	Items = {
    "Item1", 
    "Item2"
  },
	Callback = function(current)
		print("dropdown: "..current)
	end
})

[[
Name = <string>
Items = <table>
Callback = <function>
]]
```
Creating TextBox:
```lua
local TextBox = Page:newTextBox({
	Name = "A TextBox",
	OnStartText = "Starter Text",
	Callback = function(text)
		print("textbox2 "..text)
	end
})

[[
Name = <string>
OnStartText = <string>
^ fires on script start
Callback = <function>
]]
```
Creating Label:
```lua
local Lable = Page:newLabel({
	Text = "A Label"
})

[[
Text = <string>
]]
```
Updating Lable:
```lua
Label:Update("new text here")
```
Creating Paragraph:
```lua
local Paragraph = Page:newParagraph({
	Title = "A Title",
	Body = "The Body"
})

[[
Title = <string>
Body = <string>
]]
```
Updating Paragraph:
```lua
Paragraph:Update({
	Title = "new title",
	Body	 = "new body"
})

[[
Title = <string>
Body = <string>
]]
```
## Thanks for scrolling
