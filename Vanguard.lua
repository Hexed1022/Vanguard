if not game:IsLoaded() then
	game.Loaded:Wait()
end
if not getgenv() then
	function getgenv()
		return _G
	end
end
local games = {
  [17219742] = 'https://ryk.bloxteam.com/anime_vanguards.lua',
}
if games[game.CreatorId] then
	task.wait(1)
	print(getgenv().ryk_loaded)
	if getgenv().ryk_loaded == true then return end
	getgenv().ryk_loaded = true
	print("RYK HUB | Successfully loaded the game.")
	loadstring(game:HttpGet(games[game.CreatorId]))()
else
	getgenv().ryk_loaded = true
	warn('RYK HUB | Game not supported. Please join discord.gg/ryk for support.')
end
