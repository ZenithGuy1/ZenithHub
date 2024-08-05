if not game:IsLoaded() then
  game.Loaded:Wait()
end

game:GetService('GuiService'):ClearError()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()

if game.PlaceId == 11520107397 or game.PlaceId == 6403373529 or game.PlaceId == 9015014224 then
  local anti
  anti = hookmetamethod(game, '__namecall', function(method, ...)
      if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
  end)

  if workspace:FindFirstChild('SafeSpot') == nil then
    local SafeSpot = Instance.new('Part', workspace)
  end
