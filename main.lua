local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
-- LOCAL ONLY | Coin UI = 2380605 (sadece görsel)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local TARGET = "2405409"

for _, gui in ipairs(player:WaitForChild("PlayerGui"):GetDescendants()) do
	if gui:IsA("TextLabel") or gui:IsA("TextButton") then
		if string.find(string.lower(gui.Name), "coin")
		or gui.Text:match("^%d+$") then
			gui.Text = TARGET
			gui:GetPropertyChangedSignal("Text"):Connect(function()
				gui.Text = TARGET
			end)
		end
	end
end
