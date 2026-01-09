repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("CoreGui")

warn("MIH HUB RAYFIELD TEST BASLADI")

local Rayfield = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/UI-Libraries/main/Rayfield.lua"
))()

local Window = Rayfield:CreateWindow({
    Name = "MIH Hub TEST",
    LoadingTitle = "MIH Hub",
    LoadingSubtitle = "Rayfield Test",
    ConfigurationSaving = { Enabled = false }
})

Rayfield:Notify({
    Title = "MIH Hub",
    Content = "Rayfield basariyla yuklendi",
    Duration = 5
})
