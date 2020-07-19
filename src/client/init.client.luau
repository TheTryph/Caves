local runService = game:GetService("RunService")
local atmo = game.Lighting:WaitForChild("Atmosphere")

local isPlayingCreepySounds = false
local surfaceSounds = game.SoundService.outside_sfx.outside

game.Lighting.Ambient = Color3.new(0,0,0)

runService.RenderStepped:connect(function()
	if workspace.Camera.CFrame.Position.Y < 168.724 then
		isPlayingCreepySounds = true
		surfaceSounds.Playing = false
		atmo.Glare = 0
		atmo.Haze = 10
		atmo.Density = 0.641
	else
        isPlayingCreepySounds = false
		surfaceSounds.Playing = true
		atmo.Glare = 1.53
		atmo.Haze = 2.06
		atmo.Density = 0.395
	end
end)

while true do
    if isPlayingCreepySounds then
        local SoundsDirectory = game.SoundService.cave_sfx
        local ChosenSound : Sound = SoundsDirectory:GetChildren()[math.random(1, #SoundsDirectory:GetChildren())]

        ChosenSound:Play()
        ChosenSound.Ended:Wait()
        
    end
    task.wait()
end
