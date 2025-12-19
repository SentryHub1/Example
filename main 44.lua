local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/master/source.lua", true))()

local Window = Luna:CreateWindow({
    Name = "sentryhub", -- This Is Title Of Your Window
    Subtitle = nil, -- A Gray Subtitle next To the main title.
    LogoID = "rbxassetid://139208186043027", -- Your dragon logo
    LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
    LoadingTitle = "VortexHax", -- Header for loading screen
    LoadingSubtitle = "by VortexHax Team", -- Subtitle for loading screen

    ConfigSettings = {
        RootFolder = nil, -- The Root Folder Is Only If You Have A Hub With Multiple Game Scripts and u may remove it. DO NOT ADD A SLASH
        ConfigFolder = "VortexHax" -- The Name Of The Folder Where Luna Will Store Configs For This Script. DO NOT ADD A SLASH
    },

    KeySystem = true, -- As Of Beta 6, Luna Has officially Implemented A Key System!
    KeySettings = {
        Title = "sentryhub",
        Subtitle = "Key System",
        Note = "Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass, the key is vortex123!",
        SaveInRoot = false, -- Enabling will save the key in your RootFolder (YOU MUST HAVE ONE BEFORE ENABLING THIS OPTION)
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        Key = {"vortex123"},
        SecondAction = {
            Enabled = true, -- Set to false if you do not want a second action,
            Type = "Discord", -- Link / Discord.
            Parameter = "DzMhjn3JfB" -- If Type is Discord, then put your invite link (DO NOT PUT DISCORD.GG/). Else, put the full link of your key system here.
        }
    }
})

Window:CreateHomeTab({
	SupportedExecutors = {
		"Delta",
		"Synapse X",
		"Krnl",
		"Fluxus",
		"Script-Ware",
		"Codex",
		"Electron"
	},
	DiscordInvite = "DzMhjn3JfB",
	Icon = 1
})

local GamesTab = Window:CreateTab({
    Name = "Scripts",
    Icon = "view_in_ar",
    ImageSource = "Material",
    ShowTitle = true -- This will determine whether the big header text in the tab will show
})

GamesTab:CreateSection("SentryHub")

GamesTab:CreateButton({
    Name = "the forge",
    Description = "this is a script for theforge",
    Callback = function()
        loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/99cb0ed8a306c003"))()
    end
})

GamesTab:CreateButton({
    Name = "nfl universe football",
    Description = "SentryHub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SentryHub1/Hh-/refs/heads/main/main%2036.lua'))() 
    end
})

GamesTab:CreateSection("More sentryHub")
GamesTab:CreateButton({
    Name = "Prison life • sentryHub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SentryHub1/Sentryy/refs/heads/main/main%2030.lua'))() 
    end
})

local ConfigTab = Window:CreateTab({
    Name = "Config",
    Icon = "settings",
    ImageSource = "Material",
    ShowTitle = true
})

ConfigTab:BuildConfigSection()

Luna:Notification({
    Title = "SentryHub loaded!",
    Icon = "notifications_active",
    ImageSource = "Material",
    Content = "Tap the gamepad icon for scripts! https://discord.gg/X2WBMt2pShttps://discord.gg/X2WBMt2pS"
})

Luna:LoadAutoloadConfig()