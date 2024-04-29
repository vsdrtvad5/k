local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr
        Highlight.Adornee = plr
end

game.Workspace.NPCs.ChildAdded:Connect(Hightlight)
for i,v in next, game.Workspace.NPCs:GetChildren() do
    Highlight(v)
end
game.Workspace.SCPs.ChildAdded:Connect(Hightlight)
for i,v in next, game.Workspace.SCPs:GetChildren() do
    Highlight(v)
end
for i,v in next, workspace.MapData.Items["5552413113"]:GetChildren() do
    if v.Name == "M9" or v.Name == "P90" or v.Name == "9mm" or v.Name == "USP" then
        Highlight(v)
    end
end
