-- Função para criar seção
function createSection(page, title)
    local section = Instance.new("Frame")
    section.Size = UDim2.new(1, -10, 0, 80)
    section.BackgroundColor3 = Colors.SectionBg
    section.BorderSizePixel = 0
    section.Parent = page
    
    local sectionCorner = Instance.new("UICorner")
    sectionCorner.CornerRadius = UDim.new(0, 5)
    sectionCorner.Parent = section
    
    local sectionTitle = Instance.new("TextLabel")
    sectionTitle.Size = UDim2.new(1, -20, 0, 25)
    sectionTitle.Position = UDim2.new(0, 10, 0, 5)
    sectionTitle.BackgroundTransparency = 1
    sectionTitle.Text = title
    sectionTitle.TextColor3 = Colors.TextDark
    sectionTitle.TextSize = 14
    sectionTitle.Font = Enum.Font.GothamBold
    sectionTitle.TextXAlignment = Enum.TextXAlignment.Left
    sectionTitle.Parent = section
    
    return section
end

-- Função para criar botão
function createButton(parent, text, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 150, 0, 35)
    button.Position = position or UDim2.new(0, 10, 0, 35)
    button.BackgroundColor3 = Colors.ButtonDefault
    button.Text = text
    button.TextColor3 = Colors.TextWhite
    button.TextSize = 13
    button.Font = Enum.Font.GothamSemibold
    button.BorderSizePixel = 0
    button.Parent = parent
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 4)
    buttonCorner.Parent = button
    
    if callback then
        button.MouseButton1Click:Connect(callback)
    end
    
    return button
end

-- Função para criar toggle
function createToggle(parent, text, position, callback)
    local toggleFrame = Instance.new("Frame")
    toggleFrame.Size = UDim2.new(1, -20, 0, 40)
    toggleFrame.Position = position or UDim2.new(0, 10, 0, 0)
    toggleFrame.BackgroundTransparency = 1
    toggleFrame.Parent = parent
    
    local toggleLabel = Instance.new("TextLabel")
    toggleLabel.Size = UDim2.new(0, 200, 1, 0)
    toggleLabel.BackgroundTransparency = 1
    toggleLabel.Text = text
    toggleLabel.TextColor3 = Colors.TextWhite
    toggleLabel.TextSize = 13
    toggleLabel.Font = Enum.Font.Gotham
    toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    toggleLabel.Parent = toggleFrame
    
    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 40, 0, 20)
    toggleButton.Position = UDim2.new(1, -50, 0.5, -10)
    toggleButton.BackgroundColor3 = Colors.ButtonDefault
    toggleButton.Text = ""
    toggleButton.BorderSizePixel = 0
    toggleButton.AutoButtonColor = false
    toggleButton.Parent = toggleFrame
    
    local toggleCorner = Instance.new("UICorner")
    toggleCorner.CornerRadius = UDim.new(1, 0)
    toggleCorner.Parent = toggleButton
    
    local toggleIndicator = Instance.new("Frame")
    toggleIndicator.Size = UDim2.new(0, 16, 0, 16)
    toggleIndicator.Position = UDim2.new(0, 2, 0, 2)
    toggleIndicator.BackgroundColor3 = Colors.TextGray
    toggleIndicator.BorderSizePixel = 0
    toggleIndicator.Parent = toggleButton
    
    local indicatorCorner = Instance.new("UICorner")
    indicatorCorner.CornerRadius = UDim.new(1, 0)
    indicatorCorner.Parent = toggleIndicator
    
    local toggled = false
    
    toggleButton.MouseButton1Click:Connect(function()
        toggled = not toggled
        if toggled then
            Services.TweenService:Create(toggleButton, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {BackgroundColor3 = Colors.TabSelected}):Play()
            Services.TweenService:Create(toggleIndicator, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {Position = UDim2.new(1, -18, 0, 2)}):Play()
        else
            Services.TweenService:Create(toggleButton, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {BackgroundColor3 = Colors.ButtonDefault}):Play()
            Services.TweenService:Create(toggleIndicator, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {Position = UDim2.new(0, 2, 0, 2)}):Play()
        end
        if callback then callback(toggled) end
    end)
    
    return {toggle = toggleButton, indicator = toggleIndicator, state = function() return toggled end}
end

getgenv().createSection = createSection
getgenv().createButton = createButton
getgenv().createToggle = createToggle
print("✓ Componentes UI prontos")
