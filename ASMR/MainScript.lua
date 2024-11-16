

--[[ 
you can change the path to the audios to your own if you want.

To download the audios you can either download them from the github or 

https://www.mediafire.com/folder/ve997dq7rdpdw/Audios

You may need mediafire premium to bulk download, if you dont then just download the files 1 by 1 and create a new folder in your workspace called Audios

]]
local is = game:GetService("UserInputService")

local soundAssets = {
    key = getcustomasset("Audios/key.mp3"),
    spacebar = getcustomasset("Audios/sb.mp3"),
    escape = getcustomasset("Audios/esc.mp3"),
    backspace = getcustomasset("Audios/bs.mp3"),
    shift = getcustomasset("Audios/shift.mp3")
}

local keys = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 
              "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Zero"}
local sounds = {Space = soundAssets.spacebar, Escape = soundAssets.escape, Backspace = soundAssets.backspace, LeftShift = soundAssets.shift, RightShift = soundAssets.shift}

for _, key in ipairs(keys) do
    sounds[key] = soundAssets.key
end

is.InputBegan:Connect(function(input)
    local soundAsset = sounds[input.KeyCode.Name]
    if soundAsset then
        local sound = Instance.new("Sound")
        sound.SoundId = soundAsset
        sound.Parent = workspace
        sound:Play()
        sound.Ended:Connect(function() sound:Destroy() end)
    end
end)
