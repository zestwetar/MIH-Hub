-- MIH Hub | Main
repeat task.wait() until game:IsLoaded()

-- Rayfield UI
local Rayfield = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/UI-Libraries/main/Rayfield.lua"
))()

-- Window
local Window = Rayfield:CreateWindow({
    Name = "MIH Hub",
    LoadingTitle = "MIH Hub",
    LoadingSubtitle = "Public Version",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "MIH Hub",
        FileName = "MIH_Config"
    }
})

-- Tab
local MainTab = Window:CreateTab("Main", 4483362458)

-- Button (TEST)
MainTab:CreateButton({
    Name = "Test Button",
    Callback = function()
        Rayfield:Notify({
            Title = "MIH Hub",
            Content = "Rayfield UI calisiyor!",
            Duration = 5
        })
    end
})
