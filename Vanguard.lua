if not game:IsLoaded() then
	game.Loaded:Wait()
end
if not getgenv() then
	function getgenv()
		return _G
	end
end
local games = {
  [17219742] = 'https://raw.githubusercontent.com/Hexed1022/VanguardEx/main/VanguardEx.lua',
}
if games[game.CreatorId] then
	task.wait(1)
	print(getgenv().ryk_loaded)
	if getgenv().ryk_loaded == true then return end
	getgenv().ryk_loaded = true
	print("Vanguard loaded correctly.")
	loadstring(game:HttpGet(games[game.CreatorId]))()
else
	getgenv().ryk_loaded = true
	warn('Script is not compatible with this game.')
end
