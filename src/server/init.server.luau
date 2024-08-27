
for _, v in pairs(workspace:GetChildren()) do
	if v.Name == "InvisiblePart" then
		v.Transparency = 1
		v.Anchored = true
	end
	if v.Name == "Platform" then
		v.Material = Enum.Material.Slate
		v.BrickColor = BrickColor.new("Dark stone grey")
		v.Orientation = Vector3.new(math.random(-10,10),math.random(-179,179),math.random(-10,10))
		v.Velocity = Vector3.new(0,0,0)
	end
	if v.Name == "FloatyPlatform" then
		v.Material = Enum.Material.Granite
		v.BrickColor = BrickColor.new("Dark indigo")
		v.Orientation = Vector3.new(
			math.random(-5,5),
			math.random(-179,179),
			math.random(-5,5)
		)
	end
	if v.Name == "String" then
		v.Size = Vector3.new(.2, v.Size.Y, .2)
		v.Material = Enum.Material.Fabric
		v.CanCollide = false
		v.Orientation = Vector3.new(
			0,
			math.random(-179,179),
			0
		)
	end
end