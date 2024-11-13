

--[[ 
you can change the path to the audios to your own if you want.

To download the audios you can either download them from the github or 

https://www.mediafire.com/folder/ve997dq7rdpdw/Audios

]]

local is = game:GetService("UserInputService")


local keySound = getcustomasset("Audios/key.mp3")
local spacebarSound = getcustomasset("Audios/sb.mp3")
local escapeSound = getcustomasset("Audios/esc.mp3")
local backspaceSound = getcustomasset("Audios/bs.mp3")
local shiftSound = getcustomasset("Audios/shift.mp3")

local sounds = {
    A = keySound, B = keySound, C = keySound, D = keySound, E = keySound,
    F = keySound, G = keySound, H = keySound, I = keySound, J = keySound,
    K = keySound, L = keySound, M = keySound, N = keySound, O = keySound,
    P = keySound, Q = keySound, R = keySound, S = keySound, T = keySound,
    U = keySound, V = keySound, W = keySound, X = keySound, Y = keySound, Z = keySound,
    Space = spacebarSound,
    Escape = escapeSound,
    Backspace = backspaceSound,
    LeftShift = shiftSound,
    RightShift = shiftSound
}

is.InputBegan:Connect(function(input)
    local soundAsset = sounds[input.KeyCode.Name]
    if soundAsset then
     local soundInstance = Instance.new("Sound")
     soundInstance.SoundId = soundAsset
     soundInstance.Parent = workspace
     soundInstance:Play()
        
    soundInstance.Ended:Connect(function()
    soundInstance:Destroy()
        end)
    end
end)
