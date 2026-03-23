-- fast example

local FatalityUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/kefir0030/Fatality-UI/refs/heads/main/source"))()

local Config = FatalityUI.Config
local UI = FatalityUI:New()
local Columns = FatalityUI.GetColumns()
-- Tabs
local tabs = {"RAGE", "VISUALS", "MISC", "INVENTORY", "LEGIT"}
local tabSubTabs = {
    RAGE = {"AIMBOT", "ANTI-AIM", "WEAPONS"},
    VISUALS = {"PLAYERS", "WORLD", "EFFECTS"},
    MISC = {"MOVEMENT", "SETTINGS", "OTHER"},
    INVENTORY = {"ITEMS", "SKINS", "TRADE"},
    LEGIT = {"AIMBOT", "TRIGGERBOT", "RECOIL"}
}
-- Rage tab's aimbot section (sub tabs) functions
local ContentLoaders = {}
ContentLoaders.RAGE_AIMBOT = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Aimbot", false, "NONE")
    FatalityUI.CreateCheckbox(Columns[1], "Autofire", false)
    FatalityUI.CreateCheckbox(Columns[1], "Resolver", false)
    FatalityUI.CreateCheckbox(Columns[1], "Double tap", false, "NONE")
    FatalityUI.CreateCheckbox(Columns[1], "Remove visual punch", false)
    FatalityUI.CreateCheckbox(Columns[1], "Backtrack", false)
    FatalityUI.CreateCheckbox(Columns[2], "Force baim", false, "NONE")
    FatalityUI.CreateCheckbox(Columns[2], "Remove spread ( nospread only )", false)
    FatalityUI.CreateCheckbox(Columns[2], "Fake walk", false, "NONE")
    FatalityUI.CreateCheckbox(Columns[2], "Override resolver", false, "NONE")
end
-- anti aim section
ContentLoaders.RAGE_ANTIAIM = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Pitch", false)
    FatalityUI.CreateCheckbox(Columns[1], "Yaw", false)
    FatalityUI.CreateCheckbox(Columns[1], "Jitter", false)
    FatalityUI.CreateCheckbox(Columns[1], "Desync", false)
    FatalityUI.CreateCheckbox(Columns[2], "Fake lag", false)
    FatalityUI.CreateCheckbox(Columns[2], "Break LBY", false)
    FatalityUI.CreateCheckbox(Columns[2], "Freestanding", false)
    FatalityUI.CreateCheckbox(Columns[3], "Anti-aim enabled", false)
    FatalityUI.CreateCheckbox(Columns[3], "Fakelag always on", false)
end
-- weapons section
ContentLoaders.RAGE_WEAPONS = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Knifebot", false)
    FatalityUI.CreateCheckbox(Columns[1], "Zeusbot", false)
    FatalityUI.CreateCheckbox(Columns[1], "Extended backtrack", false)
    FatalityUI.CreateCheckbox(Columns[1], "Ping spike", false, "NONE")
    FatalityUI.CreateCheckbox(Columns[2], "Auto revolver", false)
    FatalityUI.CreateCheckbox(Columns[2], "Auto scope", false)
end
-- visuals players section
ContentLoaders.VISUALS_PLAYERS = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Enable ESP", false)
    FatalityUI.CreateCheckbox(Columns[1], "Box ESP", false)
    FatalityUI.CreateCheckbox(Columns[1], "Name ESP", false)
    FatalityUI.CreateCheckbox(Columns[1], "Health ESP", false)
    FatalityUI.CreateCheckbox(Columns[1], "Distance ESP", false)
    FatalityUI.CreateColorPicker(Columns[1], "ESP Color", Color3.fromRGB(255, 50, 150))
    FatalityUI.CreateCheckbox(Columns[2], "Enable Chams", false)
    FatalityUI.CreateCheckbox(Columns[2], "Visible Only", false)
    FatalityUI.CreateColorPicker(Columns[2], "Chams Color", Color3.fromRGB(138, 43, 226))
    FatalityUI.CreateSlider(Columns[2], "Transparency", 0, 100, 80)
    FatalityUI.CreateSectionLabels({"ESP", "Chams", ""})
end
-- world
ContentLoaders.VISUALS_WORLD = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Fullbright", false)
    FatalityUI.CreateCheckbox(Columns[1], "No Fog", false)
    FatalityUI.CreateCheckbox(Columns[1], "Skybox Changer", false)
    FatalityUI.CreateSlider(Columns[1], "Ambient", 0, 100, 50)
    FatalityUI.CreateCheckbox(Columns[2], "Remove Shadows", false)
    FatalityUI.CreateCheckbox(Columns[2], "Force Crosshair", false)
    FatalityUI.CreateSlider(Columns[2], "FOV Override", 60, 120, 90)
    FatalityUI.CreateSectionLabels({"World", "View", ""})
end
-- effects
ContentLoaders.VISUALS_EFFECTS = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Bullet Tracers", false)
    FatalityUI.CreateColorPicker(Columns[1], "Tracer Color", Color3.fromRGB(255, 20, 147))
    FatalityUI.CreateCheckbox(Columns[1], "Hit Markers", false)
    FatalityUI.CreateCheckbox(Columns[1], "Damage Indicator", false)
    FatalityUI.CreateCheckbox(Columns[2], "Remove Flash", false)
    FatalityUI.CreateCheckbox(Columns[2], "Remove Smoke", false)
    FatalityUI.CreateCheckbox(Columns[2], "Remove Blood", false)
    FatalityUI.CreateSectionLabels({"Effects", "Removals", ""})
end
-- misc movement
ContentLoaders.MISC_MOVEMENT = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Bunny Hop", false, "SPACE")
    FatalityUI.CreateCheckbox(Columns[1], "Auto Strafe", false)
    FatalityUI.CreateCheckbox(Columns[1], "Edge Jump", false)
    FatalityUI.CreateSlider(Columns[1], "Speed Multiplier", 1, 3, 1)
    FatalityUI.CreateCheckbox(Columns[2], "Infinite Jump", false)
    FatalityUI.CreateCheckbox(Columns[2], "No Clip", false, "V")
    FatalityUI.CreateSlider(Columns[2], "Fly Speed", 1, 10, 5)
    FatalityUI.CreateSectionLabels({"Movement", "Exploits", ""})
end
-- misc params
ContentLoaders.MISC_SETTINGS = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Anti AFK", false)
    FatalityUI.CreateCheckbox(Columns[1], "Auto Accept", false)
    FatalityUI.CreateCheckbox(Columns[1], "Clan Tag Spammer", false)
    FatalityUI.CreateCheckbox(Columns[2], "Rank Revealer", false)
    FatalityUI.CreateCheckbox(Columns[2], "Unlock All", false)
    FatalityUI.CreateDropdown(Columns[2], "Menu Key", {"Delete", "Insert", "Home", "End"})
    FatalityUI.CreateMultiDropdown(Columns[2], "Notifications", {"Kills", "Deaths", "Assists", "Damage"})
    FatalityUI.CreateSectionLabels({"General", "Settings", ""})
end
-- fun
ContentLoaders.MISC_OTHER = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Chat Spam", false)
    FatalityUI.CreateCheckbox(Columns[1], "Name Stealer", false)
    FatalityUI.CreateCheckbox(Columns[1], "Spectator List", false)
    FatalityUI.CreateCheckbox(Columns[2], "Watermark", false)
    FatalityUI.CreateCheckbox(Columns[2], "FPS Counter", false)
    FatalityUI.CreateCheckbox(Columns[2], "Velocity Graph", false)
    FatalityUI.CreateSectionLabels({"Chat", "HUD", ""})
end
-- inventory
ContentLoaders.INVENTORY_ITEMS = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Show Weapons", false)
    FatalityUI.CreateCheckbox(Columns[1], "Show Armor", false)
    FatalityUI.CreateCheckbox(Columns[1], "Show Grenades", false)
    FatalityUI.CreateCheckbox(Columns[1], "Show Consumables", false)
    FatalityUI.CreateCheckbox(Columns[2], "Auto Equip Best", false)
    FatalityUI.CreateCheckbox(Columns[2], "Auto Sell Trash", false)
    FatalityUI.CreateSlider(Columns[2], "Min Item Value", 0, 1000, 100)
    FatalityUI.CreateSectionLabels({"Display", "Auto", ""})
end
ContentLoaders.INVENTORY_SKINS = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Skin Changer", false)
    FatalityUI.CreateDropdown(Columns[1], "Knife Skin", {"Doppler", "Fade", "Tiger Tooth", "Marble Fade"})
    FatalityUI.CreateDropdown(Columns[1], "Glove Skin", {"Crimson Weave", "Fade", "Emerald Web"})
    FatalityUI.CreateMultiDropdown(Columns[1], "Weapon Skins", {"AK-47", "M4A4", "AWP", "Desert Eagle"})
    FatalityUI.CreateCheckbox(Columns[2], "Show Float Value", false)
    FatalityUI.CreateCheckbox(Columns[2], "Show Wear", false)
    FatalityUI.CreateSlider(Columns[2], "Wear Override", 0, 100, 0)
    FatalityUI.CreateSectionLabels({"Skins", "Options", ""})
end
ContentLoaders.INVENTORY_TRADE = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Trade Helper", false)
    FatalityUI.CreateCheckbox(Columns[1], "Price Checker", false)
    FatalityUI.CreateCheckbox(Columns[1], "Auto Accept Trades", false)
    FatalityUI.CreateCheckbox(Columns[2], "Scam Detection", false)
    FatalityUI.CreateCheckbox(Columns[2], "Trade Notifications", false)
    FatalityUI.CreateSectionLabels({"Trading", "Security", ""})
end
ContentLoaders.LEGIT_AIMBOT = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Enable", false)
    FatalityUI.CreateSlider(Columns[1], "Smoothness", 1, 100, 50)
    FatalityUI.CreateSlider(Columns[1], "FOV", 10, 180, 60)
    FatalityUI.CreateCheckbox(Columns[1], "Visible Check", false)
    FatalityUI.CreateDropdown(Columns[1], "Target Bone", {"Head", "Torso", "Closest"})
    FatalityUI.CreateMultiDropdown(Columns[1], "Hitboxes", {"Head", "Chest", "Stomach", "Arms", "Legs"})
    FatalityUI.CreateCheckbox(Columns[2], "Team Check", false)
    FatalityUI.CreateCheckbox(Columns[2], "Smoke Check", false)
    FatalityUI.CreateSlider(Columns[2], "Max Distance", 100, 5000, 1000)
    FatalityUI.CreateSectionLabels({"Aimbot", "Checks", ""})
end
ContentLoaders.LEGIT_TRIGGERBOT = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Enable Triggerbot", false, "V")
    FatalityUI.CreateSlider(Columns[1], "Delay (ms)", 0, 500, 50)
    FatalityUI.CreateCheckbox(Columns[1], "Team Check", false)
    FatalityUI.CreateCheckbox(Columns[1], "Head Only", false)
    FatalityUI.CreateCheckbox(Columns[2], "Burst Mode", false)
    FatalityUI.CreateSlider(Columns[2], "Burst Count", 1, 10, 3)
    FatalityUI.CreateSlider(Columns[2], "Burst Delay", 0, 200, 50)
    FatalityUI.CreateSectionLabels({"Trigger", "Burst", ""})
end
ContentLoaders.LEGIT_RECOIL = function()
    FatalityUI.ClearColumns()
    FatalityUI.CreateCheckbox(Columns[1], "Reduce Recoil", false)
    FatalityUI.CreateSlider(Columns[1], "Reduction %", 0, 100, 50)
    FatalityUI.CreateCheckbox(Columns[1], "Remove Spread", false)
    FatalityUI.CreateSlider(Columns[1], "Spread Reduction", 0, 100, 30)
    FatalityUI.CreateCheckbox(Columns[2], "Standalone RCS", false)
    FatalityUI.CreateSlider(Columns[2], "RCS Smoothness", 1, 100, 70)
    FatalityUI.CreateSectionLabels({"Recoil", "RCS", ""})
end

-- section конфих
local function SwitchSubTab(subTabName)
    FatalityUI.SetCurrentSubTab(subTabName)
    for name, data in pairs(FatalityUI.GetAllSubTabs()) do
        local isActive = name == subTabName
        data.Highlight.Visible = isActive
        game:GetService("TweenService"):Create(data.Button, TweenInfo.new(0.2), {
            TextColor3 = isActive and Color3.fromRGB(255, 255, 255) or Config.Theme.TextColor
        }):Play()
    end
    local currentTab = FatalityUI.GetCurrentTab()
    local loaderKey = currentTab .. "_" .. subTabName:gsub("-", "")
    if ContentLoaders[loaderKey] then
        ContentLoaders[loaderKey]()
    end
end
local function UpdateSubTabs()
    for _, child in ipairs(UI.SubTabContainer:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    local currentTab = FatalityUI.GetCurrentTab()
    local subTabs = tabSubTabs[currentTab] or {}
    for i, subTabName in ipairs(subTabs) do
        FatalityUI.CreateSubTab(UI.SubTabContainer, subTabName, i == 1, SwitchSubTab)
    end
    if #subTabs > 0 then
        FatalityUI.SetCurrentSubTab(subTabs[1])
    end
end
local function SwitchTab(tabName)
    FatalityUI.SetCurrentTab(tabName)
    for name, data in pairs(FatalityUI.GetAllTabs()) do
        local isActive = name == tabName
        data.Underline.Visible = isActive
        game:GetService("TweenService"):Create(data.Button, TweenInfo.new(0.2), {
            TextColor3 = isActive and Color3.fromRGB(255, 255, 255) or Config.Theme.TextColor
        }):Play()
    end
    UpdateSubTabs()
    local subTabs = tabSubTabs[tabName] or {}
    if #subTabs > 0 then
        local loaderKey = tabName .. "_" .. subTabs[1]:gsub("-", "")
        if ContentLoaders[loaderKey] then
            ContentLoaders[loaderKey]()
        end
    end
end
for i, tabName in ipairs(tabs) do
    FatalityUI.CreateTab(UI.TabContainer, tabName, i == 1, SwitchTab)
end
FatalityUI.SetCurrentTab(tabs[1])
UpdateSubTabs()
ContentLoaders.RAGE_AIMBOT()
-- js realised ui wasnt draggable (ill fix this later)
FatalityUI.MakeDraggable(UI.MainFrame)

UI.MainFrame.Visible = false
UI.MainFrame.Size = UDim2.new(0, 0, 0, 0)
UI.MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
local isVisible = true
local savedPosition = UDim2.new(0.5, -405, 0.5, -300)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Config.ToggleKey then
        isVisible = not isVisible
        if isVisible then
            UI.MainFrame.Visible = true
            local showTween = game:GetService("TweenService"):Create(UI.MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 810, 0, 600),
                Position = savedPosition
            })
            showTween:Play()
        else
            savedPosition = UI.MainFrame.Position
            local hideTween = game:GetService("TweenService"):Create(UI.MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 0),
                Position = UDim2.new(savedPosition.X.Scale, savedPosition.X.Offset + 405, savedPosition.Y.Scale, savedPosition.Y.Offset + 300)
            })
            hideTween:Play()
            hideTween.Completed:Connect(function()
                UI.MainFrame.Visible = false
            end)
        end
    end
end)
-- load screen
FatalityUI.CreateLoadingScreen(function()
    UI.MainFrame.Visible = true
    local openTween = game:GetService("TweenService"):Create(UI.MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 810, 0, 600),
        Position = UDim2.new(0.5, -405, 0.5, -300)
    })
    openTween:Play()
    openTween.Completed:Connect(function()
        savedPosition = UI.MainFrame.Position
        FatalityUI.CreateNotification("FATALITY", "Menu loaded successfully! Press Delete to open/hide", 4)
    end)
end)
-- if print thing isnt appearing in console after executing, then u have some problems
print("fatal")
