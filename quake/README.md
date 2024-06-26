 # quake

this is quake ui library i will fix things eventually

### Credits
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) - Code for slider math
- [dawid-scripts/Fluent/](https://github.com/dawid-scripts/Fluent/) - lucide icons
- [lucide.dev](https://lucide.dev/) - more lucide icons
- [latte-soft/wax](https://github.com/latte-soft/wax) - bundler

## Calling Library
```lua
-- quake
local quake = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/quake/src"))()
-- quake
```

### New Window
```lua
local window = quake:Window({
    Title = "", -- string
    isMobile = false, -- true if you want mobile library if you dont add it defaults to false
    Size = {
        X = 550, -- number
        Y = 400 -- number
    },
    CustomTheme = { -- not required it will default to below if it doesn't exist/empty
        defaultTab = Color3.fromHex("#a49ae6"),
        background = Color3.fromRGB(40, 44, 50),
        secondaryBackground = Color3.fromRGB(49, 56, 66),
        tertiaryBackground = Color3.fromRGB(57, 63, 75),
        text = Color3.fromRGB(220,221,225),
        image = Color3.fromRGB(220,221,225),
        placeholder = Color3.fromRGB(165,166,169),
        close = Color3.fromRGB(190, 100, 105)
    },
    KeyCode = Enum.KeyCode.Backquote -- not required defaults to backquote
})
```
### Setting Theme
```lua
quake:SetCustomTheme({
    defaultTab = Color3.fromHex("#a49ae6"),
    background = Color3.fromRGB(40, 44, 50),
    secondaryBackground = Color3.fromRGB(49, 56, 66),
    tertiaryBackground = Color3.fromRGB(57, 63, 75),
    text = Color3.fromRGB(220,221,225),
    image = Color3.fromRGB(220,221,225),
    placeholder = Color3.fromRGB(165,166,169),
    close = Color3.fromRGB(190, 100, 105)
})
-- you dont need to input all aka you can js change background if you want
quake:SetCustomTheme({
    background = Color3.fromRGB(255, 44, 50) -- if you really wanted to
})
```
### Notify
```lua
local notification = window:Notify({
    Title = "", -- string
    Body = "", -- string
    Duration = 0 -- number
})
```
### New Tab
```lua
local tab = window:Tab({
    Name = "", -- string
    tabColor = Color3, -- fromHex fromRGB fromHSV NOT REQUIRED HAS A DEFAULT COLOR
    Image = "" -- rbxassetid
})
```
### new Group
```lua
local group = tab:Group({
    Name = "", -- string
    Icon = "" -- string
})

-- has returned functions

group:SetName("") -- string
group:SetIcon("") -- string
```
These will have the ability to add components with all their returned functions.
Basically a folder
### new Button
```lua
local button = tab:Button({
    Name = "", -- string
    Callback = function()
        print("quake")
    end
})

-- has returned functions

button:SetName("") -- string
button:SetCallback(function()
    print("new quake")
end)
```
### new Toggle
```lua
local toggle = tab:Toggle({
    Name = "", -- string
    Default = false, -- boolean OPTIONAL
    Callback = function(value)
        print(value)
    end
})

-- has returned functions

toggle:SetValue(true) -- boolean
```
### New TextBox
```lua
local textbox = tab:TextBox({
    Name = "", -- string
    Default = "", -- string OPTIONAL
    OnLeave = true, -- boolean OPTIONAL
    OnlyNumbers = false, -- boolean OPTIONAL
    Callback = function(value)
        print(value)
    end
})

-- has returned functions

textbox:SetInput("") -- string
```
### New Keybind
```lua
local keybind = tab:Keybind({
    Name = "", -- string
    Default = "E", -- string but a LETTER
    Callback = function()
        print("quake")
    end
})

-- has returned functions

keybind:SetBind("") -- string but a LETTER
```
### New Dropdown
```lua
local dropdown = tab:Dropdown({
    Name = "", -- string
    Items = {}, -- table
    Multiselect = false, -- boolean OPTIONAL
    Default = "" or {}, -- string or table OPTIONAL
    Callback = function(value)
        -- if multiselect
        for i,v in ipairs(value) do
            print(i,v)
        end
        -- if not multiselect
        print(value)
    end
})

-- has returned functions

dropdown:SetItems({}) -- table
dropdown:SelectItem("") -- string
dropdonw:SelectItems({}) -- table
```
SetItem is used when Multiselect is false and SetItems is for when it is true
### New Slider
```lua
local slider = tab:Slider({
    Name = "", -- string
    Min = 0, -- number
    Max = 100, -- number
    Placement = 0, -- number The amount of decimals to go OPTIONAL
    InitialValue = 1, -- number OPTIONAL
    Callback = function(value)
        print(value)
    end
})

-- has returned functions

slider:SetValue(50) -- number
slider:SetMin(50) -- number
slider:SetMax(50) -- number
slider:SetStep(5) -- number
```
### New ColorPicker
```lua
local colorpicker = tab:ColorPicker({
    Name = "", -- string
    Color = Color3.fromHex("#ffffff"), -- Color3
    Callback = function(value)
        print(value)
    end
})

-- has returned function

colorpicker:SetColor(Color3.fromRGB(255,255,255)) -- Color3
```
### New Section
```lua
local section = tab:Section("") -- string

-- has returned functions

section:SetText("") -- string
```
### New Paragraph
```lua
local paragraph = tab:Paragraph({
    Title = "", -- string
    Body = "", -- string
})

-- has returned functions

paragraph:SetTitle("") -- string
paragraph:SetBody("") -- string
```
### New Label
```lua
local label = tab:Label("") -- string

-- has returned functions

label:SetText("") -- string
```
## Miscellaneous
These are on all components that are added to tabs or groups
```lua
<object>:Remove() -- ?? i think i added this for all
<object>:Lock("") -- string
<object>:Unlock()
```
