local ui = game:GetService("CoreGui"):FindFirstChild("AI")
if ui then ui:Destroy() end

local uiElements = {
	["AI"] = Instance.new("ScreenGui"),
	["Container"] = Instance.new("Frame"),
	["UICorner"] = Instance.new("UICorner"),
	["Chat"] = Instance.new("Frame"),
	["Messages"] = Instance.new("ScrollingFrame"),
	["UserTemplate"] = Instance.new("Frame"),
	["UICorner_1"] = Instance.new("UICorner"),
	["Message"] = Instance.new("TextLabel"),
	["UIPadding"] = Instance.new("UIPadding"),
	["UISizeConstraint"] = Instance.new("UISizeConstraint"),
	["UIPadding_1"] = Instance.new("UIPadding"),
	["SysTemplate"] = Instance.new("Frame"),
	["UICorner_2"] = Instance.new("UICorner"),
	["Message_1"] = Instance.new("TextLabel"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["UISizeConstraint_1"] = Instance.new("UISizeConstraint"),
	["Buttons"] = Instance.new("Frame"),
	["UIListLayout"] = Instance.new("UIListLayout"),
	["UIPadding_3"] = Instance.new("UIPadding"),
	["Copy"] = Instance.new("ImageButton"),
	["Header"] = Instance.new("Frame"),
	["Icon"] = Instance.new("ImageLabel"),
	["Icon1"] = Instance.new("ImageLabel"),
	["UICorner_3"] = Instance.new("UICorner"),
	["UIStroke"] = Instance.new("UIStroke"),
	["InputBar"] = Instance.new("Frame"),
	["Bar"] = Instance.new("TextBox"),
	["UIPadding_4"] = Instance.new("UIPadding"),
	["UICorner_4"] = Instance.new("UICorner"),
	["UIStroke_1"] = Instance.new("UIStroke")
}

uiElements["AI"].Parent = game:GetService("CoreGui")
uiElements["AI"].Name = "AI"

-- SMALLER UI
uiElements["Container"].Parent = uiElements["AI"]
uiElements["Container"].Position = UDim2.new(0.5, 0, 0.5, 0)
uiElements["Container"].Size = UDim2.new(0.4, 0, 0.5, 0)
uiElements["Container"].BackgroundColor3 = Color3.fromRGB(15, 15, 15)
uiElements["Container"].AnchorPoint = Vector2.new(0.5, 0.5)
uiElements["Container"].Active = true

uiElements["UICorner"].Parent = uiElements["Container"]
uiElements["UICorner"].CornerRadius = UDim.new(0, 14)

uiElements["Chat"].Parent = uiElements["Container"]
uiElements["Chat"].Size = UDim2.new(1, 0, 1, -60)
uiElements["Chat"].BackgroundTransparency = 1

uiElements["Messages"].Parent = uiElements["Chat"]
uiElements["Messages"].Position = UDim2.new(0, 0, 0, 50)
uiElements["Messages"].Size = UDim2.new(1, 0, 1, -50)
uiElements["Messages"].BorderSizePixel = 0
uiElements["Messages"].BackgroundTransparency = 1
uiElements["Messages"].AutomaticCanvasSize = Enum.AutomaticSize.Y
uiElements["Messages"].ScrollBarThickness = 6

uiElements["UserTemplate"].Parent = uiElements["Messages"]
uiElements["UserTemplate"].Size = UDim2.new(0, 100, 0, 30)
uiElements["UserTemplate"].BackgroundColor3 = Color3.fromRGB(23, 23, 23)
uiElements["UserTemplate"].AnchorPoint = Vector2.new(1, 0)
uiElements["UserTemplate"].AutomaticSize = Enum.AutomaticSize.XY
uiElements["UserTemplate"].Visible = false

uiElements["UICorner_1"].Parent = uiElements["UserTemplate"]
uiElements["UICorner_1"].CornerRadius = UDim.new(1, 0)

uiElements["Message"].Parent = uiElements["UserTemplate"]
uiElements["Message"].AutomaticSize = Enum.AutomaticSize.XY
uiElements["Message"].BackgroundTransparency = 1
uiElements["Message"].Font = Enum.Font.GothamMedium
uiElements["Message"].TextColor3 = Color3.fromRGB(190,190,190)
uiElements["Message"].TextSize = 16
uiElements["Message"].TextWrapped = true

uiElements["UIPadding"].Parent = uiElements["Message"]
uiElements["UIPadding"].PaddingTop = UDim.new(0,4)
uiElements["UIPadding"].PaddingBottom = UDim.new(0,4)
uiElements["UIPadding"].PaddingLeft = UDim.new(0,8)
uiElements["UIPadding"].PaddingRight = UDim.new(0,8)

uiElements["SysTemplate"]:Clone().Parent = uiElements["Messages"]

-- HEADER (DRAG AREA)
uiElements["Header"].Parent = uiElements["Container"]
uiElements["Header"].Size = UDim2.new(1, 0, 0, 50)
uiElements["Header"].BackgroundColor3 = Color3.fromRGB(20,20,20)
uiElements["Header"].BorderSizePixel = 0

uiElements["Icon"].Parent = uiElements["Header"]
uiElements["Icon"].Position = UDim2.new(0,8,0,8)
uiElements["Icon"].Size = UDim2.new(0,30,0,30)
uiElements["Icon"].BackgroundTransparency = 1
uiElements["Icon"].Image = "rbxassetid://125966901198850"

uiElements["Icon1"].Parent = uiElements["Header"]
uiElements["Icon1"].Position = UDim2.new(1,-8,0,8)
uiElements["Icon1"].Size = UDim2.new(0,30,0,30)
uiElements["Icon1"].AnchorPoint = Vector2.new(1,0)
uiElements["Icon1"].BackgroundTransparency = 1
uiElements["Icon1"].Image = "rbxassetid://73985599900390"

uiElements["InputBar"].Parent = uiElements["Container"]
uiElements["InputBar"].Position = UDim2.new(0,0,1,0)
uiElements["InputBar"].Size = UDim2.new(1,0,0,50)
uiElements["InputBar"].AnchorPoint = Vector2.new(0,1)
uiElements["InputBar"].BackgroundTransparency = 1

uiElements["Bar"].Parent = uiElements["InputBar"]
uiElements["Bar"].Position = UDim2.new(0.5,0,0.5,0)
uiElements["Bar"].Size = UDim2.new(1,-20,1,-10)
uiElements["Bar"].AnchorPoint = Vector2.new(0.5,0.5)
uiElements["Bar"].BackgroundColor3 = Color3.fromRGB(23,23,23)
uiElements["Bar"].Font = Enum.Font.GothamMedium
uiElements["Bar"].TextColor3 = Color3.fromRGB(220,220,220)
uiElements["Bar"].TextSize = 16
uiElements["Bar"].PlaceholderText = "Ask anything"
uiElements["Bar"].ClearTextOnFocus = false
uiElements["Bar"].TextWrapped = true

uiElements["UICorner_4"].Parent = uiElements["Bar"]
uiElements["UICorner_4"].CornerRadius = UDim.new(1,0)

-- DRAG SYSTEM
local userInput = game:GetService("UserInputService")
local container = uiElements["Container"]
local header = uiElements["Header"]

local dragging = false
local dragStart
local startPos

header.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = container.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

userInput.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		container.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)