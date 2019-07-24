
--[[----------------------------------------------------------------------]]--
--[[  Licença: r9331098b0b9527852140fc9a4e1fea3							  ]]--
--[[  Discord: AZTËC™#5655                                                ]]--
--[[  Discord: discord.me/aztecde                                         ]]--
--[[  Youtube: https://www.youtube.com/channel/UC8jGkFhiXnbWWBbr90z596Q   ]]--
--[[----------------------------------------------------------------------]]--

			-- DISCORD: https://discordapp.com/developers

local appID = 594640424337932301					-- # appID do bot do ds
local imgLogo = {'server_logo', 'discord_logo'} 	-- # Nome das imagem
local textLogo = '127.0.0.1:30120'					-- # Texto da imagem
local textIcon = 'https://discord.gg/4sEJCVa'		-- # Texto do Icone
local maxPlayers = 64								-- # Total de Players

Citizen.CreateThread(function()
    while true do
        SetDiscordAppId(appID)
        SetDiscordRichPresenceAsset(imgLogo[1])
        SetDiscordRichPresenceAssetText(textLogo)
        SetDiscordRichPresenceAssetSmall(imgLogo[2])
        SetDiscordRichPresenceAssetSmallText(textIcon)
        Citizen.Wait(60000)
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1500)
		players = {}
		for _, player in ipairs(GetActivePlayers()) do
			table.insert(players,player)
		end
		SetRichPresence(GetPlayerName(PlayerId()).." - "..#players .. "/"..maxPlayers)
	end
end)