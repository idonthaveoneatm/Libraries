# tmp
nothing will be updated cus id change a lot if i wanted

## Credits
- [dawid-scripts/Fluent/](https://github.com/dawid-scripts/Fluent/) - lucide icons
- [lucide.dev](https://lucide.dev/) - more lucide icons

### rating: 0/10 do not recommend

## Loadstring
```lua
local tmp = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/tmp/src"))()
```
## Example Script
```lua
local tmp = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/tmp/src"))()

local window = tmp:CreateWindow({
    Title = "tmp"
})

local tab1 = window:CreateTab({
    Name = "New Tab",
    Icon = "rbxassetid://10734908793"  -- [OPTIONAL]
})

local button = tab1:Button({
    Name = "tmp Button",
    Callback = function()
        print("tmp Button")
    end
})

local toggle = tab1:CreateToggle({
    Name = "tmp Toggle",
    Callback = function(var)
        print("tmp Toggle", var)
    end
})

local slider = tab1:CreateSlider({
    Name = "tmp Slider",
    Min = 0,
    Max = 100,
    Step = 1, -- js leave it at 1 i wasnt good at slider math
    Callback = function(var)
        print("tmp Slider", var)
    end
})

local dropdown = tab1:CreateDropdown({
    Name = "tmp Dropdown",
    Items = {"Apple", "Banana", "Carrot","Dingleberry"},
    Multiselect = true, -- [OPTIONAL]
    Callback = function(var)
        print("tmp Dropdown", var)
    end
})

local textbox = tab1:CreateTextBox({
    Name = "tmp TextBox",
    Callback = function(var)
        print("tmp TextBox", var)
    end
})

local keybind = tab1:CreateKeybind({
    Name = "tmp Keybind",
    Callback = function()
        print("tmp Keybind")
    end
})

local label = tab1:CreateTextLabel("tmp Label")

local section = tab1:CreateSection("tmp Section")

local paragraph = tab1:CreateParagraph({
    Title = "tmp Paragraph",
    Body = "tmp Paragraph"
})
