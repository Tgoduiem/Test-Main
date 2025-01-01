repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
local v69 = game.Players.LocalPlayer:WaitForChild("PlayerGui")



local v70 = v69:FindFirstChild("SkibidiUi")

if v70 then

	v70:Destroy()

end



v70 = Instance.new("ScreenGui")

v70.Name = "SkibidiUi"

v70.ResetOnSpawn = false

v70.Parent = v69



local v71 = "rbxassetid://18801298853"

local v72 = Instance.new("ImageButton")

v72.Image = v71

v72.Size = UDim2.new(0, 50, 0, 50)

v72.Position = UDim2.new(0.1, 0, 0.9, - 100)

v72.BackgroundColor3 = Color3.new(255, 255, 255)

v72.BackgroundTransparency = 0

v72.Parent = v70



local v73 = Instance.new("UICorner", v72)

v73.CornerRadius = UDim.new(0.5, 0)



local v74 = Instance.new("TextLabel")

v74.Text = ''

v74.Font = Enum.Font.GothamBold

v74.TextSize = 40

v74.TextScaled = false

v74.RichText = true

v74.Size = UDim2.new(1, 0, 1, 0)

v74.BackgroundTransparency = 1

v74.TextXAlignment = Enum.TextXAlignment.Center

v74.TextYAlignment = Enum.TextYAlignment.Center

v74.Parent = v72



local v75 = false



local function v76()

	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)

end



v72.MouseButton1Click:Connect(function()

	if not v75 then

		v76()

	end

	v75 = not v75

end)



local v77 = 0

local v78 = 0.5



v72.MouseButton1Click:Connect(function()

	local v454 = tick()

	if v454 - v77 < v78 then

		return

	end

	v77 = v454

	if not v75 then

		v76()

	end

	v75 = not v75

end)


--Mob


-- Window Tabs
local Players = game:GetService("Players")
local Title = "....."
local SubTitle = "By Ztx" --Main Rewrite discord.gg/9PzEWrzgXR
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tgoduiem/Test-Main/refs/heads/main/.......lua"))()
local Window = getgenv().Window or Fluent:CreateWindow({
    Title = Title,
    SubTitle = SubTitle,
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Settings = Window:AddTab({ Title = "Settings", Icon = "" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "" }),
    SAS  = Window:AddTab({ Title = "Server And Start", Icon = "" }),
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    SubFram = Window:AddTab({ Title = "Sub Other Fram", Icon = "" }),
    MuchFram = Window:AddTab({ Title = "Much Other Fram", Icon = "" }),
    Travel = Window:AddTab({ Title = "Travel", Icon = "" }),
    SeaEvent= Window:AddTab({ Title = "Sea Event", Icon = "" }),
    FruitAndRaids = Window:AddTab({ Title = "Fruit And Raids", Icon = "" }),
    UpRace = Window:AddTab({ Title = "UP Race", Icon = "" })
    PvP = Window:AddTab({ Title = "PVP", Icon = "" })
}