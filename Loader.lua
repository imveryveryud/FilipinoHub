local games = {--these are the supported games so dont execute any other one boi
    [142823291] = "";--mm2
    [7991339063] = "";--rainbow friends
    [134208374070897] = "";--monochrome
    [286090429] = "";--arsenal
    [17625359962] = "";--rivals
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
