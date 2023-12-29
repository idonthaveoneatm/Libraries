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

## everything has
```lua
<object>:Remove() -- ?? i think i added this for all
```
