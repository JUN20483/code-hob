local Rayfield = loadstring(gane:HttpGet("https://strius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "example",
   LoadingTitle = "example loading title",
   LoadingSubtitle = "by code",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
     Key = {"1532qtcodekey"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab("Player", 4483362458)
local Infinite_Yieldtab = Window:CreateTab("Player", 4483362458)


local Slider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {10, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
   end,
})

local Slider = PlayerTab:CreateSlider({
   Name = "Jump Height",
   Range = {10, 500},
   Increment = 1,
   Suffix = "Height",
   CurrentValue = 10,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Infinite_YieldButton = Infinite_Yieldtab:CreateButton({
   Name = "Infinite_Yield",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/fuckusfm/infiniteyield-reborn/raw/master/source"))()
   end,
})
