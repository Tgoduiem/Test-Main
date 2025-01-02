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
    Setting = Window:AddTab({ Title = "Settings", Icon = "" }),
    Status = Window:AddTab({ Title = "Status",Icon = "" }),
    NguoiChoi = Window:AddTab({ Title = "Local Player", Icon = "" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "" }),
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    SubFram = Window:AddTab({ Title = "Sub Farming", Icon = "" }),
    OtherFram = Window:AddTab({ Title = "Other Framing", Icon = "" }),
    Item = Window:AddTab({ Title = "Get Item", Icon = "" }),
    Race = Window:AddTab({ Title = "RaceV4-Mirage", Icon = "" }),
    Event = Window:AddTab({ Title = "Sea Event", Icon = "" }),
    Raid = Window:AddTab({ Title = "Raid - Material", Icon = "" }),
    Pvp = Window:AddTab({ Title = "PVP-Aimbot", Icon = "" })
}

local Options = Fluent.Options
-- Windows
local L_91_ = Instance.new("ScreenGui")
    local L_92_ = Instance.new("ImageButton")
    local L_93_ = Instance.new("UICorner")
    L_91_.Name = "ToggleUI"
    L_91_.Parent = game.CoreGui
    L_91_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    L_92_.Name = "ToggleButton"
    L_92_.Parent = L_91_
    L_92_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    L_92_.BorderSizePixel = 0
    L_92_.Position = UDim2.new(0.234619886, 0, 0.239034846, 0)
    L_92_.Size = UDim2.new(0, 30, 0, 30)
    L_92_.BackgroundTransparency = 1.000
    L_92_.Image = "rbxassetid://17358087763"
    L_92_.Draggable = true
    L_92_.MouseButton1Click:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    end)
    L_93_.CornerRadius = UDim.new(0, 15)
    L_93_.Parent = L_92_

SelectWeapon = Tabs.Setting:AddDropdown("SelectWeapon", {
        Title = "Select Weapon",
        Values = { "Melee", "Sword" },
        Multi = false,
        Default = 1,
    })

    SelectWeapon:SetValue("Melee")

    SelectWeapon:OnChanged(function(Value)
        _G.SelectWeapon = Value
    end)

    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.SelectWeapon == "Melee" then
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Sword" then
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
            end)
        end
    end)
