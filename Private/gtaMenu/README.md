# GTA Menu
### Credits:
- griffin *Discord: @griffindoescooking* - Creating it
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) - Code for slider math
- [dawid-scripts/Fluent/](https://github.com/dawid-scripts/Fluent/) - lucide icons
- [lucide.dev](https://lucide.dev/) - more lucide icons
- [latte-soft/wax](https://github.com/latte-soft/wax) - bundler
## Loading UI Library
```lua
local gtaMenu = loadstring(game:HttpGet("url"))()
```
## Create a Window
```lua
local window = gtaMenu:Window({
    -- Required
    Title = "GTA Menu",
    FooterLeft = "v1",
    FooterRight = "griffindoescooking",
    Image = "rbxassetid://", -- or getcustomasset
    ImageBackgroundColor = Color3,
    HideBind = Enum.KeyCode.T,
    BackBind = Enum.KeyCode.Backspace,
    UpBind = Enum.KeyCode.Up,
    DownBind = Enum.KeyCode.Down,

    -- Optional
    SizeXInOffset = 300, -- defaults to 300
    Parent = gethui(), -- defaults to game.CoreGui
})
```
## Create a Tab
```lua
local tab = window:Tab({
    -- Required
    Name = "Tab Name",

    -- Optional
    Image = "rbxassetid://"
})
```
## Create a Button
```lua
local button = tab:Button({
    -- Required
    Name = "Interact With Me!",
    Callback = function()
        
    end,

    -- Optional
    Description = "",

    IsEnabled = false, -- defaults true
    DisabledText = "Hey you cant use this!",

    HasPreview = true, -- defaults false
    PreviewAssetId = "rbxassetid://", -- Required if HasPreview
    ImageSize = UDim2.fromOffset(48,48) -- Required if HasPreview
})
```
### Returned Functions
```lua
button:SetName("")

button:SetCallback(function()

end)

button:Fire() -- fires the callback
```
## Create a Dropdown
```lua
local dropdown = tab:Dropdown({
    -- Required
    Name = "Single Item Selection",
    Items = {
        { -- Special Item Customization
            Image = "rbxassetid://", 
            Value = "Apple",

            -- Optional
            HasPreview = true,
            PreviewAssetId = "rbxassetid://",
            ImageSize = UDim2.fromOffset(48,48)
        }, 
    "Banana", "Carrot", "Dingleberry", "Eggplant", "Fruit", "Grape", "Hen", "India", "Jumprope", "Kite", "Lime","Music","Number","Omega","Pencil","Quadrant", "Rust"},
    Callback = function(value): string | table
        
    end,

    -- Optional
    Multiselect = false,
    Description = "",

    IsEnabled = false, -- defaults true
    DisabledText = "Hey you cant use this!",

    HasPreview = true, -- defaults false
    PreviewAssetId = "rbxassetid://", -- Required if HasPreview
    ImageSize = UDim2.fromOffset(48,48) -- Required if HasPreview
})
```
### Returned Functions
```lua
dropdown:SetItems({})

dropdown:SelectItem("") -- when Multiselect is false

dropdown:SelectItems({}) -- when Multiselect is true
```
## Create a Toggle
```lua
local toggle = tab:Toggle({
    -- Required
    Name = "Toggle Me!",
    Callback = function(value): boolean
        
    end,

    -- Optional
    Description = "",

    IsEnabled = false, -- defaults true
    DisabledText = "Hey you cant use this!",

    HasPreview = true, -- defaults false
    PreviewAssetId = "rbxassetid://", -- Required if HasPreview
    ImageSize = UDim2.fromOffset(48,48) -- Required if HasPreview
})
```
### Returned Functions
```lua
toggle:SetValue(true) -- fires callback with desired value
```
## Create a Keybind
```lua
local keybind = tab:Keybind({
    -- Required
    Name = "Binded Action",
    Bind = Enum.KeyCode.F,
    Callback = function(value) -- parameter only is passed if IsToggle
        
    end,

    -- Optional
    Description = "",
    IsToggle = false,

    IsEnabled = false, -- defaults true
    DisabledText = "Hey you cant use this!",

    HasPreview = true,
    PreviewAssetId = "rbxassetid://",
    ImageSize = UDim2.fromOffset(48,48)
})
```
### Returned Functions
```lua
keybind:SetBind(Enum.KeyCode.Q)
```
## Create a Slider
```lua
local slider = tab:Slider({
    -- Required
    Name = "Slide Me!",
    Min = 0,
    Max = 100,
    Callback = function(value)
        
    end,

    -- Optional
    Increment = 5,
    UseHold = true, -- recommended for less finger cramps
    DisplayAsPercent = true,
    Description = "",

    IsEnabled = false,
    DisabledText = "Hey you cant use this!",

    HasPreview = true,
    PreviewAssetId = "rbxassetid://",
    ImageSize = UDim2.fromOffset(48,48)
})
```
### Returned Functions
```lua
slider:SetValue(10) -- fires callback
```
## Create a TextBox
```lua
local textbox = tab:TextBox({
    -- Required
    Name = "Enter Text",
    Callback = function(value)

    end,

    -- Optional
    Default = "Hey",
    OnlyNumbers = false,
    OnLeave = true,
    PlaceHolderText = "Input is here",

    IsEnabled = false,
    DisabledText = "Hey you cant use this!",

    HasPreview = true,
    PreviewAssetId = "rbxassetid://",
    ImageSize = UDim2.fromOffset(48,48)

})
```
### Returned Functions
```lua
textbox:SetInput("New Hey")
```
## Create a Label
```lua
local label = tab:Label("heyo")
```
### Returned Functions
```lua
label:SetText("say heyo")
```
## Notify a User
```lua
gtaMenu:Notify({
    Title = "the title",
    Body = "the body",
    Duration = 10,
    Image = "rbxassetid://"
})
```
## Universal Returned Functions
**EXCLUDES** :Tab :Window :Label
```lua
Component:SetPreviewAssetId("rbxassetid://")

Component:SetImageSize(UDim2.new())
```
