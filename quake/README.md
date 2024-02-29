 # quake

this is quake ui library i will fix things eventually

## calling library
```lua
-- quake
local quake = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/quake/src"))()
-- quake
```

### new window
```lua
local window = quake:Window({
    Title = "" -- string
})
```
### new mobile window
will operate with all the lower command js a mobile oriented UI
```lua
local window = quake:MobileWindow({
    Title = "" -- string
})
```
### new tab
```lua
local tab = window:Tab({
    Name = "", -- string
    tabColor = Color3, -- fromHex fromRGB fromHSV
    Image = "" -- rbxassetid
})
```
### new button
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
### new toggle
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
### new textbox
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
### new keybind
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
### new dropdown
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
### new slider
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
### new section
```lua
local section = tab:Section("") -- string

-- has returned functions

section:SetText("") -- string
```
### new paragraph
```lua
local paragraph = tab:Paragraph({
    Title = "", -- string
    Body = "", -- string
})

-- has returned functions

paragraph:SetTitle("") -- string
paragraph:SetBody("") -- string
```
### new label
```lua
local label = tab:Label("") -- string

-- has returned functions

label:SetText("") -- string
```
## everything has
```lua
<object>:Remove() -- ?? i think i added this for all
```
