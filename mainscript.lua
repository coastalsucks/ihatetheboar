if not game:IsLoaded() then game.Loaded:Wait() end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ANT SIMULATOR: ULTIMATE HUB V13",
   LoadingTitle = "Updating Test Systems...",
   LoadingSubtitle = "by Gemini AI",
   ConfigurationSaving = {Enabled = true, FolderName = "AntSimHub", FileName = "Config"},
   KeySystem = false
})

-- TABS
local TestTab = Window:CreateTab("Test", 4483362458)
local PacksTab = Window:CreateTab("Packs", 4483362458) 
local RunesTab = Window:CreateTab("Runes", 4483362458)
local CombatTab = Window:CreateTab("Combat", 4483362458)
local EtcTab = Window:CreateTab("Etc", 4483362458)

-- ==========================================
-- TEST TAB (Manual & Toggle)
-- ==========================================

TestTab:CreateSection("Experimental Actions")

TestTab:CreateButton({
   Name = "Manual Event Fire (Both)",
   Callback = function()
      local remote = game:GetService("ReplicatedStorage").Events.EventEvent
      pcall(function()
         remote:FireServer("StartFight")
         remote:FireServer("ClaimAllStageRewards")
      end)
      Rayfield:Notify({Title = "Manual Fire", Content = "Fired Event & Rewards", Duration = 2})
   end,
})

TestTab:CreateToggle({
   Name = "Auto-Fire Event (2s Cooldown)",
   CurrentValue = false,
   Flag = "TestLoop",
   Callback = function(Value)
      getgenv().TestLoop = Value
      task.spawn(function()
         while getgenv().TestLoop do
            local remote = game:GetService("ReplicatedStorage").Events.EventEvent
            pcall(function()
               remote:FireServer("StartFight")
               remote:FireServer("ClaimAllStageRewards")
            end)
            task.wait(2)
         end
      end)
   end,
})

-- ==========================================
-- PACKS TAB (World 1 - 6)
-- ==========================================

-- World 1: Forest
PacksTab:CreateSection("World 1: Forest")
PacksTab:CreateToggle({
   Name = "Auto-Open Forest Packs",
   CurrentValue = false,
   Flag = "AutoW1", 
   Callback = function(Value)
      getgenv().AutoW1 = Value
      task.spawn(function()
         while getgenv().AutoW1 do
            local remote = game:GetService("ReplicatedStorage").Events.BuyPack
            pcall(function()
                remote:FireServer("ForestPacks", "ForestStarter", 1)
                remote:FireServer("ForestPacks", "ForestHunter", 1)
                remote:FireServer("ForestPacks", "ForestShadow", 1)
                remote:FireServer("ForestPacks", "ForestMystic", 1)
            end)
            task.wait(0.15)
         end
      end)
   end,
})

-- World 2: Desert
PacksTab:CreateSection("World 2: Desert")
PacksTab:CreateToggle({
   Name = "Auto-Open Desert Packs",
   CurrentValue = false,
   Flag = "AutoW2", 
   Callback = function(Value)
      getgenv().AutoW2 = Value
      task.spawn(function()
         while getgenv().AutoW2 do
            local remote = game:GetService("ReplicatedStorage").Events.BuyPack
            pcall(function()
                remote:FireServer("DesertPacks", "DesertStarter", 1)
                remote:FireServer("DesertPacks", "DesertWarrior", 1)
                remote:FireServer("DesertPacks", "DesertMirage", 1)
                remote:FireServer("DesertPacks", "DesertPharaoh", 1)
            end)
            task.wait(0.15)
         end
      end)
   end,
})

-- World 3: Swamp
PacksTab:CreateSection("World 3: Swamp")
PacksTab:CreateToggle({
   Name = "Auto-Open Swamp Packs",
   CurrentValue = false,
   Flag = "AutoW3", 
   Callback = function(Value)
      getgenv().AutoW3 = Value
      task.spawn(function()
         while getgenv().AutoW3 do
            local remote = game:GetService("ReplicatedStorage").Events.BuyPack
            pcall(function()
                remote:FireServer("SwampPacks", "SwampStarter", 1)
                remote:FireServer("SwampPacks", "SwampHunter", 1)
                remote:FireServer("SwampPacks", "SwampMiasma", 1)
                remote:FireServer("SwampPacks", "SwampEldritch", 1)
            end)
            task.wait(0.15)
         end
      end)
   end,
})

-- World 4: Cave
PacksTab:CreateSection("World 4: Cave")
PacksTab:CreateToggle({
   Name = "Auto-Open Cave Packs",
   CurrentValue = false,
   Flag = "AutoW4", 
   Callback = function(Value)
      getgenv().AutoW4 = Value
      task.spawn(function()
         while getgenv().AutoW4 do
            local remote = game:GetService("ReplicatedStorage").Events.BuyPack
            pcall(function()
                remote:FireServer("CavePacks", "CaveStarter", 1)
                remote:FireServer("CavePacks", "CaveExplorer", 1)
                remote:FireServer("CavePacks", "CaveCrystal", 1)
                remote:FireServer("CavePacks", "CaveAbyss", 1)
            end)
            task.wait(0.15)
         end
      end)
   end,
})

-- World 5: City
PacksTab:CreateSection("World 5: City")
PacksTab:CreateToggle({
   Name = "Auto-Open City Packs",
   CurrentValue = false,
   Flag = "AutoW5", 
   Callback = function(Value)
      getgenv().AutoW5 = Value
      task.spawn(function()
         while getgenv().AutoW5 do
            local remote = game:GetService("ReplicatedStorage").Events.BuyPack
            pcall(function()
                remote:FireServer("CityPacks", "CityStarter", 1)
                remote:FireServer("CityPacks", "CityStreet", 1)
                remote:FireServer("CityPacks", "CitySewer", 1)
                remote:FireServer("CityPacks", "CityPenthouse", 1)
            end)
            task.wait(0.15)
         end
      end)
   end,
})

-- World 6: Ocean
PacksTab:CreateSection("World 6: Ocean")
PacksTab:CreateToggle({
   Name = "Auto-Open Ocean Packs",
   CurrentValue = false,
   Flag = "AutoW6", 
   Callback = function(Value)
      getgenv().AutoW6 = Value
      task.spawn(function()
         while getgenv().AutoW6 do
            local remote = game:GetService("ReplicatedStorage").Events.BuyPack
            pcall(function()
                remote:FireServer("OceanPacks", "OceanStarter", 1)
                remote:FireServer("OceanPacks", "OceanSailor", 1)
                remote:FireServer("OceanPacks", "OceanDeep", 1)
                remote:FireServer("OceanPacks", "OceanAbyss", 1)
            end)
            task.wait(0.15)
         end
      end)
   end,
})

-- ==========================================
-- RUNES TAB
-- ==========================================

local RuneList = {
    {Name = "Forest", Arg = "ForestRunes", Flag = "R1"},
    {Name = "Desert", Arg = "DesertRunes", Flag = "R2"},
    {Name = "Swamp", Arg = "SwampRunes", Flag = "R3"},
    {Name = "Cave", Arg = "CaveRunes", Flag = "R4"},
    {Name = "City", Arg = "CityRunes", Flag = "R5"},
    {Name = "Ocean", Arg = "OceanRunes", Flag = "R6"}
}

for _, rune in pairs(RuneList) do
    RunesTab:CreateToggle({
        Name = "Auto " .. rune.Name .. " Runes",
        CurrentValue = false,
        Flag = rune.Flag,
        Callback = function(Value)
            getgenv()[rune.Flag] = Value
            task.spawn(function()
                while getgenv()[rune.Flag] do
                    pcall(function()
                        game:GetService("ReplicatedStorage").Events.RuneEvent:FireServer("Start", rune.Arg)
                    end)
                    task.wait(0.15)
                end
            end)
        end,
    })
end

-- ==========================================
-- COMBAT TAB
-- ==========================================

CombatTab:CreateSection("Boss Raids")
CombatTab:CreateToggle({
   Name = "Auto-Raid",
   CurrentValue = false,
   Flag = "AutoRaid",
   Callback = function(Value)
      getgenv().AutoRaid = Value
      task.spawn(function()
         while getgenv().AutoRaid do
            pcall(function()
               game:GetService("ReplicatedStorage").Events.RaidBossEvent:FireServer("StartFight")
            end)
            task.wait(10)
         end
      end)
   end,
})

CombatTab:CreateSection("Event Fights")
CombatTab:CreateToggle({
    Name = "Auto Sukuna Rush",
    CurrentValue = false,
    Flag = "AutoSukuna",
    Callback = function(Value)
        getgenv().AutoSukuna = Value
        task.spawn(function()
            while getgenv().AutoSukuna do
                local remote = game:GetService("ReplicatedStorage").Events.EventEvent
                pcall(function()
                    remote:FireServer("StartSukunaRush")
                    task.wait(1) 
                    remote:FireServer("ClaimSukunaRushRewards")
                end)
                task.wait(60)
            end
        end)
    end,
})

CombatTab:CreateToggle({
    Name = "Event Boss Fights",
    CurrentValue = false,
    Flag = "EventBoss",
    Callback = function(Value)
        getgenv().EventBoss = Value
        task.spawn(function()
            while getgenv().EventBoss do
                local remote = game:GetService("ReplicatedStorage").Events.EventEvent
                pcall(function()
                    remote:FireServer("StartFight")
                    task.wait(1)
                    remote:FireServer("ClaimAllStageRewards")
                end)
                task.wait(300)
            end
        end)
    end,
})

-- ==========================================
-- ETC TAB
-- ==========================================

EtcTab:CreateSection("Ads Automation")
EtcTab:CreateToggle({
   Name = "Auto Watch Ads",
   CurrentValue = false,
   Flag = "AutoAds",
   Callback = function(Value)
      getgenv().AutoAds = Value
      task.spawn(function()
         while getgenv().AutoAds do
            pcall(function()
               game:GetService("ReplicatedStorage").Events.RewardedAdEvent:FireServer("ShowRewardedAd", "RewardedAd1")
            end)
            task.wait(5)
         end
      end)
   end,
})

EtcTab:CreateSection("Utility")
EtcTab:CreateButton({
   Name = "Rejoin",
   Callback = function()
      local events = game:GetService("ReplicatedStorage"):FindFirstChild("Events")
      local afk = events and events:FindFirstChild("AntiAfkRejoinEvent")
      if afk then pcall(function() afk:FireServer() end) else
          game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
      end
   end,
})
