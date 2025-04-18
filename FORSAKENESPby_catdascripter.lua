local sur = workspace.Players.Survivors
local kil = workspace.Players.Killers
local spe = workspace.Players.Spectating
local ing = workspace.Map.Ingame

print("WORKING!")

local function survivoresp(char)
local billboard = Instance.new("BillboardGui")
billboard.Size = UDim2.new(2, 0, 0.5, 0) -- Adjust size
billboard.StudsOffset = Vector3.new(0, 1.25, 0) -- Position above head
billboard.Adornee = char.Head
billboard.Parent = char.Head
billboard.AlwaysOnTop = true
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 1, 0, 1)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Text = "HP: "..char.Humanoid.Health.."/"..char.Humanoid.MaxHealth -- Your displayed text
textLabel.TextColor3 = Color3.fromRGB(255, 100, 28)
textLabel.Font = Enum.Font.Jura
textLabel.Parent = billboard

local charnamebill = Instance.new("BillboardGui")
charnamebill.Size = UDim2.new(4, 0, 1, 0) -- Adjust size
charnamebill.StudsOffset = Vector3.new(0, 2, 0) -- Position above head
charnamebill.Adornee = char.Head
charnamebill.Parent = char.Head
charnamebill.AlwaysOnTop = true
local charnametext = Instance.new("TextLabel")
charnametext.Size = UDim2.new(1, 0, 1, 0)
charnametext.Position = UDim2.new(0, 1, 0, 1)
charnametext.BackgroundTransparency = 1
charnametext.TextScaled = true
charnametext.Text = char.Name
charnametext.TextColor3 = Color3.fromRGB(255, 100, 28)
charnametext.Font = Enum.Font.Jura
charnametext.Parent = charnamebill

local highlight = Instance.new("Highlight", char)
highlight.Archivable = true
highlight.DepthMode = "AlwaysOnTop"
highlight.Enabled = true
highlight.OutlineColor= Color3.fromRGB(255, 100, 28)
highlight.FillColor= Color3.fromRGB(255, 100, 28)
highlight.FillTransparency = 0.9
highlight.OutlineTransparency = 0
highlight.Parent = char


local temp = game:GetService("RunService").Heartbeat:Connect(function()
	textLabel.Text = "HP: "..char:FindFirstChild("Humanoid").Health.."/"..char:FindFirstChild("Humanoid").MaxHealth
end)

char:FindFirstChild("Humanoid").Died:Connect(function()
	temp:Disconnect()
	textLabel.Text = ""
	charnametext.Text = ""
	highlight.OutlineTransparency = 1
end)

if not char:FindFirstChild("Humanoid").Health or char:FindFirstChild("Humanoid").MaxHealth then
	temp:Disconnect()
end

return textLabel

end

local function killeresp(char)
local billboard = Instance.new("BillboardGui")
billboard.Size = UDim2.new(2, 0, 0.5, 0) -- Adjust size
billboard.StudsOffset = Vector3.new(0, 1.25, 0) -- Position above head
billboard.Adornee = char.Head
billboard.Parent = char.Head
billboard.AlwaysOnTop = true
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 1, 0, 1)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Text = "HP: "..char.Humanoid.Health.."/"..char.Humanoid.MaxHealth -- Your displayed text
textLabel.TextColor3 = Color3.fromRGB(204, 0, 0)
textLabel.Font = Enum.Font.Jura
textLabel.Parent = billboard

local charnamebill = Instance.new("BillboardGui")
charnamebill.Size = UDim2.new(4, 0, 1, 0) -- Adjust size
charnamebill.StudsOffset = Vector3.new(0, 2, 0) -- Position above head
charnamebill.Adornee = char.Head
charnamebill.Parent = char.Head
charnamebill.AlwaysOnTop = true
local charnametext = Instance.new("TextLabel")
charnametext.Size = UDim2.new(1, 0, 1, 0)
charnametext.Position = UDim2.new(0, 1, 0, 1)
charnametext.BackgroundTransparency = 1
charnametext.TextScaled = true
charnametext.Text = char.Name
charnametext.TextColor3 = Color3.fromRGB(204, 0, 0)
charnametext.Font = Enum.Font.Jura
charnametext.Parent = charnamebill

local highlight = Instance.new("Highlight", char)
highlight.Archivable = true
highlight.DepthMode = "AlwaysOnTop"
highlight.Enabled = true
highlight.OutlineColor= Color3.fromRGB(204, 0, 0)
highlight.FillColor= Color3.fromRGB(204, 0, 0)
highlight.FillTransparency = 0.9
highlight.OutlineTransparency = 0
highlight.Parent = char


local temp = game:GetService("RunService").Heartbeat:Connect(function()
	textLabel.Text = "HP: "..char:FindFirstChild("Humanoid").Health.."/"..char:FindFirstChild("Humanoid").MaxHealth
end)

char:FindFirstChild("Humanoid").Died:Connect(function()
	temp:Disconnect()
	textLabel.Text = ""
	charnametext.Text = ""
	highlight.OutlineTransparency = 1
end)

if not char:FindFirstChild("Humanoid").Health or char:FindFirstChild("Humanoid").MaxHealth then
	temp:Disconnect()
end

return textLabel

end

local function specesp(char) --useless
local billboard = Instance.new("BillboardGui")
billboard.Size = UDim2.new(2, 0, 0.5, 0) -- Adjust size
billboard.StudsOffset = Vector3.new(0, 1.25, 0) -- Position above head
billboard.Adornee = char.Head
billboard.Parent = char.Head
billboard.AlwaysOnTop = true
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 1, 0, 1)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Text = "HP: "..char.Humanoid.Health.."/"..char.Humanoid.MaxHealth -- Your displayed text
textLabel.TextColor3 = Color3.fromRGB(117, 117, 117)
textLabel.Font = Enum.Font.Jura
textLabel.Parent = billboard

local charnamebill = Instance.new("BillboardGui")
charnamebill.Size = UDim2.new(4, 0, 1, 0) -- Adjust size
charnamebill.StudsOffset = Vector3.new(0, 2, 0) -- Position above head
charnamebill.Adornee = char.Head
charnamebill.Parent = char.Head
charnamebill.AlwaysOnTop = true
local charnametext = Instance.new("TextLabel")
charnametext.Size = UDim2.new(1, 0, 1, 0)
charnametext.Position = UDim2.new(0, 1, 0, 1)
charnametext.BackgroundTransparency = 1
charnametext.TextScaled = true
charnametext.Text = char.Name
charnametext.TextColor3 = Color3.fromRGB(117, 117, 117)
charnametext.Font = Enum.Font.Jura
charnametext.Parent = charnamebill

local highlight = Instance.new("Highlight", char)
highlight.Archivable = true
highlight.DepthMode = "AlwaysOnTop"
highlight.Enabled = true
highlight.OutlineColor= Color3.fromRGB(117, 117, 117)
highlight.FillColor= Color3.fromRGB(117, 117, 117)
highlight.FillTransparency = 0.9
highlight.OutlineTransparency = 0
highlight.Parent = char


local temp = game:GetService("RunService").Heartbeat:Connect(function()
	textLabel.Text = "HP: "..char:FindFirstChild("Humanoid").Health.."/"..char:FindFirstChild("Humanoid").MaxHealth
end)

char:FindFirstChild("Humanoid").Died:Connect(function()
	temp:Disconnect()
	textLabel.Text = ""
	charnametext.Text = ""
	highlight.OutlineTransparency = 1
end)

if not char:FindFirstChild("Humanoid").Health or char:FindFirstChild("Humanoid").MaxHealth then
	temp:Disconnect()
end

return textLabel

end

local function genesp(p)
local billboard = Instance.new("BillboardGui")
billboard.Size = UDim2.new(2, 0, 0.5, 0) -- Adjust size
billboard.StudsOffset = Vector3.new(0, 1.25, 0) -- Position above head
billboard.Adornee = p.Main
billboard.Parent = p.Main
billboard.AlwaysOnTop = true
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 1, 0, 1)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Text = ""
textLabel.TextColor3 = Color3.fromRGB(255, 206, 28)
textLabel.Font = Enum.Font.Jura
textLabel.Parent = billboard

local gennamebill = Instance.new("BillboardGui")
gennamebill.Size = UDim2.new(4, 0, 1, 0) -- Adjust size
gennamebill.StudsOffset = Vector3.new(0, 2, 0) -- Position above head
gennamebill.Adornee = p.Main
gennamebill.Parent = p.Main
gennamebill.AlwaysOnTop = true
local gennametext = Instance.new("TextLabel")
gennametext.Size = UDim2.new(1, 0, 1, 0)
gennametext.Position = UDim2.new(0, 1, 0, 1)
gennametext.BackgroundTransparency = 1
gennametext.TextScaled = true
gennametext.Text = p.Name
gennametext.TextColor3 = Color3.fromRGB(255, 206, 28)
gennametext.Font = Enum.Font.Jura
gennametext.Parent = gennamebill

local highlight = Instance.new("Highlight", char)
highlight.Archivable = true
highlight.DepthMode = "AlwaysOnTop"
highlight.Enabled = true
highlight.OutlineColor= Color3.fromRGB(255, 206, 28)
highlight.FillColor= Color3.fromRGB(255, 206, 28)
highlight.FillTransparency = 0.9
highlight.OutlineTransparency = 0
highlight.Parent = p


local temp = game:GetService("RunService").Heartbeat:Connect(function()
if p:FindFirstChild("Progress").Value >= 99 then
	gennametext.Text = ""
	highlight:Destroy()
	textLabel.Text = ""
	else
	gennametext.Text = "Generator"
	textLabel.Text = "Progress: "..p.Progress.Value.."%"
end
end)

if p:FindFirstChild("Progress").Value >= 99 then
	temp:Disconnect()
end

p.Destroying:Connect(function()
		temp:Disconnect()
end)

return textLabel

end

sur.DescendantAdded:Connect(function(v)
	if v:IsA("Model") and v:FindFirstChild("Humanoid") then
		survivoresp(v)
	end
end)

for _,v in pairs(sur:GetDescendants()) do
	if v:IsA("Model") and v:FindFirstChild("Humanoid") then
		survivoresp(v)
	end
end

kil.DescendantAdded:Connect(function(v)
	if v:IsA("Model") and v:FindFirstChild("Humanoid")  then
		killeresp(v)
	end
end)

for _,v in pairs(kil:GetDescendants()) do
	if v:IsA("Model") and v:FindFirstChild("Humanoid") then
		killeresp(v)
	end
end

spe.DescendantAdded:Connect(function(v)
	if v:IsA("Model") and v:FindFirstChild("Humanoid") then
		specesp(v)
	end
end)

for _,v in pairs(spe:GetDescendants()) do
	if v:IsA("Model") and v:FindFirstChild("Humanoid") then
		specesp(v)
	end
end

ing.DescendantAdded:Connect(function(v)
	if v:IsA("Model") and v:FindFirstChild("Main")  and v.Name == "Generator" then
		genesp(v)
	end
end)

for _,v in pairs(ing:GetDescendants()) do
	if v:IsA("Model") and v:FindFirstChild("Main") and v.Name == "Generator" then
		genesp(v)
	end
end

