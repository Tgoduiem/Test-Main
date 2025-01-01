if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
local plr = game.Players.LocalPlayer

local Players = game:GetService("Players")
local Title = "....."
local SubTitle = "By Ztx" --Main Rewrite discord.gg/9PzEWrzgXR
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenLam2504/rblx/refs/heads/main/gay.lua"))()
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

local Options = Fluent.Options
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local MainScreenGui = Instance.new("ScreenGui")
local ButtonScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
MainScreenGui.Name = "MainScreenGui"
MainScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainScreenGui.Enabled = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.Size = UDim2.new(1, 0, 1, 0)
MainFrame.Draggable = true

ButtonScreenGui.Name = "ButtonScreenGui"
ButtonScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageButton.Parent = ButtonScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1, 0, 0, 10)
ImageButton.AnchorPoint = Vector2.new(0, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://17466928754"
ImageButton.Draggable = true

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)

    local scaleUpTween = TweenService:Create(ImageButton, TweenInfo.new(0.1), { Size = UDim2.new(0, 55, 0, 55) })
    local scaleDownTween = TweenService:Create(ImageButton, TweenInfo.new(0.1), { Size = UDim2.new(0, 50, 0, 50) })

    scaleUpTween:Play()
    scaleUpTween.Completed:Connect(function()
        scaleDownTween:Play()
    end)
end)
