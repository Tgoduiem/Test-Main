


--Mob


-- Window Tabs
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
