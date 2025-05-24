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
    BlacklistedKeys = {}, -- Has default values of W,A,S,D,Space,Unknown
    UseConfig = false, -- Determines if Workspace is required+enables filesystem for configurationss
    Workspace = "mainWorkspace", -- the name of the chrono workspace for configs and themes
    Theme = { -- Custom theme on launch
        Name = "custom theme",
        Colors = {
            background = Color3.fromHex("#1C1726"),
            background2 = Color3.fromHex("#0F0C15"),

            text = Color3.fromHex("#EDEBF2"),
            text2 = Color3.fromHex("#B7A6D4"),

            selectedTab = Color3.fromHex("#1D1827"),

            colorpickerBar = Color3.fromHex("#DCE1E5"),

            notificationButton = Color3.fromHex("#222427"),

            mobileButtonBackground = Color3.fromHex("#DCE1E5"),
            mobileButtonText = Color3.fromHex("#2C2F33"),
            mobileButtonImage = Color3.fromHex("#2C2F33"),

            disabledBackground = Color3.fromHex("#2A2C31"),
            disabledText = Color3.fromHex("#D6DCE0"),

            toggled = Color3.fromHex("#B7A6D4"),

            red = Color3.fromHex("#B7A6D4"),
            orange = Color3.fromHex("#B7A6D4")
    },
    componentY = 54,
    Parent = game.Players.LocalPlayer.PlayerGui
})

```
## Theming 
You are able to use a multitude of different functions to modify the looks of chrono.
### Importing Theme
You can create a theme with no name that is given the name "Import_abc12" with a random ending. Otherwise give it a name! This function also returns the unique identifier that is given to each theme so that you can set it as the theme.
```lua
-- No Name
chrono:ImportTheme({
    toggled = Color3.fromRGB(255,255,255)
}) --> "C3bb2"
-- Name
chrono:ImportTheme("New Theme!", {
    toggled = Color3.fromRGB(255,0,0)
}) --> "p4W01"
```
#### List of all color variables:
- text
- text2
- background
- background2
- primary
- secondary
- accent
- border
- image
- orb1
- orb2
- orb3
- orb4
- orb5
- toggle1
- toggle2
- red
- notificationButton
- item
- placeholder
- slider
- textbox
- divider
### Set Theme
Using that unique identifier you can now set the theme with `:SetTheme`.
```lua
chrono:SetTheme("p4w01")
```
### Get Theme Unique Identifier
Returns the unique identifier of the current theme.
```lua
chrono:GetThemeUID() --> "p4w01"
```
### Exporting Theme
If you want to export the current theme you can use this.
```lua
chrono:ExportTheme() --> "{}" is a JSON table of the current theme
```
## Flags
This is how you can access the callback'd values with flags. You can place these anywhere in your script after the chrono loadstring and if they are placed before the component with that flag they are considered 'preregistered' in that the OnChange won't be fired when the flag is registered normally but they will for default/configurations. `chrono.flags.FLAGNAME.Value`, however, does change from nil to the default/config.
```lua
chrono.flags.FLAGNAME.Value --> Will be the last set value of the flag
chrono.flags.FLAGNAME.OnChange:Connect(function(value): any -- Is fired every time the value of a flag is changed
    print(value)
end)
-- Types are the same as the ones found for each component
```

## Configurations
How to import, export, and set configurations in chrono. This uses flags.
### Importing Configuration
These return the unique identifier like themes.
```lua
-- No Name
chrono:ImportConfiguration({
    Lebron = {boolean = false, keycode = "H"}
}) --> "aZ10F"
-- Name
chrono:ImportConfiguration("New Configuration", {
    TheGoat = {boolean = true, keycode = "A"}
})--> "Bp5bD"
```
#### List of flag value formats
This is what you can use when creating the `Configuration` in the `:Window` function.
- `:Toggle` = `{boolean = <boolean>, keycode = <string>, coordinate = {X = <number>, Y = <number>}}`
    - The `keycode` is the .Name of a Enum.KeyCode
- `:TextBox` = `<string>`
- `:Slider` = `<number>`
- `:Dropdown` = If `Multiselect` then `{<string>,<string>}` else it is `<string>`
- `:Keybind` = `{keycode = <string>, coordinate = {X = <number>, Y = <number>}}`
    - The `keycode` is the .Name of a Enum.KeyCode
- `:ColorPicker` = `{color = <string>, transparency = <number>}`
    - The color is the Hex code
### Setting Configuration
Using a unique identifier you can set the configuration.
```lua
chrono:SetConfiguration("Bp5bD")
```
### Getting Configuration Unique Identifier
Returns current configuration's unique identifier.
```lua
chrono:GetConfigurationUID() --> "Bp5bD"
```
### Exporting Configuration
If you want to export the current configuration you can use this.
```lua
chrono:ExportConfiguration() --> "{}" is a JSON table of the current configuration
```
### chrono Folder
Gives you strings to the folder created for the `Workspace` provided.
```lua
...
    Workspace = "chrono rocks",
...
print(chrono.Folder) --> chrono/chrono rocks
```

## Settings Page
Adding this function **after** you create your tabs adds a "⚙️ Settings" tab with a theme and configuration manager.
```lua
chrono:CreateSettings()
```
### Notify a User
```lua
local notification = chrono:Notify({
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
notification:Destroy() --> Destroys the notification early
```
### Announcement System
```lua
local announcement = chrono:Announce({
    Title = "Title",
    Content = "The Content",
    CanClose = true
})
```
#### Returned Function
```lua
announcement:Destroy()
```
### Resetting Launch Time
```lua
chrono:ResetLaunchTime()
```
### Posting Log
```lua
chrono:Log({
    log = "",

    -- Optional
    image = "",
    decimal = 0 -- defaults to 0
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
### Chrono Viewport and Current tab
```lua
chrono:GetViewportData() --> {Character: Instance, Viewport: Instance}
chrono:ESPPreviewVisible()
chrono:ESPPreviewInvisible()
chrono:CurrentTab() --> "string of uid of selected tab"
```
## Create a Tab
Returns `.uid` which is used to for identifying which tab is selected.
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
## Create Button Group
This was made specifically for the configuration manager and allows you to add buttons in a horizontal list. It only has the `:Button` component
```lua
tab:ButtonGroup()
```
## Create a Dropdown
```lua
local dropdown = tab:Dropdown({
    Name = "Single Item Selection",
    Items = {
        { -- Special Item Customization
            Value = "Apple",
            Color = Color3.fromRGB(255,0,0),
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
    OnHold = function(isDown): boolean
        
    end,
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
    Points = { -- This displays text if the slider is at that value. indexs MUST be strings
        ["100"] = "Max",
        ["50"] = "Half",
        ["0"] = "Min"
    },
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
## Create a Group
```lua
chrono:Group("Title") -- Title isn't required
```
## Create a Label
```lua
local label = tab:Label("heyo |hidden text|", true) -- true makes it bigger put text in |here| if you want it hidden
```
### Returned Functions
```lua
label:SetText("say heyo")
```
## Creata a Divider
```lua
tab:Divider()
```
## Create a List
```lua
local list = tab:List("New List", true) --> name, destroyable
```
### Returned Functions
```lua
list:Visible()
list:Invisible()
list:SetTitle("New List Name")
```
## Create a Keybind List
```lua
local keybindList = tab:KeybindList()
```
### Returned Functions
```lua
keybindList:Visible()
keybindList:Invisible()
```
## Universal Returned Functions
**EXCLUDES** :Tab :Window :Label :Divider :KeybindList :Group
```lua
<Component>:Enable()
<Component>:Disable()
<Component>:Visible()
<Component>:Invisible()
<Component>:SetName("New Name")
```
