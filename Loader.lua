local games = {--these are the supported games so dont execute any other one boi
    [142823291] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/mm2.lua";--mm2
    
    [7991339063] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/RainbowFriends.lua";--rainbow friends
    [13622981808] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/RainbowFriends.lua";--chapter 2
    [8888615802] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/RainbowFriends.lua";--chapter 1 (not fully supported)
    
    [134208374070897] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/Monochrome.lua";--monochrome
    [286090429] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/Arsenal.lua";--arsenal
    [17625359962] = "https://raw.githubusercontent.com/imveryveryud/FilipinoHub/refs/heads/main/Games/Rivals.lua";--rivals
}

if games[game.PlaceId] then
    loadstring(game:HttpGet(games[game.PlaceId]))()
else
    warn("Game not supported")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Filipino hub",
        Text = "Game not supported",
        Duration = 3
    })
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17208361335"
    sound.Parent = game:GetService("SoundService")
    sound:Play()
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end
