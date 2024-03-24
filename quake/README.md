 # quake

this is quake ui library i will fix things eventually

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
    }
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
    tabColor = Color3, -- fromHex fromRGB fromHSV
    Image = "" -- rbxassetid
})
```
### new Button
```lua
local button = tab:Button({
    Name = "", -- string
    Callback = function()
        print("quake")
    end
})

-- has returned functions

button:SetText("") -- string
button:SetCallback(function()
    print("new quake")
end)
```
### new Toggle
```lua
local toggle = tab:Toggle({
    Name = "", -- string
    Default = false, -- boolean
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
    Default = "", -- string
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
    Multiselect = false, -- boolean
    Default = "", -- if multiselect its a table: {}
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
```
### New Slider
```lua
local slider = tab:Slider({
    Name = "", -- string
    Min = 0, -- number
    Max = 100, -- number
    Step = 1, -- number
    InitialValue = 1, -- number
    Callback = function(value)
        print(value)
    end
})

-- has returned functions

slider:SetValue(50) -- number
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
```lua
<object>:Remove() -- ?? i think i added this for all
```
