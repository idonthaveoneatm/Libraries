# Chrono User Interface
A Roblox user interface built using [Fusion 0.2](https://elttob.uk/Fusion/0.2/).

Developed by - griffin(@idonthaveoneatm)

Contact me via Discord **@griffindoescooking** for any problems or questions

### Credits:
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) - Code for slider math
- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent/) - Lucide icons
- [lucide.dev](https://lucide.dev/) - More Lucide icons
- [latte-soft/wax](https://github.com/latte-soft/wax) - Bundler
# Launching Chrono
```lua
-- private
```
## Create a Window
```lua
local window = chrono:Window({
    Title = "chrono",
    Description = "chrono user interface",
    HideBind = Enum.KeyCode.T,

    -- Optional
    Icon = "",
    UseConfig = true,
    BlacklistedKeys = {}, -- Has default values of W,A,S,D,Space,Unknown
    Config = "test",
    Theme = {},
    componentY = 54,
    Parent = game.Players.LocalPlayer.PlayerGui
})
```
### Setting the theme
You can set the colors you want and leave the else to default.
```lua
chrono:SetTheme({
    text = Color3.fromRGB(255,255,255)
})
--[[
List of all color variables:

text
text2
background
background2
primary
secondary
accent
border
image

orb1
orb2
orb3
orb4
orb5

toggle1
toggle2
red

notificationButton

item
placeholder

slider

textbox

divider
]]
```
### Notify a User
```lua
chrono:Notify({
    Title = "the title",
    Body = "the body",
    Duration = 10,

    -- Optional
    Image = "", -- rbxassetid:// or getcustomasset
    ImageColor = Color3.fromRGB(255,0,0),
    Buttons = {
        {
            Name = "Click me!",
            Callback = function()
                print("You clicked!")
            end
        }
    }
})
```
### Resetting Launch Time
```lua
chrono:ResetLaunchTime()
```
### Posting Log
```lua
chrono:Log({
    image = "",
    decimal = 0, -- no decimal place
    log = ""
})
```
### Status Tab
```lua
chrono.Stats:<Component>
```
### Loading config
Place this at the **END** of your implementation of the user interface.
```lua
chrono:LoadConfig()
```
### Flags
This is how you can access the callback'd values with flags. You can place these anywhere in your script after the Chrono loadstring and if they are before they are considered 'preregistered' in that the OnChange won't be fired when the flag is registered normally but they will for default/config. `chrono.flags.FLAGNAME.Value`, however, does change from nil to the default/config.
```lua
chrono.flags.FLAGNAME.Value --> Will be the last set value of the flag
chrono.flags.FLAGNAME.OnChange:Connect(function(value): any -- Is fired every time the value of a flag is changed
    print(value)
end)
-- Types are the same as the ones found for each component
```
### Chrono Folder, File, Version
If `UseConfig = true` then `chrono.Folder` and `chrono.File` will give you strings to the folder and the config file created.
```lua
...
    UseConfig = true,
    Config = "profile",
...
print(chrono.Folder) --> chrono/profile
print(chrono.File) --> chrono/profile/config.json
print(chrono.Version) --> 1.0.0 etc etc
```
### Destroying Chrono
You can also connect functions to run when Chrono is destroyed by connectiong to `chrono.OnDestruction`. You can also check if Chrono has been destroyed with `chrono.Destroyed`.
```lua
chrono.OnDestruction:Connect(function()
    print("Destroying Chrono")
end)
print(chrono.Destroyed) --> false
chrono:Destroy()
print(chrono.Destroyed) --> true
-- In console it would print "Destroying Chrono"
```
## Create a Tab
```lua
local tab = window:Tab({
    Name = "Tab Name",

    -- Optional
    Image = "" -- rbxassetid:// or getcustomasset
})
```
## Create a Button
```lua
local button = tab:Button({
    Name = "Interact With Me!",

    -- Optional
    Callback = function(): nil
        print("Hello World!")
    end,
    Enabled = false, -- Defaults true
    DisabledText = "Hey you cant use this!",
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
button:SetCallback(function()
    print("Goodbye World!")
end)
button:Fire()
```
## Create a Dropdown
```lua
local dropdown = tab:Dropdown({
    Name = "Single Item Selection",
    Items = {
        { -- Special Item Customization
            Value = "Apple",
            Boolean = true, -- Doesnt do anything though so idk why i added it
            Description = "",
            ImageDescription = ""
        }, 
    "Banana", "Carrot", "Dingleberry", "Eggplant", "Fruit", "Grape", "Hen", "India", "Jumprope", "Kite", "Lime","Music","Number","Omega","Pencil","Quadrant", "Rust"},

    -- Optional
    Callback = function(value): string | table
        print(value)
    end,
    Enabled = false, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "dropdown_SingleSelection",
    Default = "" or {}, -- Table if Multiselect and string if not
    Multiselect = false,
    Regex = function(itemToClean)
    -- MUST RETURN A STRING NO MATTER WHAT
        local cleanedItem = itemToClean
        return cleanedItem or itemToClean
    end,
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
dropdown:SetItems({})
dropdown:SelectItem("") -- When Multiselect is false
dropdown:SelectItems({}) -- When Multiselect is true
```
## Create a Toggle
```lua
local toggle = tab:Toggle({
    Name = "Toggle Me!",

    -- Optional
    Callback = function(value): boolean
        
    end,
    Enabled = false, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "toggle_LinkKeybind",
    Default = false,
    LinkKeybind = true,
    Bind = Enum.KeyCode.E,
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
toggle:SetValue(true) -- Fires with desired value
toggle:SetBind(Enum.KeyCode.R) -- Only if LinkKeybind
```
## Create a Keybind
```lua
local keybind = tab:Keybind({
    Name = "Binded Action",

    -- Optional
    Callback = function(): nil
        
    end,
    Enabled = false, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "keybind",
    Bind = Enum.KeyCode.F,
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
keybind:SetBind(Enum.KeyCode.Q)
```
## Create a Slider
```lua
local slider = tab:Slider({
    Name = "Slide Me!",
    Min = 0,
    Max = 100,

    -- Optional
    Callback = function(value): number
        
    end,
    Enabled = false, -- Defaults to true
    DisabledText = "Hey you cant use this!",
    FLAG = "slider",
    Default = 10,
    DisplayAsPercent = false,
    DecimalPlace = 2, -- Would return 0.00 places
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
slider:SetValue(10) -- Fires callback
```
## Create a TextBox
```lua
local textbox = tab:TextBox({
    Name = "Enter Text",

    -- Optional
    Callback = function(value): string

    end,
    Enabled = false,
    DisabledText = "Hey you cant use this!",
    FLAG = "textbox",
    Default = "Hey",
    OnlyNumbers = false,
    OnLeave = false,
    ClearTextOnFocus = false,
    PlaceHolderText = "Input is here",
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
textbox:SetInput("New Hey")
```
## Create a Color Picker
```lua
local colorpicker = tab:ColorPicker({
    Name = "Color Picker",

    -- Optional
    Callback = function(color, transparency): Color3, number

    end,
    Enabled = false,
    DisabledText = "Hey you cant use this!",
    FLAG = "colorpicker",
    Color = Color3.fromHex("#a49ae6"), -- Best color
    Transparency = 0.5,
    Description = "",
    ImageDescription = ""
})
```
### Returned Functions
```lua
colorpicker:SetColor(Color3.new(1,0,0))
colorpicker:SetTransparency(0)
```
## Create a Label
```lua
local label = tab:Label("heyo")
```
### Returned Functions
```lua
label:SetText("say heyo")
```
## Creata a Divider
```lua
tab:Divider()
```
## Create a Keybind List
```lua
tab:KeybindList()
```
## Universal Returned Functions
**EXCLUDES** :Tab :Window :Label :Divider :KeybindList
```lua
<Component>:Enable()
<Component>:Disable()
<Component>:SetName("New Name")
```
