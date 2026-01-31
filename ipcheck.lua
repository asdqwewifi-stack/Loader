local HttpService = game:GetService("HttpService")

local allowedIP = "143.44.165.85"

-- get user's public IP
local success, userIP = pcall(function()
    return game:HttpGet("https://api.ipify.org")
end)

-- silently stop if IP check fails
if not success then
    return
end

-- silently stop if IP is not allowed
if userIP ~= allowedIP then
    return
end

-- load main script (silently fail if it errors)
pcall(function()
    loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"
    ))()
end)
