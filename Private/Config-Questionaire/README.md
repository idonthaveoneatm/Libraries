# Config Questionaire
```lua
local questionaire = loadstring(game:HttpGet("url")()
questionaire:Init(game.CoreGui): Instance

```
## OnFinish Function
```lua
questionaire.OnFinish:Connect(function()
    print("Hello World!")
end)
```
## Setting Title
```lua
questionaire.setTitle("Let's get you started!")
```
## Creating a question
```lua
local first = questionaire.createQuestion(function(prompt:string, answer:string)
    print(prompt, answer)
end)
```
### Setting question
```lua
first.setPrompt("Whats your favorite animal?")
```
### Making it ask for Keybind response
```lua
first.askForKeybind()
```
### Adding an answer
```lua
first.addResponse("A puppy!")
```
### Completing question
```lua
first.complete()
```
### Starting the questionaire
```lua
questionaire:Start()
```
