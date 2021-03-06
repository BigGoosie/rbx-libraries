local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local Mouse = game.Players.LocalPlayer:GetMouse()
local Library = {}

function Library:Toggle()
    if (not CoreGui:FindFirstChild("Synapense")) then return end
    CoreGui:FindFirstChild("Synapense").Enabled = not CoreGui:FindFirstChild("Synapense").Enabled
end

function Library:CreateWindow()
    if (CoreGui:FindFirstChild("Synapense")) then CoreGui["Synapense"]:Destroy() end
    local Synapense = Instance.new("ScreenGui")
    local s = Instance.new("Frame")
    local b1 = Instance.new("Frame")
    local b2 = Instance.new("Frame")
    local b3 = Instance.new("Frame")
    local b4 = Instance.new("Frame")
    local a = Instance.new("Frame")
    local ag = Instance.new("UIGradient")
    local sec = Instance.new("Frame")
    local sIL = Instance.new("Frame")
    local sILayout = Instance.new("UIListLayout")
    local sp = Instance.new("Frame")
    local i = Instance.new("Frame")

    Synapense.Name = "Synapense"
    Synapense.Parent = CoreGui

    s.Name = "s"
    s.Parent = Synapense
    s.Active = true
    s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    s.BorderSizePixel = 0
    s.Position = UDim2.new(0.071294561, 0, 0.181286544, 0)
    s.Size = UDim2.new(0, 650, 0, 498)
    s.Draggable = true

    b1.Name = "b1"
    b1.Parent = s
    b1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    b1.BorderSizePixel = 0
    b1.Size = UDim2.new(1, 0, 1, 0)

    b2.Name = "b2"
    b2.Parent = b1
    b2.BackgroundColor3 = Color3.fromRGB(38, 34, 36)
    b2.BorderSizePixel = 0
    b2.Position = UDim2.new(0.00100000005, 0, 0.00200000009, 0)
    b2.Size = UDim2.new(1, -2, 1, -2)

    b3.Name = "b3"
    b3.Parent = b2
    b3.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    b3.BorderSizePixel = 0
    b3.Position = UDim2.new(0.00400000019, 0, 0.00600000005, 0)
    b3.Size = UDim2.new(0, 642, 0, 490)

    b4.Name = "b4"
    b4.Parent = b3
    b4.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
    b4.BorderSizePixel = 0
    b4.Position = UDim2.new(0.00200000009, 0, 0.00200000009, 0)
    b4.Size = UDim2.new(0, 640, 0, 488)

    a.Name = "a"
    a.Parent = b4
    a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    a.BorderSizePixel = 0
    a.Position = UDim2.new(0.001, 0, 0.002, 0)
    a.Size = UDim2.new(1, -2, 0, 2)

    ag.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(55, 157, 187)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(175, 73, 160)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(184, 197, 64))}
    ag.Name = "ag"
    ag.Parent = a

    sec.Name = "sec"
    sec.Parent = b4
    sec.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    sec.BorderSizePixel = 0
    sec.Position = UDim2.new(0.0130000003, 0, 0.0320000015, 0)
    sec.Size = UDim2.new(0, 100, 0, 459)

    sIL.Name = "sIL"
    sIL.Parent = sec
    sIL.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    sIL.BorderSizePixel = 0
    sIL.Position = UDim2.new(0.00999999978, 0, 0.00217864919, 0)
    sIL.Size = UDim2.new(1, -2, 1, -2)

    sILayout.Parent = sIL
    sILayout.SortOrder = Enum.SortOrder.LayoutOrder

    sp.Name = "sp"
    sp.Parent = sIL
    sp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sp.BackgroundTransparency = 1.000
    sp.Size = UDim2.new(1, 0, 0, 8)

    i.Name = "i"
    i.Parent = b4
    i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    i.BackgroundTransparency = 1.000
    i.BorderSizePixel = 0
    i.Position = UDim2.new(0.200000003, 0, 0.0307377055, 0)
    i.Size = UDim2.new(0, 504, 0, 458)

    local aS = nil
    local sections = {}
    function sections:CreateSection(secName)
        secName = secName or "section"

        local sF = Instance.new("Frame")
        local sB = Instance.new("TextButton")
        local sI = Instance.new("Folder")
        local sIG = Instance.new("UIGridLayout")
        local t = nil

        sF.Name = secName
        sF.Parent = sIL
        sF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        sF.BackgroundTransparency = 1.000
        sF.BorderSizePixel = 0
        sF.Size = UDim2.new(1, 0, 0, 15)

        sB.Name = secName
        sB.Parent = sF
        sB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        sB.BackgroundTransparency = 1.000
        sB.BorderSizePixel = 0
        sB.Position = UDim2.new(0.0816326514, 0, 0, 0)
        sB.Size = UDim2.new(1, -8, 0, 15)
        sB.AutoButtonColor = false
        sB.Font = Enum.Font.SourceSans
        sB.Text = secName
        sB.TextColor3 = Color3.fromRGB(150, 150, 150)
        sB.TextSize = 15.000
        sB.TextXAlignment = Enum.TextXAlignment.Left

        sI.Name = secName
        sI.Parent = i
        sIG.Parent = sI
        sIG.SortOrder = Enum.SortOrder.LayoutOrder
        sIG.CellPadding = UDim2.new(0, 14, 0, 16)
        sIG.CellSize = UDim2.new(0, 245, 0, 222)
        sIG.FillDirectionMaxCells = 2

        if (aS == nil) then 
            sB.TextColor3 = Color3.fromRGB(124, 193, 21)
            aS = secName
        end
        
        sB.MouseEnter:Connect(function()
            if (aS ~= secName) then 
                t = TweenService:Create(sB, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
            end
        end)

        sB.MouseLeave:Connect(function()
            if (aS ~= secName) then 
                t = TweenService:Create(sB, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
            end
        end)

        sB.MouseButton1Click:Connect(function()
            if (aS ~= secName) then 
                t = TweenService:Create(sIL[aS][aS], TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
                for i, v in pairs(i:GetDescendants()) do
                    if (v.Parent.Name == secName and v.Name == "gB") then 
                        v.Visible = true
                    elseif (v.Parent.Name ~= secName and v.Name == "gB") then 
                        v.Visible = false
                    end
                end
                aS = secName
            end
        end)

        local groupboxes = {}
        function groupboxes:CreateGroupbox(gbName)
            gbName = gbName or "groupbox"
            local gB = Instance.new("Frame")
            local gBT = Instance.new("TextLabel")
            local gBTC = Instance.new("Frame")
            local gBIL = Instance.new("ScrollingFrame")
            local gBLayout = Instance.new("UIListLayout")
            local gBSP = Instance.new("Frame")

            gBT.Name = "gBT"
            gBT.Parent = gB
            gBT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            gBT.BackgroundTransparency = 1.000
            gBT.BorderSizePixel = 0
            gBT.Position = UDim2.new(0, 7, 0, -2)
            gBT.Size = UDim2.new(1, -5, 0, 1)
            gBT.Font = Enum.Font.SourceSans
            gBT.Text = gbName
            gBT.TextColor3 = Color3.fromRGB(150, 150, 150)
            gBT.TextSize = 15.000
            gBT.TextXAlignment = Enum.TextXAlignment.Left
            gBT.ZIndex = 2

            gBTC.Name = "gBTC"
            gBTC.Parent = gB
            gBTC.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            gBTC.BorderSizePixel = 0
            gBTC.Position = UDim2.new(0, 4, 0, 0)
            gBTC.Size = UDim2.new(1, -5, 0, 1)
            local gBTS = game:GetService("TextService"):GetTextSize(gBT.Text, gBT.TextSize, gBT.Font, Vector2.new(math.huge, math.huge))
            gBT.Size = UDim2.new(0, gBTS.X + 5, 0, 1)
            gBTC.Size = UDim2.new(0, gBTS.X + 6, 0, 1)

            gB.Name = "gB"
            gB.Parent = sI
            gB.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
            gB.BorderSizePixel = 0
            gB.Size = UDim2.new(0, 245, 0, 222)
            gB.Visible = true
            if (aS ~= secName) then gB.Visible = false end

            gBIL.Name = "gBIL"
            gBIL.Parent = gB
            gBIL.Active = true
            gBIL.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
            gBIL.BorderSizePixel = 0
            gBIL.Position = UDim2.new(0.00400000019, 0, 0.00499999989, 0)
            gBIL.Size = UDim2.new(1, -2, 1, -2)
            gBIL.ScrollBarThickness = 0
            
            gBLayout.Parent = gBIL
            gBLayout.SortOrder = Enum.SortOrder.LayoutOrder
            gBLayout.Padding = UDim.new(0, 3)

            gBSP.Name = "Spacer"
            gBSP.Parent = gBIL
            gBSP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            gBSP.BackgroundTransparency = 1.000
            gBSP.Size = UDim2.new(1, 0, 0, 8)

            local items = {}
            function items:Label(text)
                text = text or "label"

                local l = Instance.new("Frame")
                local lT = Instance.new("TextLabel")

                l.Name = "l"
                l.Parent = gBIL
                l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                l.BackgroundTransparency = 1.000
                l.BorderSizePixel = 0
                l.Size = UDim2.new(1, 0, 0, 15)

                lT.Name = "lT"
                lT.Parent = l
                lT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                lT.BackgroundTransparency = 1.000
                lT.BorderSizePixel = 0
                lT.Position = UDim2.new(0.115000002, 0, 0, 0)
                lT.Size = UDim2.new(1, -28, 0, 15)
                lT.Font = Enum.Font.SourceSans
                lT.Text = text
                lT.TextColor3 = Color3.fromRGB(150, 150, 150)
                lT.TextSize = 15.000
                lT.TextXAlignment = Enum.TextXAlignment.Left

                local props = {}
                function props:SetText(nText)
                    nText = nText or text; text = nText; lT.Text = text
                end
                return props
            end

            function items:Button(text, callback)
                text = text or "button"; callback = callback or function() end

                local b = Instance.new("Frame")
                local bB = Instance.new("Frame")
                local bC = Instance.new("TextButton")

                b.Name = "b"
                b.Parent = gBIL
                b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b.BackgroundTransparency = 1.000
                b.Size = UDim2.new(1, 0, 0, 22)

                bB.Name = "bB"
                bB.Parent = b
                bB.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                bB.BorderSizePixel = 0
                bB.Position = UDim2.new(0.111111112, 0, 0, 0)
                bB.Size = UDim2.new(1, -60, 0, 22)

                bC.Name = "bC"
                bC.Parent = bB
                bC.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                bC.BorderSizePixel = 0
                bC.Position = UDim2.new(0.00499999989, 0, 0.0500000007, 0)
                bC.Size = UDim2.new(1, -2, 1, -2)
                bC.AutoButtonColor = false
                bC.Font = Enum.Font.SourceSans
                bC.Text = text
                bC.TextColor3 = Color3.fromRGB(150, 150, 150)
                bC.TextSize = 15.000

                bC.MouseEnter:Connect(function()
                    t = TweenService:Create(bC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                end)
        
                bC.MouseLeave:Connect(function()
                    t = TweenService:Create(bC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
                end)

                bC.MouseButton1Click:Connect(function()
                    pcall(function() callback() end)
                end)

                local props = {}
                function props:SetText(nText)
                    nText = nText or text; text = nText; bC.Text = text
                end
                function props:Update(nText, nCallback)
                    nText = nText or text; nCallback = nCallback or callback
                    bC.Text = text; callback = nCallback
                end
                return props
            end

            function items:Toggle(text, state, callback)
                text = text or "toggle"; state = state or false; callback = callback or function() end
                local value = state 

                local t = Instance.new("Frame")
                local tT = Instance.new("TextLabel")
                local tB = Instance.new("Frame")
                local tC = Instance.new("TextButton")

                t.Name = "t"
                t.Parent = gBIL
                t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                t.BackgroundTransparency = 1.000
                t.BorderSizePixel = 0
                t.Size = UDim2.new(1, 0, 0, 15)

                tT.Name = "Text"
                tT.Parent = t
                tT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                tT.BackgroundTransparency = 1.000
                tT.BorderSizePixel = 0
                tT.Position = UDim2.new(0.115000002, 0, 0, 0)
                tT.Size = UDim2.new(1, -28, 0, 15)
                tT.Font = Enum.Font.SourceSans
                tT.Text = text
                tT.TextColor3 = Color3.fromRGB(150, 150, 150)
                tT.TextSize = 15.000
                tT.TextXAlignment = Enum.TextXAlignment.Left

                tB.Name = "tB"
                tB.Parent = t
                tB.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                tB.BorderSizePixel = 0
                tB.Position = UDim2.new(0.0493827164, 0, 0.200000003, 0)
                tB.Size = UDim2.new(0, 10, 0, 10)

                tC.Name = "tC"
                tC.Parent = tB
                tC.BackgroundColor3 = state and Color3.fromRGB(124, 193, 21) or Color3.fromRGB(40, 40, 40)
                tC.BorderSizePixel = 0
                tC.Position = UDim2.new(0.1, 0, 0.133333683, 0)
                tC.Size = UDim2.new(1, -2, 1, -2)
                tC.AutoButtonColor = false
                tC.Font = Enum.Font.SourceSans
                tC.Text = ""
                tC.TextColor3 = Color3.fromRGB(0, 0, 0)
                tC.TextSize = 14.000

                pcall(function() callback(value) end)

                tC.MouseEnter:Connect(function()
                    if (value) then 
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}); t:Play()
                    else
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                    end
                end)
        
                tC.MouseLeave:Connect(function()
                    if (value) then 
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                    else
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}); t:Play()
                    end
                end)

                tC.MouseButton1Click:Connect(function()
                    value = not value
                    pcall(function() callback(value) end)
                    if (value) then 
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                    else
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}); t:Play()
                    end
                end)
                
                local props = {}
                function props:SetText(nText)
                    nText = nText or text; text = nText; tT.Text = text
                end
                function props:SetValue(nValue)
                    nValue = nValue or value; value = nValue

                    pcall(function() callback(value) end)
                    if (value) then 
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                    else
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}); t:Play()
                    end
                end
                function props:Update(nText, nValue)
                    nText = nText or text; nValue = nValue or value
                    text = nText; value = nValue

                    pcall(function() callback(value) end)
                    tT.Text = text
                    if (value) then 
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                    else
                        t = TweenService:Create(tC, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}); t:Play()
                    end
                end
                return props
            end

            function items:Slider(text, start, range, callback)
                text = text or "slider"; start = start or 0; range = range or {0,10}; callback = callback or function() end
                if (start > range[2]) then 
                    start =  range[2]
                elseif (start < range[1]) then 
                    start =  range[1]
                end
                local value = start;

                local sR = Instance.new("Frame")
                local sRT = Instance.new("TextLabel")
                local sRB = Instance.new("Frame")
                local sRC = Instance.new("TextButton")
                local sRF = Instance.new("Frame")
                local sRV = Instance.new("TextLabel")

                sR.Name = "sR"
                sR.Parent = gBIL
                sR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                sR.BackgroundTransparency = 1.000
                sR.Position = UDim2.new(0, 0, 0.581818163, 0)
                sR.Size = UDim2.new(1, 0, 0, 35)

                sRT.Name = "sRT"
                sRT.Parent = sR
                sRT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                sRT.BackgroundTransparency = 1.000
                sRT.BorderSizePixel = 0
                sRT.Position = UDim2.new(0.115000002, 0, 0, 0)
                sRT.Size = UDim2.new(1, -28, 0, 15)
                sRT.Font = Enum.Font.SourceSans
                sRT.Text = text
                sRT.TextColor3 = Color3.fromRGB(150, 150, 150)
                sRT.TextSize = 15.000
                sRT.TextXAlignment = Enum.TextXAlignment.Left

                sRB.Name = "sRB"
                sRB.Parent = sR
                sRB.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                sRB.BorderSizePixel = 0
                sRB.Position = UDim2.new(0.115000002, 0, 0.5, 0)
                sRB.Size = UDim2.new(1, -60, 0, 10)

                sRC.Name = "sRC"
                sRC.Parent = sRB
                sRC.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                sRC.BorderSizePixel = 0
                sRC.Position = UDim2.new(0.00499999989, 0, 0.116999999, 0)
                sRC.Size = UDim2.new(1, -2, 1, -2)
                sRC.AutoButtonColor = false
                sRC.Font = Enum.Font.SourceSans
                sRC.Text = ""
                sRC.TextColor3 = Color3.fromRGB(150, 150, 150)
                sRC.TextSize = 15.000
                sRC.TextXAlignment = Enum.TextXAlignment.Left

                local sRFSize = UDim2.new(value / range[2], 0, 1, 0)
                if (value == range[1]) then sRFSize = UDim2.new(0, 0, 1, 0) end
                sRF.Name = "sRF"
                sRF.Parent = sRC
                sRF.BackgroundColor3 = Color3.fromRGB(124, 193, 21)
                sRF.BorderColor3 = Color3.fromRGB(27, 42, 53)
                sRF.BorderSizePixel = 0
                sRF.Size = sRFSize

                sRV.Name = "sRV"
                sRV.Parent = sRF
                sRV.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                sRV.BackgroundTransparency = 1.000
                sRV.Position = UDim2.new(1, 0, 0.55, 0)
                sRV.Size = UDim2.new(0, 0, 1, 0)
                sRV.Font = Enum.Font.SourceSansBold
                sRV.Text = value
                sRV.TextColor3 = Color3.fromRGB(150, 150, 150)
                sRV.TextSize = 15.000
                sRV.TextStrokeTransparency = 0.000

                pcall(function() callback(value) end)
                sRC.MouseButton1Down:Connect(function()
                    MoveConnection = game:GetService('RunService').Heartbeat:Connect(function()
                        local scale = math.clamp(game:GetService('Players').LocalPlayer:GetMouse().X - sRC.AbsolutePosition.X, 0, sRC.AbsoluteSize.X) /  sRC.AbsoluteSize.X
                        value = math.floor(range[1] + ((range[2] - range[1]) * scale))
                        sRV.Text = value

                        sRF.Size = UDim2.new(scale, 0, 1, 0)
                        pcall(function() callback(value) end)
                    end)
                    game:GetService('UserInputService').InputEnded:Connect(function(Check)
                        if Check.UserInputType == Enum.UserInputType.MouseButton1 then
                            if MoveConnection then
                                MoveConnection:Disconnect()
                                MoveConnection = nil
                            end
                        end
                    end)
                end)

                local props = {}
                function props:SetText(nText)
                    nText = nText or text; text = nText; sRT.Text = text
                end
                function props:SetValue(nValue)
                    nValue = nValue or value
                    if (value > range[2]) then 
                        value = range[2]
                    elseif (value < range[1]) then 
                        value = range[1]
                    end
                    
                    if (value > 0) then 
                        local scale = value / range[2]
                        if (value == range[1]) then scale = UDim2.new(0, 0, 1, 0) end
                        sRV.Text = value

                        sRF.Size = UDim2.new(scale, 0, 1, 0)
                        pcall(function() callback(value) end)
                    else
                        sRV.Text = value

                        sRF.Size = UDim2.new(0, 0, 1, 0)
                        pcall(function() callback(value) end)
                    end
                end
                function props:SetRange(nRange)
                    nRange = nRange or range
                    if (value > nRange[2]) then 
                        value = nRange[2]
                    elseif (value < nRange[1]) then 
                        value = nRange[1]
                    end
                    range = nRange

                    if (value > 0) then 
                        local scale = value / range[2]
                        if (value == range[1]) then scale = UDim2.new(0, 0, 1, 0) end
                        sRV.Text = value

                        sRF.Size = UDim2.new(scale, 0, 1, 0)
                        pcall(function() callback(value) end)
                    else
                        sRV.Text = value

                        sRF.Size = UDim2.new(0, 0, 1, 0)
                        pcall(function() callback(value) end)
                    end
                end
                function props:Update(nText, nValue, nRange)
                    nText = nText or text; nValue = nValue or value; nRange = nRange or range
                    if (nValue > nRange[2]) then 
                        nValue =  nRange[2]
                    elseif (nValue < nRange[1]) then 
                        nValue =  nRange[1]
                    end
                    sRT.Text = text; range = nRange

                    local scale = value / range[2]
                    if (value == range[1]) then scale = UDim2.new(0, 0, 1, 0) end
                    sRV.Text = nValue

                    sRF.Size = UDim2.new(scale, 0, 1, 0)
                    pcall(function() callback(value) end)
                end
                return props
            end

            function items:Bind(text, key, callback)
                text = text or "bind"; key = key or Enum.KeyCode.Escape; callback = callback or function() end
                local oldBind, jS = key.Name, false
                if (oldBind == Enum.KeyCode.Escape.Name) then oldBind = "-" end

                local b = Instance.new("Frame")
                local bT = Instance.new("TextLabel")
                local bC = Instance.new("TextButton")

                b.Name = "b"
                b.Parent = gBIL
                b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b.BackgroundTransparency = 1.000
                b.BorderSizePixel = 0
                b.Size = UDim2.new(1, 0, 0, 15)

                bT.Name = "bT"
                bT.Parent = b
                bT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bT.BackgroundTransparency = 1.000
                bT.BorderSizePixel = 0
                bT.Position = UDim2.new(0.115000002, 0, 0, 0)
                bT.Size = UDim2.new(1, -28, 0, 15)
                bT.Font = Enum.Font.SourceSans
                bT.Text = text
                bT.TextColor3 = Color3.fromRGB(150, 150, 150)
                bT.TextSize = 15.000
                bT.TextXAlignment = Enum.TextXAlignment.Left

                bC.Name = "bC"
                bC.Parent = b
                bC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bC.BackgroundTransparency = 1.000
                bC.BorderSizePixel = 0
                bC.Position = UDim2.new(0.800000012, 0, 0, 0)
                bC.Size = UDim2.new(0, 15, 1, 0)
                bC.Font = Enum.Font.SourceSansSemibold
                bC.Text = "["..string.lower(oldBind).."]"
                bC.TextColor3 = Color3.fromRGB(74, 74, 74)
                bC.TextSize = 13.000
                bC.MouseButton1Click:Connect(function()
                    bC.Text = "[...]"
                    local v1, v2 = game:GetService('UserInputService').InputBegan:Wait();
                    if (v1.KeyCode.Name ~= "Unknown") then
                        bC.Text = "["..string.lower(v1.KeyCode.Name).."]"
                        oldBind = v1.KeyCode.Name; jS =  true
                        if (oldBind == Enum.KeyCode.Escape.Name) then 
                            bC.Text = "[-]"; oldBind = "[-]"; jS = false
                        end
                    end
                end)

                local debounce = false
                game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent) 
                    if (not gameProcessedEvent) then 
                        if (input.KeyCode.Name == oldBind) then 
                            if (jS) then jS = false return end
                            if (not debounce) then
                                debounce = true
                                callback()
                                debounce = false
                            end
                        end
                    end
                end)

                
                local props = {}
                function props:SetText(nText)
                    nText = nText or text
                    bT.Text = text
                end
                function props:SetKey(nKey)
                    nKey = nKey or key
                    bC.Text = "["..string.lower(nKey.Name).."]"
                    oldBind = nKey.Name;
                    if (oldBind == Enum.KeyCode.Escape.Name) then 
                        bC.Text = "[-]"; oldBind = "[-]"; jS = false
                    end
                end
                function props:Update(nText, nKey)
                    nText = nText or text; nKey = nKey or key

                    bT.Text = text
                    bC.Text = "["..string.lower(nKey.Name).."]"
                    oldBind = nKey.Name;
                    if (oldBind == Enum.KeyCode.Escape.Name) then 
                        bC.Text = "[-]"; oldBind = "[-]"; jS = false
                    end
                end
                return props
            end

            function items:Dropdown(text, index, items, callback)
                text = text or "dropdown"; index = index or 1; items = items or {"nil"}; callback = callback or function() end
                local canUse, selected = false, 1

                local dw = Instance.new("Frame")
                local dwT = Instance.new("TextLabel")
                local dwB = Instance.new("Frame")
                local dwC = Instance.new("TextButton")
                local dwCP = Instance.new("UIPadding")
                local dwI = Instance.new("ScrollingFrame")
                local dwILayout = Instance.new("UIListLayout")
                local dwSP = Instance.new("Frame")

                dw.Name = "dw"
                dw.Parent = gBIL
                dw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                dw.BackgroundTransparency = 1.000
                dw.BorderSizePixel = 0
                dw.Size = UDim2.new(1, 0, 0, 35)

                dwT.Name = "dwT"
                dwT.Parent = dw
                dwT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                dwT.BackgroundTransparency = 1.000
                dwT.BorderSizePixel = 0
                dwT.Position = UDim2.new(0.115000002, 0, 0, 0)
                dwT.Size = UDim2.new(1, -28, 0, 15)
                dwT.Font = Enum.Font.SourceSans
                dwT.Text = text
                dwT.TextColor3 = Color3.fromRGB(150, 150, 150)
                dwT.TextSize = 15.000
                dwT.TextXAlignment = Enum.TextXAlignment.Left

                dwB.Name = "dwB"
                dwB.Parent = dw
                dwB.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                dwB.BorderSizePixel = 0
                dwB.Position = UDim2.new(0.111111112, 0, 0.428571463, 0)
                dwB.Size = UDim2.new(1, -60, 0, 20)

                dwC.Name = "dwC"
                dwC.Parent = dwB
                dwC.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                dwC.BorderSizePixel = 0
                dwC.Position = UDim2.new(0.00465116277, 0, 0.0500000007, 0)
                dwC.Size = UDim2.new(1, -2, 1, -2)
                dwC.AutoButtonColor = false
                dwC.Font = Enum.Font.SourceSans
                dwC.Text = items[index]
                dwC.TextColor3 = Color3.fromRGB(150, 150, 150)
                dwC.TextSize = 15.000
                dwC.TextXAlignment = Enum.TextXAlignment.Left

                dwCP.Name = "dwCP"
                dwCP.Parent = dwC
                dwCP.PaddingLeft = UDim.new(0, 11)

                dwI.Name = "Items"
                dwI.Parent = dwB
                dwI.Active = true
                dwI.Visible = false
                dwI.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                dwI.BorderSizePixel = 0
                dwI.Position = UDim2.new(0, 0, 1.01999998, 0)
                dwI.Size = UDim2.new(1, 0, 0, 0)
                dwI.ZIndex = 2
                dwI.ScrollBarThickness = 0

                dwILayout.Parent = dwI
                dwILayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                dwILayout.SortOrder = Enum.SortOrder.LayoutOrder

                dwSP.Name = "dwSP"
                dwSP.Parent = dwI
                dwSP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                dwSP.BackgroundTransparency = 1.000
                dwSP.BorderSizePixel = 0
                dwSP.Size = UDim2.new(1, 0, 0, 1)
                dwSP.ZIndex = 2

                if (#items ~= 0) then 
                    for i=1, #items do
                        local item = Instance.new("TextButton")
                        local itemP = Instance.new("UIPadding")

                        item.Name = "item"
                        item.Parent = dwI
                        item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        item.BorderSizePixel = 0
                        item.Size = UDim2.new(1, -2, 0, 20)
                        item.AutoButtonColor = false
                        item.ZIndex = 2
                        item.Font = Enum.Font.SourceSans
                        item.Text = items[i]
                        item.TextColor3 = Color3.fromRGB(150, 150, 150)
                        item.TextSize = 14.000
                        item.TextXAlignment = Enum.TextXAlignment.Left
        
                        itemP.Name = "itemP"
                        itemP.Parent = item
                        itemP.PaddingLeft = UDim.new(0, 11)

                        item.MouseEnter:Connect(function()
                            t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                        end)
                
                        item.MouseLeave:Connect(function()
                            t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
                        end)

                        item.MouseButton1Click:Connect(function()
                            if (not canUse) then return end
                            dwC.Text = items[i]
                            dwI.Visible = false
                            canUse = false
                            selected = i
                            callback(i, items[i])
                        end)
                    end
                end

                dwC.MouseButton1Click:Connect(function()
                    if (#items == 0) then return end
                    dwI.Visible = not dwI.Visible
                    dwI.Size = UDim2.new(1, 0, 0, (2 + (20*#items)))
                    canUse = not canUse
                end)

                local props = {}
                function props:SetText(nText) 
                    nText = nText or text; text = nText; dwT.Text = text
                end
                function props:SetValue(nValue)
                    nValue = nValue or selected; selected = nValue
                    dwC.Text = items[selected]
                    callback(selected, items[selected])
                end
                function props:SetItems(nIndex, nItems)
                    nIndex = nIndex or selected; nItems = nItems or items
                    selected = nIndex; items = nItems
                    for i, v in pairs(dwI:GetChildren()) do 
                        if (v:IsA("UIListLayout")) then continue end
                        v:Destroy()
                    end

                    for i=1, #items do
                        local item = Instance.new("TextButton")
                        local itemP = Instance.new("UIPadding")

                        item.Name = "item"
                        item.Parent = dwI
                        item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        item.BorderSizePixel = 0
                        item.Size = UDim2.new(1, -2, 0, 20)
                        item.AutoButtonColor = false
                        item.ZIndex = 2
                        item.Font = Enum.Font.SourceSans
                        item.Text = items[i]
                        item.TextColor3 = Color3.fromRGB(150, 150, 150)
                        item.TextSize = 14.000
                        item.TextXAlignment = Enum.TextXAlignment.Left
        
                        itemP.Name = "itemP"
                        itemP.Parent = item
                        itemP.PaddingLeft = UDim.new(0, 11)

                        item.MouseEnter:Connect(function()
                            t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                        end)
                
                        item.MouseLeave:Connect(function()
                            t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
                        end)

                        item.MouseButton1Click:Connect(function()
                            if (not canUse) then return end
                            dwC.Text = items[i]
                            dwI.Visible = false
                            canUse = false
                            selected = i
                            callback(i, items[i])
                        end)
                    end

                    dwC.Text = items[selected]
                    callback(selected, items[selected])
                end

                function props:AddItem(nItem)
                    nItem = nItem or {"nil"}; items[#items+1] = nItem

                    local item = Instance.new("TextButton")
                    local itemP = Instance.new("UIPadding")
                    local i = #items+1

                    item.Name = "item"
                    item.Parent = dwI
                    item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    item.BorderSizePixel = 0
                    item.Size = UDim2.new(1, -2, 0, 20)
                    item.AutoButtonColor = false
                    item.ZIndex = 2
                    item.Font = Enum.Font.SourceSans
                    item.Text = nItem
                    item.TextColor3 = Color3.fromRGB(150, 150, 150)
                    item.TextSize = 14.000
                    item.TextXAlignment = Enum.TextXAlignment.Left
    
                    itemP.Name = "itemP"
                    itemP.Parent = item
                    itemP.PaddingLeft = UDim.new(0, 11)

                    item.MouseEnter:Connect(function()
                        t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                    end)
            
                    item.MouseLeave:Connect(function()
                        t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
                    end)

                    item.MouseButton1Click:Connect(function()
                        if (not canUse) then return end
                        dwC.Text = nItem
                        dwI.Visible = false
                        canUse = false
                        selected = i
                        callback(i, items[i])
                    end)
                end

                function props:Update(nText, nValue, nItems)
                    nText = nText or text; nValue = nValue or selected; nItems = nItems or items
                    text = nText; selected = nValue; items = nItems 
                    dwT.Text = text; dwC.Text = items[selected]

                    for i, v in pairs(dwI:GetChildren()) do 
                        if (v:IsA("UIListLayout")) then continue end
                        v:Destroy()
                    end

                    for i=1, #items do
                        local item = Instance.new("TextButton")
                        local itemP = Instance.new("UIPadding")

                        item.Name = "item"
                        item.Parent = dwI
                        item.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        item.BorderSizePixel = 0
                        item.Size = UDim2.new(1, -2, 0, 20)
                        item.AutoButtonColor = false
                        item.ZIndex = 2
                        item.Font = Enum.Font.SourceSans
                        item.Text = items[i]
                        item.TextColor3 = Color3.fromRGB(150, 150, 150)
                        item.TextSize = 14.000
                        item.TextXAlignment = Enum.TextXAlignment.Left
        
                        itemP.Name = "itemP"
                        itemP.Parent = item
                        itemP.PaddingLeft = UDim.new(0, 11)

                        item.MouseEnter:Connect(function()
                            t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(124, 193, 21)}); t:Play()
                        end)
                
                        item.MouseLeave:Connect(function()
                            t = TweenService:Create(item, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(150, 150, 150)}); t:Play()
                        end)

                        item.MouseButton1Click:Connect(function()
                            if (not canUse) then return end
                            dwC.Text = items[i]
                            dwI.Visible = false
                            canUse = false
                            selected = i
                            callback(i, items[i])
                        end)
                    end
                end
                return props
            end

            function items:SetText(text)
                text = text or "groupbox"

                local gBTS = game:GetService("TextService"):GetTextSize(text, gBT.TextSize, gBT.Font, Vector2.new(math.huge, math.huge))
                gBT.Text = text
                gBT.Size = UDim2.new(0, gBTS.X + 5, 0, 1)
                gBTC.Size = UDim2.new(0, gBTS.X + 6, 0, 1)
            end
            return items
        end
        return groupboxes
    end 
    return sections
end
return Library
