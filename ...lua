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
    Settings = Window:AddTab({ Title = "Setting", Icon = "" }),
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

--Setting

SelectWeapon = Tabs.Settings:AddDropdown("SelectWeapon", {
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
                            end
                        end
                    end
                end
            end)
        end
    end)
ToggleBuso = Tabs.Settings:AddToggle("ToggleBuso", {Title = "Auto On Buso", Default = false })
ToggleBuso:OnChanged(function(Value)
_G.AutoBuso = Value
end)

ToggleKen = Tabs.Settings:AddToggle("ToggleKen", {Title = "Auto On Ken", Default = false })
ToggleKen:OnChanged(function(Value)
_G.AutoKen = Value
end)


TurnOnv3 = Tabs.Settings:AddToggle("TurnOnv3", {Title = "Auto On V3", Default = false })
TurnOnv3:OnChanged(function(Value)
_G.TurnOnv3 = Value
end)

TurnOnv4 = Tabs.Settings:AddToggle("TurnOnv4", {Title = "Auto On V4", Default = false })
TurnOnv4:OnChanged(function(Value)
_G.TurnOnv4 = Value
end)

TeleLH = Tabs.Settings:AddToggle("TeleLH", {Title = "Teleport if low Health", Default = false })
TeleLH:OnChanged(function(Value)
_G.TeleLH = Value
end)

BringMob = Tabs.Settings:AddToggle("BringMob", {Title = "Bring Mob", Default = false })
BringMob:OnChanged(function(Value)
_G.BringMob = Value
end)


--Main--

Tabs.Main:AddParagraph({
    Title = "Main",
    Content = "........"
})

MainLevel = Tabs.Main:AddToggle("MainLevel", {Title = "Auto Level Fram", Default = false })
MainLevel:OnChanged(function(Value)
_G.MainLevel = Value
end)

MainBone = Tabs.Main:AddToggle("MainBone", {Title = "Auto Bone Fram", Default = false })
MainBone:OnChanged(function(Value)
_G.MainBone = Value
end)

MainKatakuri = Tabs.Main:AddToggle("MainKatakuri", {Title = "Auto Katakuri Fram", Default = false })
MainKatakuri:OnChanged(function(Value)
_G.MainKatakuri = Value
end)

Tabs.Main:AddParagraph({
    Title = "Mastery",
    Content = "........"
})

MainMastery = Tabs.Main:AddToggle("MainMastery", {Title = "Fram Mastery", Default = false })
MainMastery:OnChanged(function(Value)
_G.MainKatakuri = Value
end)
