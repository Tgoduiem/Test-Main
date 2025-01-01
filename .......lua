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
