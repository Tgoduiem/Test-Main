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
    Main = Window:AddTab({ Title = "Shop", Icon = "" }),
    Nguoichoi = Window:AddTab({ Title = "Local Player", Icon = "" }),
    Status = Window:AddTab({ Title = "Status", Icon = "" }),
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    SubFram = Window:AddTab({ Title = "Sub Other Item", Icon = "" }),
    MuchFram = Window:AddTab({ Title = "Much Other Fram", Icon = "" }),
    Raid = Window:AddTab({ Title = "Raid", Icon = "" }),
    Event = Window:AddTab({ Title = "Sea Event", Icon = "" }),
    UpRace = Window:AddTab({ Title = "Up Race", Icon = "" }),
    Fruit  = Window:AddTab({ Title = "Fruits", Icon = "" })
    PVP  = Window:AddTab({ Title = "PVP", Icon = "" })
}

local Options = Fluent.Options
-- Windows
